import 'package:familylost_faan/utilities/Colors/app_colors.dart';
import 'package:familylost_faan/utilities/fonts/app_fonts.dart';
import 'package:familylost_faan/utilities/icons/app_icons.dart';
import 'package:familylost_faan/utilities/texts/app_strings.dart';
import 'package:flutter/material.dart';

class AnimalItemPage extends StatefulWidget {
  const AnimalItemPage({super.key, required this.image});

  final String image;

  @override
  _AnimalItemPageState createState() => _AnimalItemPageState();
}

class _AnimalItemPageState extends State<AnimalItemPage> {
  var _deviceHeight;
  var _deviceWidth;
  bool _isContactButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Hero(
        tag: widget.image,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
              width:  _deviceWidth * 0.3, 
              height: _deviceHeight * 0.2,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nombre Animal',
                    style: AppFonts.title,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Raza Animal',
                    style: AppFonts.primary,
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppIcons.locationIcon,
                      const SizedBox(width: 2),
                      Text(
                        AppStrings.labelLocation,
                        style: AppFonts.primary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isContactButtonPressed = !_isContactButtonPressed;
                      });
                      // TODO: Implement contact action
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                          AppColors.transparentBackgroundColor),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          AppIcons.whatsAppIcon.icon,
                          color: AppColors
                              .whatsAppGreen,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          AppStrings.labelContact,
                          style: AppFonts.caption.copyWith(
                            color: AppColors.whatsAppGreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
