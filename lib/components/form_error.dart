import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => FormErrorText(errors[index])),
    );
  }

  Row FormErrorText(String error) {
    return Row(
         children: [
          SvgPicture.asset(
            "assets/icons/Error.svg",
            height: SizeConfig().getProportionateScreenHeight(14),
            width: SizeConfig().getProportionateScreenHeight(14),
          ),
          SizedBox(width: SizeConfig().getProportionateScreenWidth(10),),
          Text(error),
        ],
      );
  }
}

