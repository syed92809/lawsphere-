import 'package:flutter/material.dart';
import 'package:syed_s_application4/core/app_export.dart';
import 'package:syed_s_application4/widgets/custom_elevated_button.dart';
import 'package:syed_s_application4/presentation/confirmation_dialog/confirmation_dialog.dart';

// ignore_for_file: must_be_immutable
class SpeciallizationScreen extends StatefulWidget {
  const SpeciallizationScreen({Key? key}) : super(key: key);

  @override
  _SpeciallizationScreenState createState() => _SpeciallizationScreenState();
}

class _SpeciallizationScreenState extends State<SpeciallizationScreen> {
  List<String> selectedSpecializations = [];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 23, top: 13, right: 23, bottom: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgGroup162799,
                  height: getSize(24),
                  width: getSize(24),
                  alignment: Alignment.centerLeft,
                  margin: getMargin(left: 1),
                  onTap: () {
                    onTapImgImage(context);
                  },
                ),
                Container(
                  width: getHorizontalSize(177),
                  margin: getMargin(top: 44),
                  child: Text(
                    "What is your specialization?",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        theme.textTheme.headlineSmall!.copyWith(height: 1.33),
                  ),
                ),
                Padding(
                  padding: getPadding(top: 7),
                  child: Text(
                    "Select your specializations as a lawyer",
                    style: CustomTextStyles.titleSmallBluegray400_1,
                  ),
                ),
                Padding(
                  padding: getPadding(top: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        buildCheckbox("Admiralty Lawyer"),
                        buildCheckbox("Business Lawyer"),
                        buildCheckbox("Constitutional Lawyer"),
                        buildCheckbox("Environmental Lawyer"),
                        buildCheckbox("Property Lawyer"),
                        buildCheckbox("Patent Lawyer"),
                        buildCheckbox("Healthcare Lawyer"),
                        buildCheckbox("Criminal Defense Lawyer"),
                        buildCheckbox("Family Lawyer"),
                        buildCheckbox("Personal Injury Lawyer"),
                        buildCheckbox("Immigration Lawyer"),
                        buildCheckbox("Labor and Employment Lawyer"),
                        buildCheckbox("Intellectual Property Lawyer"),
                        buildCheckbox("Estate Planning Lawyer"),
                        buildCheckbox("Real Estate Lawyer"),
                        buildCheckbox("Bankruptcy Lawyer"),
                        buildCheckbox("Tax Lawyer"),
                        buildCheckbox("Divorce Lawyer"),
                        buildCheckbox("Civil Rights Lawyer"),
                        buildCheckbox("Corporate Lawyer"),
                        buildCheckbox("Entertainment Lawyer"),
                        buildCheckbox("Social Security Disability Lawyer"),

                        // Add more checkboxes for other categories here...
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "Continue",
          margin: getMargin(left: 24, right: 24, bottom: 39),
          buttonStyle: CustomButtonStyles.fillPrimary,
          onTap: () {
            onTapContinue(context);
          },
        ),
      ),
    );
  }

  /// Displays an [AlertDialog] with a custom content widget using the
  /// provided [BuildContext].
  ///
  /// The custom content is created using the [ConfirmationDialog]
  /// method and is displayed in an [AlertDialog] that fills the entire screen
  /// with no padding.
  // onTapContinue(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (_) => AlertDialog(
  //             content: ConfirmationDialog(),
  //             backgroundColor: Colors.transparent,
  //             contentPadding: EdgeInsets.zero,
  //             insetPadding: const EdgeInsets.only(left: 0),
  //           ));
  // }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectCourt);
  }

  Widget buildCheckbox(String title) {
    return CheckboxListTile(
      title: Text(
        title,
        style: theme.textTheme.bodyText1,
      ),
      value: selectedSpecializations.contains(title),
      onChanged: (value) {
        setState(() {
          if (value!) {
            selectedSpecializations.add(title);
          } else {
            selectedSpecializations.remove(title);
          }
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

  onTapImgImage(BuildContext context) {
    Navigator.pop(context);
  }
}
