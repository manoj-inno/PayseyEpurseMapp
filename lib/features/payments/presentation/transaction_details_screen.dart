import 'package:epurse/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/gradient_button.dart';
import '../cubit/transaction_type_cubit.dart';
import '../widget/checkmark_done.dart';
import 'transaction_help_screen.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({
    super.key, 
    required this.transactionType,
    this.transactionId,
    this.amount,
    this.senderName,
    this.receiverName,
    this.receiverNumber,
    this.timestamp,
    this.isSuccess = true,
    this.errorMessage,
    this.isInsufficientBalance = false,
  });
  final TransactionType transactionType;
  final String? transactionId;
  final double? amount;
  final String? senderName;
  final String? receiverName;
  final String? receiverNumber;
  final String? timestamp;
  final bool isSuccess;
  final String? errorMessage;
  final bool isInsufficientBalance;

  // Helper method to format timestamp
  String? _formatTimestamp(String? timestamp) {
    if (timestamp == null || timestamp.isEmpty) return null;
    
    try {
      final dateTime = DateTime.parse(timestamp);
      
      // Format as "Sep 12, 2024 | 12:20 pm"
      final month = _getMonthName(dateTime.month);
      final day = dateTime.day;
      final year = dateTime.year;
      final hour = dateTime.hour;
      final minute = dateTime.minute.toString().padLeft(2, '0');
      final period = hour >= 12 ? 'pm' : 'am';
      final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
      
      return "$month $day, $year | $displayHour:$minute $period";
    } catch (e) {
      debugPrint("Error formatting timestamp: $e");
      return timestamp; // Return original if parsing fails
    }
  }

  String _getMonthName(int month) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    
    // Debug the received arguments
    debugPrint("=== TRANSACTION DETAILS SCREEN DEBUG ===");
    debugPrint("Transaction Type: $transactionType");
    debugPrint("Transaction ID: $transactionId");
    debugPrint("Amount: $amount");
    debugPrint("Sender Name: $senderName");
    debugPrint("Receiver Name: $receiverName");
    debugPrint("Receiver Number: $receiverNumber");
    debugPrint("Timestamp: $timestamp");
    debugPrint("Is Success: $isSuccess");
    debugPrint("Error Message: $errorMessage");
    debugPrint("Is Insufficient Balance: $isInsufficientBalance");
    debugPrint("=========================================");
    return Container(
      color: isDarkMode ? AppColors.darkSecondary : AppColors.lightSecondary,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: isDarkMode
                      ? AppColors.iconDarkColor
                      : AppColors.iconLightColor,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransactionHelpScreen(
                              transactionId: "1234567890",
                              from: "John Doe",
                              to: "Jane Doe",
                              amount: "100",
                              status: "Success",
                              date: "2024-01-01",
                              time: "12:00")));
                },
                child: Text("Help"))
          ],
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.05),
                  //       TransactionLoader(
                  //   direction: MoneyFlowDirection.receive,
                  //   sender: CircleAvatar(
                  //     radius: 35,
                  //     backgroundColor: Colors.blue,
                  //     child: Icon(Icons.person_outline, size: 35, color: Colors.white),
                  //   ),
                  //   receiver: CircleAvatar(
                  //     radius: 35,
                  //     backgroundColor: Colors.blue,
                  //     child: Icon(Icons.person, size: 35, color: Colors.white),
                  //   ),
                  //   currencyIcon: Icons.currency_rupee_outlined,
                  // ),
                  // Show success or failure icon
                  Builder(
                    builder: (context) {
                      if (isSuccess) {
                        debugPrint("🎯 RENDERING: Success icon (BounceCheckmark)");
                        return BounceCheckmark(
                          size: 100,
                          backgroundCircleSize: 120,
                          color: isDarkMode
                              ? AppColors.darkButtonEnd
                              : AppColors.lightButtonEnd,
                        );
                      } else {
                        debugPrint("🎯 RENDERING: Failure icon (Animated Red X)");
                        return _AnimatedFailureIcon(
                          size: 120,
                          iconSize: 60,
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  Builder(
                    builder: (context) {
                      final title = isSuccess
                          ? (transactionType == TransactionType.pay
                              ? "Transaction Successful"
                              : "Transaction Request Sent")
                          : (isInsufficientBalance
                              ? "Payment Failed"
                              : "Transaction Failed");
                      
                      debugPrint("🎯 RENDERING: Title = '$title'");
                      debugPrint("🎯 RENDERING: isSuccess = $isSuccess, isInsufficientBalance = $isInsufficientBalance");
                      
                      return Text(
                        title,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: isSuccess ? null : Colors.red,
                        ),
                      );
                    },
                  ),
                  if (isSuccess)
                    Text(
                      _formatTimestamp(timestamp) ?? "Sep 12, 2024 | 12:20 pm",
                      style: theme.textTheme.bodyMedium,
                    )
                  else if (errorMessage != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        isInsufficientBalance
                            ? "Insufficient account balance. Please add money to your wallet and try again."
                            : errorMessage!,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: isDarkMode
                        ? AppColors.darkPrimary
                        : AppColors.lightPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          if (isSuccess && transactionId != null)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Transaction ID:",
                                  style: theme.textTheme.labelMedium,
                                ),
                                Text(
                                  transactionId!,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ],
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "From:",
                                style: theme.textTheme.labelMedium,
                              ),
                              Text(
                                senderName ?? "User Name",
                                style: theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "To:",
                                style: theme.textTheme.labelMedium,
                              ),
                              Text(
                                receiverName ?? "User Name",
                                style: theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Amount:",
                                style: theme.textTheme.titleMedium,
                              ),
                              Text(
                                amount != null ? "\$${amount!.toStringAsFixed(2)}" : "\$0.00",
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: isSuccess ? null : Colors.red,
                                ),
                              ),
                            ],
                          ),
                          if (!isSuccess)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Status:",
                                  style: theme.textTheme.labelMedium,
                                ),
                                Text(
                                  isInsufficientBalance ? "Payment Failed" : "Transaction Failed",
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.2),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: GradientButton(
                  onPressed: () {
                    context.goBack();
                    context.goBack();
                  },
                  isDarkMode: isDarkMode,
                  child: Text("Done"),
                ))),
      ),
    );
  }
}

