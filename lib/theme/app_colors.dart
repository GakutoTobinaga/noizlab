import 'package:flutter/material.dart';

class LightColors {
  static const Color royalBlue = Color(0xFF5f64ec);
  static const Color portage = Color(0xFF8892f6);
  static const Color malibu = Color(0xFF99acfa);
  static const Color melrose = Color(0xFFa8acfa);
  static const Color perfume = Color(0xFFe3b2fa);
}

class DarkColors {
  static const Color ultramarine = Color(0xFF0d0f8c);
  static const Color persianBlue = Color(0xFF2129ca);
  static const Color royalBlue = Color(0xFF3350e1);
  static const Color royalBlueDark = Color(0xFF5054e2);
  static const Color lavender = Color(0xFFba5ddf);
}

class LightGradients {
  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      LightColors.royalBlue,
      LightColors.portage,
      LightColors.malibu,
      LightColors.melrose,
      LightColors.perfume,
    ],
  );
}

class DarkGradients {
  static const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      DarkColors.ultramarine,
      DarkColors.persianBlue,
      DarkColors.royalBlue,
      DarkColors.royalBlueDark,
      DarkColors.lavender,
    ],
  );
}
// lightmode gradient
///* Linear Gradient */
// .linear-gradient {
//   background: linear-gradient(0.25turn, #5f64ec, #8892f6, #99acfa, #a8acfa, #e3b2fa);
// }

// Copy Linear Gradient CSS
// /* Radial Gradient */
// .radial-gradient {
//   background: radial-gradient(circle, #5f64ec, #8892f6, #99acfa, #a8acfa, #e3b2fa);
// }


// darkmode gradient
///* Linear Gradient */
// .linear-gradient {
//   background: linear-gradient(0.25turn, #0d0f8c, #2129ca, #3350e1, #5054e2, #ba5ddf);
// }

// Copy Linear Gradient CSS
// /* Radial Gradient */
// .radial-gradient {
//   background: radial-gradient(circle, #0d0f8c, #2129ca, #3350e1, #5054e2, #ba5ddf);
// }