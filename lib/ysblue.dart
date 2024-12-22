import 'package:flutter/material.dart';

/// #003876을 베이스로 하는 커스텀 팔레트 (MaterialColor).
/// 500 단계를 베이스(기본 색)로 두고,
/// 50 ~ 400은 조금 더 밝은 톤,
/// 600 ~ 900은 조금 더 어두운 톤으로 설정한 예시입니다.
const MaterialColor ysBlue = MaterialColor(
  _myCustomBluePrimaryValue,
  <int, Color>{
    50:  Color(0xFFE1E7F2), // 매우 밝은 톤
    100: Color(0xFFB3C6DD), // 밝은 톤
    200: Color(0xFF809FC5), // 조금 더 연한 톤
    300: Color(0xFF4D78AE), // 중간 톤
    400: Color(0xFF264C90), // 베이스보다 약간 연한 톤
    500: Color(_myCustomBluePrimaryValue), // 베이스(#003876)
    600: Color(0xFF003166), // 베이스보다 어두운 톤
    700: Color(0xFF002955),
    800: Color(0xFF002145),
    900: Color(0xFF00162C), // 매우 어두운 톤
  },
);

/// ARGB로 FF + 003876 = 0xFF003876
const int _myCustomBluePrimaryValue = 0xFF003876;