/// Animated failure icon widget with dramatic bounce and shake animations
class _AnimatedFailureIcon extends StatefulWidget {
  final double size;
  final double iconSize;

  const _AnimatedFailureIcon({
    required this.size,
    required this.iconSize,
  });

  @override
  State<_AnimatedFailureIcon> createState() => _AnimatedFailureIconState();
}

class _AnimatedFailureIconState extends State<_AnimatedFailureIcon>
    with TickerProviderStateMixin {
  late AnimationController _bounceController;
  late AnimationController _shakeController;
  late AnimationController _pulseController;
  late Animation<double> _bounceAnimation;
  late Animation<double> _shakeAnimation;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    
    // Bounce animation controller - dramatic entrance
    _bounceController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    
    // Shake animation controller - side to side shake
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    
    // Pulse animation controller - subtle breathing effect
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    
    // Bounce animation - dramatic scale and bounce
    _bounceAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _bounceController,
      curve: Curves.elasticOut,
    ));
    
    // Shake animation - oscillates left and right
    _shakeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _shakeController,
      curve: Curves.elasticIn,
    ));
    
    // Pulse animation - subtle scale variation
    _pulseAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(
      parent: _pulseController,
      curve: Curves.easeInOut,
    ));
    
    // Start animations
    _startAnimations();
  }

  void _startAnimations() {
    // Start bounce animation first
    _bounceController.forward();
    
    // Start shake animation after bounce
    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) {
        _shakeController.forward().then((_) {
          if (mounted) {
            _shakeController.reverse();
          }
        });
      }
    });
    
    // Start pulse animation (repeating) after bounce
    Future.delayed(const Duration(milliseconds: 600), () {
      if (mounted) {
        _pulseController.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _bounceController.dispose();
    _shakeController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([_bounceAnimation, _shakeAnimation, _pulseAnimation]),
      builder: (context, child) {
        // Calculate shake offset with damping
        final shakeOffset = _shakeAnimation.value * 12 * (1 - _shakeAnimation.value);
        
        return Transform.translate(
          offset: Offset(shakeOffset, 0),
          child: Transform.scale(
            scale: _bounceAnimation.value * _pulseAnimation.value,
            child: Container(
              width: widget.size,
              height: widget.size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red.withValues(alpha: 0.15),
                border: Border.all(color: Colors.red, width: 4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withValues(alpha: 0.4),
                    blurRadius: 15,
                    spreadRadius: 3,
                  ),
                  BoxShadow(
                    color: Colors.red.withValues(alpha: 0.2),
                    blurRadius: 25,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: const Icon(
                Icons.close,
                size: 60,
                color: Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}
