// Re-export carousel_slider with proper aliasing to avoid conflicts
import 'package:carousel_slider/carousel_slider.dart' hide CarouselController;
import 'package:carousel_slider/carousel_controller.dart' as carousel_ctrl;
import 'package:flutter/material.dart' hide CarouselController;

// Export the main carousel slider widget
export 'package:carousel_slider/carousel_slider.dart' hide CarouselController;
export 'package:carousel_slider/carousel_controller.dart';

// Create a type alias for the controller to avoid naming conflicts
typedef CarouselSliderController = carousel_ctrl.CarouselControllerImpl;
