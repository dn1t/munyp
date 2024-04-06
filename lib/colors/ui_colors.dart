import 'package:flutter/material.dart';

import 'ui_color.dart';
import 'ui_color_scales.dart';

class UIColors {
  static const dark = UIDarkColors();

  static const transparent = Colors.transparent;
  static const black = Colors.black;
  static const white = Colors.white;
  static const blackA = blackAScale;
  static const whiteA = whiteAScale;
  static const gray = grayScale;
  static const grayA = grayAScale;
  static const mauve = mauveScale;
  static const mauveA = mauveAScale;
  static const slate = slateScale;
  static const slateA = slateAScale;
  static const sage = sageScale;
  static const sageA = sageAScale;
  static const olive = oliveScale;
  static const oliveA = oliveAScale;
  static const sand = sandScale;
  static const sandA = sandAScale;
  static const tomato = tomatoScale;
  static const tomatoA = tomatoAScale;
  static const red = redScale;
  static const redA = redAScale;
  static const ruby = rubyScale;
  static const rubyA = rubyAScale;
  static const crimson = crimsonScale;
  static const crimsonA = crimsonAScale;
  static const pink = pinkScale;
  static const pinkA = pinkAScale;
  static const plum = plumScale;
  static const plumA = plumAScale;
  static const purple = purpleScale;
  static const purpleA = purpleAScale;
  static const violet = violetScale;
  static const violetA = violetAScale;
  static const iris = irisScale;
  static const irisA = irisAScale;
  static const indigo = indigoScale;
  static const indigoA = indigoAScale;
  static const blue = blueScale;
  static const blueA = blueAScale;
  static const cyan = cyanScale;
  static const cyanA = cyanAScale;
  static const teal = tealScale;
  static const tealA = tealAScale;
  static const jade = jadeScale;
  static const jadeA = jadeAScale;
  static const green = greenScale;
  static const greenA = greenAScale;
  static const grass = grassScale;
  static const grassA = grassAScale;
  static const brown = brownScale;
  static const brownA = brownAScale;
  static const bronze = bronzeScale;
  static const bronzeA = bronzeAScale;
  static const gold = goldScale;
  static const goldA = goldAScale;
  static const sky = skyScale;
  static const skyA = skyAScale;
  static const mint = mintScale;
  static const mintA = mintAScale;
  static const lime = limeScale;
  static const limeA = limeAScale;
  static const yellow = yellowScale;
  static const yellowA = yellowAScale;
  static const amber = amberScale;
  static const amberA = amberAScale;
  static const orange = orangeScale;
  static const orangeA = orangeAScale;
}

class UIDarkColors {
  const UIDarkColors();

  final gray = grayDarkScale;
  final grayA = grayDarkAScale;
  final mauve = mauveDarkScale;
  final mauveA = mauveDarkAScale;
  final slate = slateDarkScale;
  final slateA = slateDarkAScale;
  final sage = sageDarkScale;
  final sageA = sageDarkAScale;
  final olive = oliveDarkScale;
  final oliveA = oliveDarkAScale;
  final sand = sandDarkScale;
  final sandA = sandDarkAScale;
  final tomato = tomatoDarkScale;
  final tomatoA = tomatoDarkAScale;
  final red = redDarkScale;
  final redA = redDarkAScale;
  final ruby = rubyDarkScale;
  final rubyA = rubyDarkAScale;
  final crimson = crimsonDarkScale;
  final crimsonA = crimsonDarkAScale;
  final pink = pinkDarkScale;
  final pinkA = pinkDarkAScale;
  final plum = plumDarkScale;
  final plumA = plumDarkAScale;
  final purple = purpleDarkScale;
  final purpleA = purpleDarkAScale;
  final violet = violetDarkScale;
  final violetA = violetDarkAScale;
  final iris = irisDarkScale;
  final irisA = irisDarkAScale;
  final indigo = indigoDarkScale;
  final indigoA = indigoDarkAScale;
  final blue = blueDarkScale;
  final blueA = blueDarkAScale;
  final cyan = cyanDarkScale;
  final cyanA = cyanDarkAScale;
  final teal = tealDarkScale;
  final tealA = tealDarkAScale;
  final jade = jadeDarkScale;
  final jadeA = jadeDarkAScale;
  final green = greenDarkScale;
  final greenA = greenDarkAScale;
  final grass = grassDarkScale;
  final grassA = grassDarkAScale;
  final brown = brownDarkScale;
  final brownA = brownDarkAScale;
  final bronze = bronzeDarkScale;
  final bronzeA = bronzeDarkAScale;
  final gold = goldDarkScale;
  final goldA = goldDarkAScale;
  final sky = skyDarkScale;
  final skyA = skyDarkAScale;
  final mint = mintDarkScale;
  final mintA = mintDarkAScale;
  final lime = limeDarkScale;
  final limeA = limeDarkAScale;
  final yellow = yellowDarkScale;
  final yellowA = yellowDarkAScale;
  final amber = amberDarkScale;
  final amberA = amberDarkAScale;
  final orange = orangeDarkScale;
  final orangeA = orangeDarkAScale;
}

