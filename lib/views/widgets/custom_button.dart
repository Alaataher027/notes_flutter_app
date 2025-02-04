import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, this.onTap, this.isLodaing = false});
  final String title;
  final void Function()? onTap;
  final bool isLodaing;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width of the screen
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          color: kPrimartColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLodaing
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
