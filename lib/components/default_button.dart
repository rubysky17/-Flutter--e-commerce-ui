import 'package:e_commerce_ui/main/constant.dart';
import 'package:e_commerce_ui/main/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final text;
  const DefaultButton({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: kPrimaryColor,
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}
