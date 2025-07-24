import '../../imports.dart';

ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 207, 166, 0),
        dynamicSchemeVariant: DynamicSchemeVariant.rainbow),
    // appBarTheme: AppBarTheme(
    //   // backgroundColor: Color.fromARGB(255, 255, 255, 255),
    //   // foregroundColor: Color.fromRGBO(0, 0, 0, 1),
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //       statusBarBrightness: kIsWeb
    //           ? Brightness.light
    //           : defaultTargetPlatform == TargetPlatform.iOS
    //               ? Brightness.light
    //               : Brightness.dark,
    //       statusBarIconBrightness: kIsWeb
    //           ? Brightness.light
    //           : defaultTargetPlatform == TargetPlatform.iOS
    //               ? Brightness.light
    //               : Brightness.dark,
    //       statusBarColor: Colors.transparent,
    //       systemNavigationBarColor: Colors.transparent,
    //       systemNavigationBarIconBrightness: Brightness.dark),
    // ),
    textTheme: GoogleFonts.interTextTheme(Typography.englishLike2018)
        .apply(bodyColor: Colors.black),
    extensions: const [
      Shadows(
          shadow: BoxShadow(
        offset: Offset(0, 1),
        blurRadius: 10,
        spreadRadius: 0.1,
        color: Color.fromARGB(255, 215, 215, 215),
      )),
    ]);

ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 207, 166, 0),
        brightness: Brightness.dark,
        dynamicSchemeVariant: DynamicSchemeVariant.rainbow),
    // appBarTheme: AppBarTheme(
    //   // backgroundColor: Color.fromARGB(255, 38, 38, 38),
    //   // foregroundColor: Color.fromRGBO(255, 255, 255, 1),
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //       statusBarBrightness: kIsWeb
    //           ? Brightness.dark
    //           : defaultTargetPlatform == TargetPlatform.iOS
    //               ? Brightness.dark
    //               : Brightness.light,
    //       statusBarIconBrightness: kIsWeb
    //           ? Brightness.dark
    //           : defaultTargetPlatform == TargetPlatform.iOS
    //               ? Brightness.dark
    //               : Brightness.light,
    //       statusBarColor: Colors.transparent,
    //       systemNavigationBarColor: Colors.transparent,
    //       systemNavigationBarIconBrightness: Brightness.light),
    // ),
    textTheme: GoogleFonts.interTextTheme(Typography.englishLike2018)
        .apply(bodyColor: Colors.white),
    extensions: const [
      Shadows(
          shadow: BoxShadow(
        offset: Offset(0, 1),
        blurRadius: 8,
        spreadRadius: 0.1,
        color: Color.fromARGB(255, 32, 32, 32),
      ))
    ]);

class Shadows extends ThemeExtension<Shadows> {
  final BoxShadow shadow;

  const Shadows({required this.shadow});

  @override
  Shadows copyWith({BoxShadow? shadow}) {
    return Shadows(shadow: shadow ?? this.shadow);
  }

  @override
  Shadows lerp(ThemeExtension<Shadows>? other, double t) {
    return this;
  }
}
