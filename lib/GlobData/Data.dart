import 'package:flutter_riverpod/flutter_riverpod.dart';
class Data{
  //全局页面管理状态--判断当前页面
  static StateProvider<int> PageInt = StateProvider((ref) => 0);
}