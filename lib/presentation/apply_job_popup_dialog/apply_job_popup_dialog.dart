import 'package:flutter/material.dart';
import 'package:syed_s_application4/core/app_export.dart';
import 'package:syed_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ApplyJobPopupDialog extends StatelessWidget {
  const ApplyJobPopupDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: getHorizontalSize(302),
      padding: getPadding(
        all: 32,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsup11,
            height: getSize(101),
            width: getSize(101),
          ),
          Padding(
            padding: getPadding(
              top: 25,
            ),
            child: Text(
              "Success",
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "Your profile is completely setup and ready to go.",
              style: CustomTextStyles.titleSmallBluegray400,
            ),
          ),
          CustomElevatedButton(
            height: getVerticalSize(46),
            width: getHorizontalSize(127),
            text: "Continue",
            onTap: () {
              onTapContinue(context);
            },
            margin: getMargin(
              top: 23,
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
            buttonTextStyle: CustomTextStyles.titleSmallGray5001,
          ),
        ],
      ),
    );
  }
}

onTapContinue(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
}
