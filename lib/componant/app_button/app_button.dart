import 'package:flutter/material.dart';
import 'package:proyojon/utils/constant/colors.dart';

class AppButton extends StatelessWidget {
  final double? buttonHeight;
  final double? buttonWidth;
  final double circularBorderRadius;
  final String? text;
  final VoidCallback? onTap;
  final Color buttonColor;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final bool isLoading;

  const AppButton({
    super.key,
    this.buttonHeight = 52,
    this.buttonWidth = double.infinity,
    this.circularBorderRadius = 5,
    this.text,
    this.onTap,
    this.buttonColor = AppColors.primaryBlue,
    this.fontSize = 14,
    this.fontColor = AppColors.white,
    this.fontWeight = FontWeight.w400,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: isLoading ? null : onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: buttonColor,
          disabledBackgroundColor: buttonColor, // 🔥 color fix
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(circularBorderRadius),
          ),
        ),
        child: Center(
          child: isLoading
              ? _buildLoader()
              : _buildText(),
        ),
      ),
    );
  }

  Widget _buildLoader() {
    return SizedBox(
      height: 22,
      width: 22,
      child: CircularProgressIndicator(
        strokeWidth: 2.5,
        color: fontColor,
      ),
    );
  }

  Widget _buildText() {
    return Text(
      text ?? '',
      maxLines: 1,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        color: fontColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