class UIDynamicColors {
  late bool _isDarkMode;

  UIDynamicColors(BuildContext context) {
    _isDarkMode = MediaQuery.platformBrightnessOf(context) == Brightness.dark;
  }

  Color get transparent {
    return Colors.transparent;
  }

  Color get black {
    return Colors.black;
  }

  Color get white {
    return Colors.white;
  }

  UIColor get blackA {
    return blackAScale;
  }

  UIColor get whiteA {
    return whiteAScale;
  }

  UIColor get gray {
    return _isDarkMode ? grayDarkScale : grayScale;
  }

  UIColor get grayA {
    return _isDarkMode ? grayDarkAScale : grayAScale;
  }

  UIColor get mauve {
    return _isDarkMode ? mauveDarkScale : mauveScale;
  }

  UIColor get mauveA {
    return _isDarkMode ? mauveDarkAScale : mauveAScale;
  }

  UIColor get slate {
    return _isDarkMode ? slateDarkScale : slateScale;
  }

  UIColor get slateA {
    return _isDarkMode ? slateDarkAScale : slateAScale;
  }

  UIColor get sage {
    return _isDarkMode ? sageDarkScale : sageScale;
  }

  UIColor get sageA {
    return _isDarkMode ? sageDarkAScale : sageAScale;
  }

  UIColor get olive {
    return _isDarkMode ? oliveDarkScale : oliveScale;
  }

  UIColor get oliveA {
    return _isDarkMode ? oliveDarkAScale : oliveAScale;
  }

  UIColor get sand {
    return _isDarkMode ? sandDarkScale : sandScale;
  }

  UIColor get sandA {
    return _isDarkMode ? sandDarkAScale : sandAScale;
  }

  UIColor get tomato {
    return _isDarkMode ? tomatoDarkScale : tomatoScale;
  }

  UIColor get tomatoA {
    return _isDarkMode ? tomatoDarkAScale : tomatoAScale;
  }

  UIColor get red {
    return _isDarkMode ? redDarkScale : redScale;
  }

  UIColor get redA {
    return _isDarkMode ? redDarkAScale : redAScale;
  }

  UIColor get ruby {
    return _isDarkMode ? rubyDarkScale : rubyScale;
  }

  UIColor get rubyA {
    return _isDarkMode ? rubyDarkAScale : rubyAScale;
  }

  UIColor get crimson {
    return _isDarkMode ? crimsonDarkScale : crimsonScale;
  }

  UIColor get crimsonA {
    return _isDarkMode ? crimsonDarkAScale : crimsonAScale;
  }

  UIColor get pink {
    return _isDarkMode ? pinkDarkScale : pinkScale;
  }

  UIColor get pinkA {
    return _isDarkMode ? pinkDarkAScale : pinkAScale;
  }

  UIColor get plum {
    return _isDarkMode ? plumDarkScale : plumScale;
  }

