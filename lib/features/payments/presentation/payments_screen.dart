import '../../../core/routing/routing.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/storage/preferences_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';

import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../cubit/transaction_type_cubit.dart';
import '../bloc/transaction_list/transaction_list_bloc.dart';
import '../data/transaction_list/transaction_list_model.dart';
import 'transaction_history_details_screen.dart';
import '../../../core/injection/injection_container.dart' as di;

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({
    super.key, 
    required this.recipientName, 
    required this.recipientNumber,
    this.userId,
  });
  final String recipientName;
  final String recipientNumber;
  final String? userId;


  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  late FocusNode _amountFocusNode;
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  TransactionListBloc? _transactionListBloc;
  bool _isInitialScroll = true;
  bool _isShowingMfaDialog = false;
  bool _mfaDialogShownOnOpen = false;

  @override
  void initState() {
    super.initState();
    _amountFocusNode = FocusNode();
    
    // Debug the received parameters
    debugPrint("______________PAYMENTS SCREEN INIT____________");
    debugPrint("Recipient Name: ${widget.recipientName}");
    debugPrint("Recipient Number: ${widget.recipientNumber}");
    debugPrint("User ID: ${widget.userId}");
    
    // Don't request focus immediately - wait for transactions to load
    // This prevents keyboard from opening before we can scroll to bottom

    // Listen to focus changes to handle keyboard appearance
    _amountFocusNode.addListener(() {
      if (_amountFocusNode.hasFocus) {
        // When amount field gets focus, scroll to bottom to show the input area
        _scrollToBottom();
      }
    });
    // Removed initial MFA alert; it is shown only when proceeding to amount entry.
  }

  void _onScroll() {
    // Load more transactions when scrolling to the top (to get older transactions)
    final scrollPosition = _scrollController.position.pixels;
    debugPrint("Scroll position: $scrollPosition, max: ${_scrollController.position.maxScrollExtent}");
    
    // Don't trigger pagination during initial scroll to bottom
    if (_isInitialScroll) {
      debugPrint("⏸️ Skipping pagination during initial scroll");
      return;
    }
    
    if (scrollPosition <= 200) {
      debugPrint("🔄 Triggering load more transactions (scrolled to top)");
      if (mounted && _transactionListBloc != null) {
        try {
          _transactionListBloc!.add(const LoadMoreTransactions());
        } catch (e) {
          debugPrint("Error accessing TransactionListBloc in scroll: $e");
        }
      }
    }
  }

  Future<void> _loadTransactions(TransactionListBloc bloc) async {
    try {
      final preferencesManager = await PreferencesManager.getInstance();
      final currentUserId = int.parse(preferencesManager.userId ?? '0');
      final beneficiaryId = int.parse(widget.userId ?? '0');

      debugPrint("Loading transactions for beneficiary: $beneficiaryId, current user: $currentUserId");

      bloc.add(
        LoadTransactionList(
          beneficiaryId: beneficiaryId,
          currentUserId: currentUserId,
        ),
      );
    } catch (e) {
      debugPrint("Error loading transactions: $e");
    }
  }

  void _handleInitialSetup() {
    // Add scroll listener and scroll to bottom after transactions are loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        // Add scroll listener
        _scrollController.addListener(_onScroll);
        
        // Scroll to bottom to show most recent transactions
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
        ).then((_) {
          // Enable pagination after initial scroll is complete
          _isInitialScroll = false;
          debugPrint("✅ Initial scroll complete, pagination enabled");
        });
      }
    });
  }

  // Helper method to scroll to bottom
  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _amountFocusNode.dispose();
    _textController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
        
    // Calculate bottom padding to avoid overlap with bottom navigation bar and keyboard
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    // Add extra margin when keyboard is visible to prevent overlap with enter amount field
    final pb = Platform.isIOS ? 20 : -10;
    final extraKeyboardMargin = keyboardHeight > 0 ? pb : 0;
    // Increase bottom padding to ensure last transaction is fully visible
    final pb2 = Platform.isIOS ? 70 : 70;
    final bottomPadding = MediaQuery.of(context).padding.bottom + pb2 + keyboardHeight + extraKeyboardMargin;
    
    // Listen to keyboard visibility changes and auto-scroll when keyboard appears
    if (keyboardHeight > 0) {
      // Keyboard is visible, scroll to bottom after a short delay to ensure layout is complete
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.delayed(const Duration(milliseconds: 100), () {
          _scrollToBottom();
        });
      });
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TransactionTypeCubit(),
        ),
        BlocProvider(
          create: (context) {
            final bloc = TransactionListBloc(repository: di.sl());
            // Store the bloc reference
            _transactionListBloc = bloc;
            // Load transactions immediately when bloc is created
            _loadTransactions(bloc);
            return bloc;
          },
        ),
      ],
      child: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              // Unfocus the text field when tapping outside
              FocusScope.of(context).unfocus();
            },
            child: Container(
              decoration: AppThemes.scaffoldBackgroundDecoration(
                  isDark: isDarkMode, isPrimary: true),
              child: Scaffold(
                resizeToAvoidBottomInset: false, // Prevent scaffold from resizing when keyboard appears
                extendBody: true,
                appBar: AppBar(
                  centerTitle: false,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.recipientName,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(widget.recipientNumber,
                          style: theme.textTheme.bodySmall),
                    ],
                  ),
                  actions: [
                    CircleAvatar(
                      child: Text(widget.recipientName[0]),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                body: BlocBuilder<TransactionListBloc, TransactionListState>(
                  builder: (context, state) {
                    if (state is TransactionListLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is TransactionListError) {
                      // Check if it's a "no data found" error
                      if (state.message.toLowerCase().contains('no data found')) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.receipt_long_outlined,
                                size: 64,
                                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'No transactions yet',
                                style: theme.textTheme.titleMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Your transaction history with ${widget.recipientName} will appear here',
                                style: theme.textTheme.bodySmall,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      } else {
                        // Show error for other types of errors
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error_outline,
                                size: 64,
                                color: theme.colorScheme.error,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Error loading transactions',
                                style: theme.textTheme.titleMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                state.message,
                                style: theme.textTheme.bodySmall,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  if (_transactionListBloc != null) {
                                    _loadTransactions(_transactionListBloc!);
                                  }
                                },
                                child: const Text('Retry'),
                              ),
                            ],
                          ),
                        );
                      }
                    } else if (state is TransactionListLoaded) {
                      // Handle initial setup when transactions are first loaded
                      if (_isInitialScroll) {
                        _handleInitialSetup();
                      }
                      
                      if (state.transactions.isEmpty) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.receipt_long_outlined,
                                size: 64,
                                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'No transactions yet',
                                style: theme.textTheme.titleMedium,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Your transaction history with ${widget.recipientName} will appear here',
                                style: theme.textTheme.bodySmall,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      }

                      return Container(
                        // margin: const EdgeInsets.only(bottom: 80),
                        // padding: const EdgeInsets.only(bottom: 50),
                        child: ListView.builder(
                          controller: _scrollController,
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.fromLTRB(16, 16, 16, bottomPadding),
                          itemCount: state.transactions.length + (state.isLoadingMore ? 1 : 0),
                        itemBuilder: (context, index) {
                          // Show loading indicator at the top when loading more (for older transactions)
                          if (index == 0 && state.isLoadingMore) {
                            return const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }

                          // Reverse the order: show latest at bottom
                          final transactionIndex = state.isLoadingMore ? index - 1 : index;
                          final reversedIndex = state.transactions.length - 1 - transactionIndex;
                          final transaction = state.transactions[reversedIndex];
                          final isSent = transaction.isSentTransaction(state.currentUserId);

                          return Align(
                            alignment: isSent
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                // Navigate to transaction details screen
                                _navigateToTransactionDetails(transaction, state.currentUserId);
                              },
                              child: Container(
                                constraints: BoxConstraints(maxWidth: size.width * 0.5),
                                margin: EdgeInsets.only(
                                  bottom: transactionIndex == state.transactions.length - 1 
                                    ? (keyboardHeight > 0 ? 40 : 30)
                                    : 12,
                                ),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: isSent
                                      ? theme.primaryColor.withValues(alpha: 0.1)
                                      : theme.cardColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: isSent
                                        ? theme.primaryColor.withValues(alpha: 0.3)
                                        : theme.dividerColor,
                                  ),
                                ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '\$${transaction.amountAsDouble.toStringAsFixed(2)}',
                                        style: theme.textTheme.titleMedium?.copyWith(
                                          color: isSent
                                              ? Colors.red
                                              : Colors.green,
                                        ),
                                      ),
                                      const Spacer(),
                                      Icon(
                                        isSent
                                            ? Icons.arrow_upward
                                            : Icons.arrow_downward,
                                        size: 16,
                                        color: isSent
                                            ? Colors.red
                                            : Colors.green,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  if (_getTransactionDescription(transaction).isNotEmpty)
                                    Text(
                                      _getTransactionDescription(transaction),
                                      style: theme.textTheme.labelSmall,
                                    ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _formatTime(transaction.formattedDate),
                                        style: theme.textTheme.labelSmall?.copyWith(
                                          color: theme.textTheme.labelSmall?.color
                                              ?.withValues(alpha: 0.7),
                                        ),
                                      ),
                                      Text(
                                        _formatDate(transaction.formattedDate),
                                        style: theme.textTheme.labelSmall?.copyWith(
                                          color: theme.textTheme.labelSmall?.color
                                              ?.withValues(alpha: 0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ),
                          );
                        },
                        ),
                      );
                    }

                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: BottomAppBar(
                    elevation: 10,
                    shape: const CircularNotchedRectangle(),
                    notchMargin: 8,
                    color: isDarkMode
                        ? AppColors.darkBackground1
                        : AppColors.lightBackground1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                TextField(
                                  controller: _textController,
                                  focusNode: _amountFocusNode,
                                  style: theme.textTheme.titleMedium,
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true, signed: false),
                                  onChanged: (value) {
                                    context
                                        .read<TransactionTypeCubit>()
                                        .setAmount(value);
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter amount",
                                    hintStyle:
                                        theme.textTheme.titleSmall?.copyWith(
                                      color: theme.textTheme.titleSmall?.color
                                          ?.withValues(alpha: 0.2),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    suffixIcon: Builder(builder: (context) {
                                      return PopupMenuButton<TransactionType>(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        tooltip: '',
                                        initialValue: context
                                            .watch<TransactionTypeCubit>()
                                            .state
                                            .type,
                                        onOpened: () {
                                          // Keep focus on the text field when menu opens
                                          _amountFocusNode.requestFocus();
                                        },
                                        onSelected: (TransactionType type) {
                                          context
                                              .read<TransactionTypeCubit>()
                                              .setTransactionType(type);
                                          // Request focus back to the text field
                                          _amountFocusNode.requestFocus();
                                        },
                                        onCanceled: () {
                                          // Request focus back to the text field if canceled
                                          _amountFocusNode.requestFocus();
                                        },
                                        // Position the menu above the button instead of below
                                        offset: const Offset(0, -65),
                                        position: PopupMenuPosition.over,
                                        // Use a custom child function to prevent focus loss
                                        itemBuilder: (BuildContext context) {
                                          // Request focus immediately when building items
                                          WidgetsBinding.instance
                                              .addPostFrameCallback((_) {
                                            _amountFocusNode.requestFocus();
                                          });

                                          return TransactionType.values
                                              .map((type) {
                                            return PopupMenuItem<
                                                TransactionType>(
                                              value: type,
                                              // Prevent focus loss when hovering over menu items
                                              mouseCursor:
                                                  SystemMouseCursors.click,
                                              child: Text(
                                                type.name.toUpperCase(),
                                                style: theme
                                                    .textTheme.labelSmall
                                                    ?.copyWith(
                                                  color: isDarkMode
                                                      ? AppColors.iconDarkColor
                                                      : AppColors
                                                          .iconLightColor,
                                                ),
                                              ),
                                            );
                                          }).toList();
                                        },
                                        // Use a builder to maintain focus
                                        child: MouseRegion(
                                          cursor: SystemMouseCursors.click,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                context
                                                    .watch<
                                                        TransactionTypeCubit>()
                                                    .state
                                                    .type
                                                    .name
                                                    .toUpperCase(),
                                                style: theme
                                                    .textTheme.labelSmall
                                                    ?.copyWith(
                                                  color: isDarkMode
                                                      ? AppColors.iconDarkColor
                                                      : AppColors
                                                          .iconLightColor,
                                                ),
                                              ),
                                              const SizedBox(width: 4),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: isDarkMode
                                                    ? AppColors.iconDarkColor
                                                    : AppColors.iconLightColor,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ).asGradientBox(context),
                              ],
                            ),
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            flex: 2,
                            child: BlocBuilder<TransactionTypeCubit,
                                TransactionTypeState>(
                              builder: (context, state) {
                                return IconButton(
                                    style: IconButton.styleFrom(
                                      backgroundColor: isDarkMode
                                          ? AppColors.darkButtonStart
                                          : AppColors.lightButtonStart,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () async {
                                      // Check MFA ID before proceeding
                                      final prefs = await PreferencesManager.getInstance();
                                      if (prefs.mfaId == -1) {
                                        if (!context.mounted || _isShowingMfaDialog) return;
                                        _isShowingMfaDialog = true;
                                        await showDialog(
                                          context: context,
                                          barrierDismissible: true,
                                          builder: (ctx) => AlertDialog(
                                            title: const Text('Set 2FA'),
                                            content: const Text('Please set Two Factor Authentication.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.of(ctx).pop(),
                                                child: const Text('No'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                  context.navigateTo(RouteConstants.setTransactionPin);
                                                },
                                                child: const Text('Yes'),
                                              ),
                                            ],
                                          ),
                                        );
                                        _isShowingMfaDialog = false;
                                        return;
                                      }

                                      if (context
                                          .read<TransactionTypeCubit>()
                                          .validateAmount()) {
                                        final amount =
                                            double.parse(state.amount);
                                        _textController.clear();
                                        if (state.type == TransactionType.pay) {
                                          debugPrint('pay');
                                          context.navigateTo(
                                              RouteConstants.amountEntry,
                                              arguments: AmountEntryArguments(
                                                  amount: amount,
                                                  receiver:
                                                      widget.recipientName,
                                                  receiverNumber:
                                                      widget.recipientNumber,
                                                  type: state.type,
                                                  userId: widget.userId));
                                        } else {
                                          debugPrint('request');
                                          context.navigateTo(
                                              RouteConstants.amountEntry,
                                              arguments: AmountEntryArguments(
                                                  amount: amount,
                                                  receiver:
                                                      widget.recipientName,
                                                  receiverNumber:
                                                      widget.recipientNumber,
                                                  type: state.type,
                                                  userId: widget.userId));
                                        }
                                      } else {
                                        showErrorSnackBar(
                                            context,
                                            state.errorMessage ??
                                                "Invalid amount");
                                      }
                                    },
                                    icon: Icon(Icons.arrow_forward_ios,
                                        size: 16, color: Colors.white));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(DateTime date) {
    final hour = date.hour;
    final minute = date.minute.toString().padLeft(2, '0');
    final period = hour >= 12 ? 'PM' : 'AM';
    final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    return '$displayHour:$minute $period';
  }

  String _getTransactionDescription(TransactionItemModel transaction) {
    // Show remarks only if available and not "NA", otherwise return empty string
    if (transaction.remarks.isNotEmpty && transaction.remarks != "NA") {
      return transaction.remarks;
    }
    return '';
  }

  void _navigateToTransactionDetails(TransactionItemModel transaction, int currentUserId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TransactionHistoryDetailsScreen(
          transaction: transaction,
          currentUserId: currentUserId,
        ),
      ),
    );
  }
}

