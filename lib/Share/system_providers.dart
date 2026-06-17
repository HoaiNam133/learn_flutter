import 'package:flutter_riverpod/legacy.dart';
import 'package:learn_flutter/Entities/Product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider<Product> selectedProductProvider=
StateProvider<Product>((ref)=>Product(id: '', name: '', price: null));
