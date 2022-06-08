import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myface/GlobData/Data.dart';
import 'package:myface/Pages/Chat/Chat.dart';
import 'package:myface/Pages/OnePage/One.dart';
import 'package:myface/Pages/Setting/Setting.dart';

import 'Routes/router.dart';

void main(){
  SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  runApp(const ProviderScope(child:MainApp(),));
}



class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    //将内容与手机系统融为一体
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: "聊聊",
      debugShowCheckedModeBanner: false,
      home: Home(),
      onGenerateRoute: RoutePage.onGenerateRoute,

    );
  }
}




class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {

 final List<Widget> PageList = [
    OnePage(),
    Chat(),
    Setting()
  ];

 PageController pageController = PageController();
 @override
  void initState() {
   print('进入了页面');
   pageController.initialPage == 0;
   super.initState();
   pageController.addListener(() {
     print("object1===${pageController.page}");
     print("object2===${pageController.initialPage}");
   });

  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        context,
        designSize: Size(360, 690),
        minTextAdapt: true,
    );
    return  Scaffold(
      body: PageView(
        onPageChanged: (int page){
          ref.read(Data.PageInt.state).state = page;
        },
        controller: pageController,
        children: PageList,
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: ref.watch(Data.PageInt.state).state,
        onTap: (int i){
          pageController.jumpToPage(ref.read(Data.PageInt.state).state = i);
        },

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.business),label: "聊天"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_ethernet), label: "设置"),
        ],
      ),
    );
  }

}

