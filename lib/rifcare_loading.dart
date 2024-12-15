library rifcare_loading;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';



/// A Flutter package for displaying reusable and customizable loading dialogs.
class RifcareLoading {
  /// Displays a simple alert dialog with a simple loading
  static Future<void> simple({
    required BuildContext context,
    String? loadingText,
    bool barrierDismissible = false,
    bool canPop = false,
    double? loadingTextSize,
    Color? backgroundColor,
    Color? loadingColor,
    Color? loadingTextColor,
    double? borderRadius,
  }) {
    return showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: canPop,
        child: AlertDialog(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15.0),
          ),
          content: SizedBox(
            height: 40,
            child: Row(
              children: [
                const Gap(10),

                ///loading animation
                SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: loadingColor ?? Colors.black,
                    strokeWidth: 3,
                  ),
                ),

                const Gap(25),

                ///loading prompt
                Text(
                  loadingText ?? 'Loading...',
                  style: TextStyle(
                    fontSize: loadingTextSize ?? 16,
                    fontWeight: FontWeight.w400,
                    color: loadingTextColor ?? Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  static Future<void> modern({
    required BuildContext context,
    String? loadingText,
    bool barrierDismissible = false,
    bool canPop = false,
    double? loadingTextSize,
    Color? backgroundColor,
    Color? loadingTextColor,
    String? animationPath,
    double? borderRadius,
  }) {
    return showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: canPop,
        child: AlertDialog(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15.0),
          ),
          content: SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Loading animation
                SizedBox(
                  height: 120,
                  child: Lottie.asset(animationPath ?? 'assets/loading.json'),
                ),

                /// Loading prompt
                Text(
                  loadingText ?? 'Loading....',
                  style: TextStyle(
                    fontSize: loadingTextSize ?? 20,
                    fontWeight: FontWeight.w600,
                    color: loadingTextColor ?? Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
