import 'package:flutter/material.dart';

class CustomThemeExtentions extends ThemeExtension<CustomThemeExtentions>{
  const CustomThemeExtentions({required this.UsernameStyle});

  final TextStyle? UsernameStyle;

  @override
  ThemeExtension<CustomThemeExtentions> copyWith() {
    return CustomThemeExtentions(UsernameStyle: UsernameStyle ?? this.UsernameStyle);
  }

  @override
  ThemeExtension<CustomThemeExtentions> lerp(ThemeExtension<CustomThemeExtentions>? other, double t) {
    // TODO: implement lerp
    // throw UnimplementedError();
    return CustomThemeExtentions(UsernameStyle: UsernameStyle ?? this.UsernameStyle);
  }

}