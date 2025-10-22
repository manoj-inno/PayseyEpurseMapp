import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../cubit/add_card_cubit.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _expiryController = TextEditingController();

  final FocusNode _cardNumberFocus = FocusNode();
  final FocusNode _cardHolderFocus = FocusNode();
  final FocusNode _cvvFocus = FocusNode();
  final FocusNode _expiryFocus = FocusNode();

  final GlobalKey<_AddCardFlipWidgetState> _flipKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _setupFocusListeners();
  }

  void _setupFocusListeners() {
    _cvvFocus.addListener(() {
      if (_cvvFocus.hasFocus) {
        context.read<AddCardCubit>().flipCard(true);
        _flipKey.currentState?.flipToBack();
      }
    });

    _expiryFocus.addListener(() {
      if (_expiryFocus.hasFocus) {
        context.read<AddCardCubit>().flipCard(true);
        _flipKey.currentState?.flipToBack();
      }
    });

    _cardNumberFocus.addListener(() {
      if (_cardNumberFocus.hasFocus) {
        context.read<AddCardCubit>().flipCard(false);
        _flipKey.currentState?.flipToFront();
      }
    });

    _cardHolderFocus.addListener(() {
      if (_cardHolderFocus.hasFocus) {
        context.read<AddCardCubit>().flipCard(false);
        _flipKey.currentState?.flipToFront();
      }
    });
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _cardHolderController.dispose();
    _cvvController.dispose();
    _expiryController.dispose();
    _cardNumberFocus.dispose();
    _cardHolderFocus.dispose();
    _cvvFocus.dispose();
    _expiryFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => AddCardCubit(),
      child: BlocListener<AddCardCubit, AddCardState>(
        listener: (context, state) {
          if (state.error != null) {
            showErrorSnackBar(context, state.error!);
          }
        },
        child: BlocBuilder<AddCardCubit, AddCardState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                // Dismiss keyboard when tapping outside of text fields
                FocusScope.of(context).unfocus();
              },
              child: Container(
                decoration: AppThemes.scaffoldBackgroundDecoration(
                    isDark: isDarkMode, isPrimary: true),
                child: Scaffold(
                  extendBodyBehindAppBar: true,
                  appBar: AppBar(),
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 120),
                          Text("Add a New Card",
                              style: theme.textTheme.displayMedium),
                          const SizedBox(height: 20),
                          AddCardFlipWidget(
                            key: _flipKey,
                            cardWidth: MediaQuery.of(context).size.width -
                                40, // Account for padding
                            cardHeight:
                                (MediaQuery.of(context).size.width - 40) * 0.6,
                            frontImage: "lib/core/assets/card-background.png",
                            backImage: "lib/core/assets/card-background.png",
                            cardNumber: state.cardNumber.isEmpty
                                ? "XXXX XXXX XXXX XXXX"
                                : state.cardNumber,
                            cardHolderName: state.cardHolder.isEmpty
                                ? "CARD HOLDER"
                                : state.cardHolder,
                            cvv: state.cvv.isEmpty ? "XXX" : state.cvv,
                            expiryDate: state.expiryDate.isEmpty
                                ? "MM/YY"
                                : state.expiryDate,
                            topRightIcon: Image.asset(
                              "lib/core/assets/visa-logo.png",
                              height: 20,
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextField(
                            controller: _cardNumberController,
                            focusNode: _cardNumberFocus,
                            keyboardType: TextInputType.number,
                            maxLength: 19,
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: 'CARD NUMBER',
                              hintStyle: theme.textTheme.labelLarge,
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              context
                                  .read<AddCardCubit>()
                                  .updateCardNumber(value);
                              if (value.length == 19) {
                                _cardNumberFocus.unfocus();
                                _cardHolderFocus.requestFocus();
                              }
                            },
                          ).asGradientBox(context),
                          const SizedBox(height: 10),
                          TextField(
                            controller: _cardHolderController,
                            focusNode: _cardHolderFocus,
                            textCapitalization: TextCapitalization.characters,
                            decoration: InputDecoration(
                              hintText: 'CARD HOLDER',
                              hintStyle: theme.textTheme.labelLarge,
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              context
                                  .read<AddCardCubit>()
                                  .updateCardHolder(value);
                            },
                          ).asGradientBox(context),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: _expiryController,
                                  focusNode: _expiryFocus,
                                  keyboardType: TextInputType.number,
                                  maxLength: 5,
                                  decoration: InputDecoration(
                                    hintText: 'EXPIRY DATE',
                                    hintStyle: theme.textTheme.labelLarge,
                                    border: InputBorder.none,
                                    counterText: '',
                                  ),
                                  onChanged: (value) {
                                    if (value.length == 2 &&
                                        !value.contains('/')) {
                                      _expiryController.value =
                                          TextEditingValue(
                                        text: '$value/',
                                        selection: TextSelection.fromPosition(
                                          TextPosition(
                                              offset: value.length + 1),
                                        ),
                                      );
                                    }
                                    context
                                        .read<AddCardCubit>()
                                        .updateExpiryDate(value);
                                    if (value.length == 5) {
                                      _cvvFocus.requestFocus();
                                    }
                                  },
                                ).asGradientBox(context),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  controller: _cvvController,
                                  focusNode: _cvvFocus,
                                  keyboardType: TextInputType.number,
                                  maxLength: 3,
                                  decoration: InputDecoration(
                                    hintText: 'CVV',
                                    hintStyle: theme.textTheme.labelLarge,
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    context
                                        .read<AddCardCubit>()
                                        .updateCVV(value);
                                  },
                                ).asGradientBox(context),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                  bottomNavigationBar: BottomAppBar(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 5),
                      child: SizedBox(
                        width: double.infinity,
                        child: GradientButton(
                          isDarkMode: isDarkMode,
                          onPressed: state.isSubmitting
                              ? () {}
                              : () => context.read<AddCardCubit>().submitCard(),
                          child: state.isSubmitting
                              ? const CircularProgressIndicator()
                              : const Text("Add Card"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AddCardFlipWidget extends StatefulWidget {
  const AddCardFlipWidget({
    super.key,
    required this.cardWidth,
    required this.cardHeight,
    required this.frontImage,
    required this.backImage,
    this.frontImageFit = BoxFit.cover,
    this.backImageFit = BoxFit.cover,
    this.cardNumber = '',
    this.cardHolderName = '',
    this.cvv = '',
    this.expiryDate = '',
    this.topRightIcon,
    this.bottomRightIcon,
  });

  final double cardWidth;
  final double cardHeight;
  final String frontImage;
  final String backImage;
  final BoxFit frontImageFit;
  final BoxFit backImageFit;
  final String cardNumber;
  final String cardHolderName;
  final String cvv;
  final String expiryDate;
  final Widget? topRightIcon;
  final Widget? bottomRightIcon;

  @override
  State<AddCardFlipWidget> createState() => _AddCardFlipWidgetState();
}

class _AddCardFlipWidgetState extends State<AddCardFlipWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: pi).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack),
    );
  }

  void _flipCard() {
    if (!_controller.isAnimating) {
      if (_controller.status == AnimationStatus.dismissed ||
          _controller.status == AnimationStatus.reverse) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  void flipToBack() {
    if (_controller.status != AnimationStatus.completed) {
      _controller.forward();
    }
  }

  void flipToFront() {
    if (_controller.status != AnimationStatus.dismissed) {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _flipCard,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final angle = _animation.value;
          final isFrontVisible = angle < pi / 2;
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle),
            child: isFrontVisible
                ? _buildFront()
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(pi),
                    child: _buildBack(),
                  ),
          );
        },
      ),
    );
  }

  Widget _buildFront() {
    return Stack(
      children: [
        _buildCard(imagePath: widget.frontImage, fit: widget.frontImageFit),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top right icon
                if (widget.topRightIcon != null)
                  Align(
                    alignment: Alignment.topRight,
                    child: widget.topRightIcon!,
                  ),
                const Spacer(),
                // Card number
                Material(
                  color: Colors.transparent,
                  child: Text(
                    widget.cardNumber,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Bottom row with holder name and icon
                Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          widget.cardHolderName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    if (widget.bottomRightIcon != null) widget.bottomRightIcon!,
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBack() {
    return Stack(
      children: [
        _buildCard(imagePath: widget.backImage, fit: widget.backImageFit),
        Positioned(
          top: widget.cardHeight * 0.15,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            color: Colors.black87,
          ),
        ),
        Positioned(
          top: widget.cardHeight * 0.15 + 60, // Position below the black strip
          left: 20,
          right: 20,
          child: const Text(
            'This card is property of the issuing bank.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              height: 1.2,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'CVV: ${widget.cvv}',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Expires: ${widget.expiryDate}',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard({required String imagePath, required BoxFit fit}) {
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(2, 4),
          ),
        ],
      ),
      clipBehavior: Clip
          .antiAlias, // Add this to ensure the image respects the border radius
      child: Image.asset(
        imagePath,
        fit: fit,
        width: widget.cardWidth,
        height: widget.cardHeight,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
