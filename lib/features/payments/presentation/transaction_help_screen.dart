import 'package:epurse/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/gradient_button.dart';

class TransactionHelpScreen extends StatefulWidget {
  const TransactionHelpScreen(
      {super.key,
      required this.transactionId,
      required this.from,
      required this.to,
      required this.amount,
      required this.status,
      required this.date,
      required this.time});
  final String transactionId;
  final String from;
  final String to;
  final String amount;
  final String status;
  final String date;
  final String time;

  @override
  State<TransactionHelpScreen> createState() => _TransactionHelpScreenState();
}

class _TransactionHelpScreenState extends State<TransactionHelpScreen> {
  String? selectedHelpType;
  final TextEditingController _remarksController = TextEditingController();
  final List<String> helpTypes = [
    'Transaction Failed',
    'Amount Mismatch',
    'Wrong Recipient',
    'Other Issue',
  ];

  @override
  void dispose() {
    _remarksController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildDetailRow(
                          "Transaction ID", widget.transactionId, theme),
                      const SizedBox(height: 12),
                      _buildDetailRow("From", widget.from, theme),
                      const SizedBox(height: 12),
                      _buildDetailRow("To", widget.to, theme),
                      const SizedBox(height: 12),
                      _buildDetailRow("Amount", widget.amount, theme),
                      const SizedBox(height: 12),
                      _buildDetailRow("Status", widget.status, theme),
                      const SizedBox(height: 12),
                      _buildDetailRow(
                          "Date", '${widget.date} ${widget.time}', theme),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Help Type:",
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                borderRadius: BorderRadius.circular(5),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                initialValue: selectedHelpType,
                isExpanded: true,
                hint: Text("Select help type",
                    style: theme.textTheme.labelMedium),
                items: helpTypes.map((String type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type, style: theme.textTheme.labelMedium),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedHelpType = newValue;
                  });
                },
              ).asGradientBox(context),
              const SizedBox(height: 20),
              Text(
                "Remarks:",
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _remarksController,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Enter your remarks here...",
                  hintStyle: theme.textTheme.bodyMedium,
                  border: InputBorder.none,
                ),
              ).asGradientBox(context),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: GradientButton(
                  isDarkMode: isDarkMode,
                  onPressed: () {},
                  child: Text("SUBMIT"),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {
                    context.goBack();
                  },
                  child: Text("CANCEL"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, ThemeData theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "$label:",
            style: theme.textTheme.labelMedium,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 3,
          child: Text(value, style: theme.textTheme.bodyMedium),
        ),
      ],
    );
  }
}
