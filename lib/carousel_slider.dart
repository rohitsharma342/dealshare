// Re-export carousel_slider with proper aliasing to avoid conflicts
import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:carousel_slider/carousel_controller.dart' as carousel_ctrl hide CarouselController;
import 'package:flutter/material.dart' hide CarouselController;

// Export the carousel slider widget and options
export 'package:carousel_slider/carousel_options.dart';

// Create type aliases to avoid naming conflicts with Flutter's Material Carousel
typedef CarouselSlider = carousel.CarouselSlider;
typedef CarouselSliderController = carousel_ctrl.CarouselController;
typedef CarouselOptions = carousel.CarouselOptions;