  UIColor get plumA {
    return _isDarkMode ? plumDarkAScale : plumAScale;
  }

  UIColor get purple {
    return _isDarkMode ? purpleDarkScale : purpleScale;
  }

  UIColor get purpleA {
    return _isDarkMode ? purpleDarkAScale : purpleAScale;
  }

  UIColor get violet {
    return _isDarkMode ? violetDarkScale : violetScale;
  }

  UIColor get violetA {
    return _isDarkMode ? violetDarkAScale : violetAScale;
  }

  UIColor get iris {
    return _isDarkMode ? irisDarkScale : irisScale;
  }

  UIColor get irisA {
    return _isDarkMode ? irisDarkAScale : irisAScale;
  }

  UIColor get indigo {
    return _isDarkMode ? indigoDarkScale : indigoScale;
  }

  UIColor get indigoA {
    return _isDarkMode ? indigoDarkAScale : indigoAScale;
  }

  UIColor get blue {
    return _isDarkMode ? blueDarkScale : blueScale;
  }

  UIColor get blueA {
    return _isDarkMode ? blueDarkAScale : blueAScale;
  }

  UIColor get cyan {
    return _isDarkMode ? cyanDarkScale : cyanScale;
  }

  UIColor get cyanA {
    return _isDarkMode ? cyanDarkAScale : cyanAScale;
  }

  UIColor get teal {
    return _isDarkMode ? tealDarkScale : tealScale;
  }

  UIColor get tealA {
    return _isDarkMode ? tealDarkAScale : tealAScale;
  }

  UIColor get jade {
    return _isDarkMode ? jadeDarkScale : jadeScale;
  }

  UIColor get jadeA {
    return _isDarkMode ? jadeDarkAScale : jadeAScale;
  }

  UIColor get green {
    return _isDarkMode ? greenDarkScale : greenScale;
  }

  UIColor get greenA {
    return _isDarkMode ? greenDarkAScale : greenAScale;
  }

  UIColor get grass {
    return _isDarkMode ? grassDarkScale : grassScale;
  }

  UIColor get grassA {
    return _isDarkMode ? grassDarkAScale : grassAScale;
  }

  UIColor get brown {
    return _isDarkMode ? brownDarkScale : brownScale;
  }

  UIColor get brownA {
    return _isDarkMode ? brownDarkAScale : brownAScale;
  }

  UIColor get bronze {
    return _isDarkMode ? bronzeDarkScale : bronzeScale;
  }

  UIColor get bronzeA {
    return _isDarkMode ? bronzeDarkAScale : bronzeAScale;
  }

  UIColor get gold {
    return _isDarkMode ? goldDarkScale : goldScale;
  }

  UIColor get goldA {
    return _isDarkMode ? goldDarkAScale : goldAScale;
  }

  UIColor get sky {
    return _isDarkMode ? skyDarkScale : skyScale;
  }

  UIColor get skyA {
    return _isDarkMode ? skyDarkAScale : skyAScale;
  }

  UIColor get mint {
    return _isDarkMode ? mintDarkScale : mintScale;
  }

  UIColor get mintA {
    return _isDarkMode ? mintDarkAScale : mintAScale;
  }

  UIColor get lime {
    return _isDarkMode ? limeDarkScale : limeScale;
  }

  UIColor get limeA {
    return _isDarkMode ? limeDarkAScale : limeAScale;
  }

  UIColor get yellow {
    return _isDarkMode ? yellowDarkScale : yellowScale;
  }

  UIColor get yellowA {
    return _isDarkMode ? yellowDarkAScale : yellowAScale;
  }

  UIColor get amber {
    return _isDarkMode ? amberDarkScale : amberScale;
  }

  UIColor get amberA {
    return _isDarkMode ? amberDarkAScale : amberAScale;
  }

  UIColor get orange {
    return _isDarkMode ? orangeDarkScale : orangeScale;
  }

  UIColor get orangeA {
    return _isDarkMode ? orangeDarkAScale : orangeAScale;
  }
}
