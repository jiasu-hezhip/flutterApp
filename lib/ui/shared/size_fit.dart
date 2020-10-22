import 'dart:ui';
class JSSizeFit {
  static double physicalWidth;
  static double physicalHeight;
  static double screenWidth;
  static double screenHeight;
  static double dpr;
  static double rpx;
  static double px;

  static void initialize({double standardWidth = 750}) {

    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;

    dpr = window.devicePixelRatio;

    screenWidth = physicalWidth/dpr;
    screenHeight = physicalHeight/dpr;

    rpx = screenWidth / standardWidth;
    px = screenWidth / standardWidth * 2;
  }

  // 按照像素来设置
  static double setPx(double size) {
    return JSSizeFit.px * size;
  }

  // 按照rxp来设置
  static double setRpx(double size) {
    return JSSizeFit.rpx * size;
  }
}