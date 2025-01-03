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
        child: AlertDialog.adaptive(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15.0),
          ),
          content: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SizedBox(
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
      ),
    );
  }


/// this is the modern loading with lottie animation
  static Future<void> modern({
    required BuildContext context,
    required String animationPath,
    String? loadingText,
    bool barrierDismissible = false,
    bool canPop = false,
    double? loadingTextSize,
    Color? backgroundColor,
    Color? loadingTextColor,
    double? borderRadius,
  }) {
    return showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: canPop,
        child: AlertDialog.adaptive(
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
                  child: Lottie.asset(animationPath),
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
  
  
  ///this is the progress loading where remaining files and completed files are there
  static Future<void> progress({
    required BuildContext context,
    String? loadingText,
    bool barrierDismissible = false,
    bool canPop = false,
    double? loadingTextSize,
    Color? backgroundColor,
    Color? iconColor,
    IconData? icon,
    Color? loadingTextColor,
    double? borderRadius,
    String? currentData,
    String? totalData,
    Color? progressColor,
    double? value,
  }) {
    return showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: canPop,
        child: AlertDialog.adaptive(
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15.0),
          ),
          content: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: iconColor.withAlpha(55) ?? Colors.red.withOpacity(55),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Icon(
                          icon ?? Icons.timer_sharp,
                          color: iconColor ?? Colors.red,
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        loadingText ?? 'Loading ...',
                        style: TextStyle(
                          fontSize: loadingTextSize ?? 18,
                          fontWeight: FontWeight.bold,
                          color: loadingTextColor ?? Colors.black,
                        ),
                      ),
                    ],
                  ),

                  ///space
                  const SizedBox(height: 10),

                  ///remaining and completed data
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        currentData ?? '257 Files',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),
                      ),

                      Text(
                        totalData ?? '12,847 files',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: value ?? 0.7,
                      backgroundColor: progressColor.withAlpha(102) ?? Colors.grey.withAlpha(102),
                      color: progressColor ?? Colors.red,
                      minHeight: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
