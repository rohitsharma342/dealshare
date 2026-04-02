// Re-export carousel_slider with proper aliasing to avoid conflicts
export 'package:carousel_slider/carousel_slider.dart' hide CarouselController;
export 'package:carousel_slider/carousel_controller.dart' show CarouselControllerImpl;

import 'package:carousel_slider/carousel_controller.dart' as carousel;

typedef CarouselSliderController = carousel.CarouselControllerImpl;
