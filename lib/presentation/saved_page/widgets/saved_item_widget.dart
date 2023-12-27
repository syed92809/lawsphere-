import 'package:flutter/material.dart';
import 'package:syed_s_application4/core/app_export.dart';
import 'package:syed_s_application4/widgets/custom_elevated_button.dart';
import 'package:syed_s_application4/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SavedItemWidget extends StatelessWidget {
  const SavedItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 15,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: getSize(0),
            width: getSize(0),
            margin: getMargin(
              bottom: 68,
            ),
            padding: getPadding(
              all: 5,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 1,
              top: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Client Name",
                      style: CustomTextStyles.titleMediumBold_1,
                    ),
                    const SizedBox(width: 33), // Adjust spacing as needed
                    CustomElevatedButton(
                      height: MediaQuery.of(context).size.height *
                          0.03, // Dynamic button height
                      width: MediaQuery.of(context).size.width * 0.47,
                      text: "Mohammad Ali",
                      buttonTextStyle: theme.textTheme.labelLarge!,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                // *****************************************************************
                Row(
                  children: [
                    Text(
                      "Contract Date",
                      style: CustomTextStyles.titleMediumBold_1,
                    ),
                    const SizedBox(width: 20), // Adjust spacing as needed
                    CustomElevatedButton(
                      height: MediaQuery.of(context).size.height *
                          0.03, // Dynamic button height
                      width: MediaQuery.of(context).size.width * 0.47,
                      text: "7/Oct/2023",
                      buttonTextStyle: theme.textTheme.labelLarge!,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                // *************************************************************
                Row(
                  children: [
                    Text(
                      "Price",
                      style: CustomTextStyles.titleMediumBold_1,
                    ),
                    const SizedBox(width: 80), // Adjust spacing as needed
                    CustomElevatedButton(
                      height: MediaQuery.of(context).size.height *
                          0.03, // Dynamic button height
                      width: MediaQuery.of(context).size.width * 0.47,
                      text: "Rs 40,000",
                      buttonTextStyle: theme.textTheme.labelLarge!,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                // *************************************************************
                Row(
                  children: [
                    Text(
                      "Status",
                      style: CustomTextStyles.titleMediumBold_1,
                    ),
                    const SizedBox(width: 71), // Adjust spacing as needed
                    CustomElevatedButton(
                      height: MediaQuery.of(context).size.height *
                          0.03, // Dynamic button height
                      width: MediaQuery.of(context).size.width * 0.47,
                      text: "On-going",
                      buttonTextStyle: theme.textTheme.labelLarge!,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 5),
                  child: Row(
                    children: [
                      CustomElevatedButton(
                        height: MediaQuery.of(context).size.height *
                            0.03, // Dynamic button height
                        width: MediaQuery.of(context).size.width * 0.36,
                        text: "Cancel Contract",
                        buttonStyle: CustomButtonStyles.cancelContract,
                        onTap: () {
                          // Cancel contract code goes here
                        },
                      ),
                      const SizedBox(width: 10),
                      CustomElevatedButton(
                        height: MediaQuery.of(context).size.height *
                            0.03, // Dynamic button height
                        width: MediaQuery.of(context).size.width * 0.36,
                        text: "Contract Completed",
                        buttonStyle: CustomButtonStyles.fillGreen,
                        onTap: () {
                          // Contract completed code goes here
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 2,
                ),
                // *************************************************************
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
