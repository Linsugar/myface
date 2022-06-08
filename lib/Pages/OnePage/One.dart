//首页
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';


class OnePage extends ConsumerStatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  ConsumerState<OnePage> createState() => _OnePageState();
}

class _OnePageState extends ConsumerState<OnePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('首页'),),
      body: Container(
        child: Center(
          child: Container(
            width: 30.w,
            height: 30.h,
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}



