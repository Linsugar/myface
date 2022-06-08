import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Chat extends ConsumerStatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  ConsumerState<Chat> createState() => _ChatState();
}

class _ChatState extends ConsumerState<Chat> {

  Color _iconColor = Colors.black;
  String _image = "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2Feb%2F24%2Fd5%2Feb24d54a0c4e1f174a7a4922aaa28454.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1657264546&t=293ed5bb78efe9bae8303a175d6fa0f5";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('遇见'),),
      body: Container(
        child: Column(
          children: [
            Container(width: 1.sw,height: 0.3.sh,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 0.9.sw,
                    height: 50.h,
                    child: Center(
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.user,color: _iconColor,),
                        trailing:FaIcon(FontAwesomeIcons.angleRight,color:_iconColor),
                        title: Text("新的好友"),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.9.sw,
                    height: 50.h,

                    child: Center(
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.solidObjectGroup,color: _iconColor),
                        trailing:FaIcon(FontAwesomeIcons.angleRight,color: _iconColor),
                        title: Text("群通知"),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.9.sw,
                    height: 50.h,

                    child: Center(
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.userGroup,color: _iconColor),
                        trailing: FaIcon(FontAwesomeIcons.angleRight,color: _iconColor),
                        title: Text("我的好友"),
                      ),
                    ),
                  ),
                  Container(
                    width: 0.9.sw,
                    height: 50.h,

                    child: Center(
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.solidObjectGroup,color: _iconColor),
                        trailing: FaIcon(FontAwesomeIcons.angleRight,color: _iconColor),
                        title: Text("我的群组"),
                      ),
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: 1.sw,height: 0.5.sh,
              child: ListView.separated(
                  padding: EdgeInsets.all(5.h),
                  itemCount: 10,separatorBuilder: (BuildContext context,int index){
                return Divider(color: Colors.blueGrey,height: 1.h,);
              },itemBuilder: (BuildContext context,int index){
                return  Container(
                  width: 0.9.sw,
                  height: 55.h,
                  margin: EdgeInsets.only(top: 1.h),
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(_image),
                      ),
                      trailing: Text("2"),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("张麻子",style: TextStyle(fontSize: 16.sp),),
                          Text("张麻子",style: TextStyle(fontSize: 13.sp),),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
