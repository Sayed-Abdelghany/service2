import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service2/Model/Types.dart';
import 'package:service2/screens/typesPage.dart';
class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex=0;
  var scafffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            onTap: (index){
              setState(() {
                selectedIndex= index;
              });
            },
            currentIndex: selectedIndex,
            selectedItemColor: Colors.yellow[700],
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon:InkWell(
                  child: Icon( Icons.home)),label: 'الرثيسيه'),
              BottomNavigationBarItem(icon:InkWell(
                  child: Icon( Icons.favorite_outlined)),label: 'المفضله'),
              BottomNavigationBarItem(icon:InkWell(
                  child: Icon( Icons.shopping_cart)),label: 'عربه التسوق'),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                Container(
                  height: 1.sh,
                  color: Colors.yellow[600],
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home,size: 25.sp,),
                        title: Text('الصفحة الرئيسيه',style: TextStyle(fontSize: 25.sp),),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        leading: Icon(Icons.access_time_outlined,size: 25.sp,),
                        title: Text('أخبار',style: TextStyle(fontSize: 25.sp),),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_cart_outlined,size: 25.sp,),
                        title: Text('الطلبات',style: TextStyle(fontSize: 25.sp),),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        leading: Icon(Icons.track_changes_sharp,size: 25.sp,),
                        title: Text('خدمات',style: TextStyle(fontSize: 25.sp),),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        leading: Icon(Icons.fastfood_outlined,size: 25.sp,),
                        title: Text('المطاعم',style: TextStyle(fontSize: 25.sp),),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        leading: Icon(Icons.arrow_circle_up_outlined,size: 25.sp,),
                        title: Text('تسجيل الدخول',style: TextStyle(fontSize: 25.sp),),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        leading: Icon(Icons.send,size: 25.sp,),
                        title: Text('اتصل بنا',style: TextStyle(fontSize: 25.sp),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          key:scafffoldKey ,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('الرئيسية',style: TextStyle(color: Colors.yellow[700]),),
            centerTitle: true,
            titleSpacing: 50,
            leading: IconButton(icon : Icon( Icons.view_list_outlined,color: Colors.yellow[700]),
              onPressed: () {
                scafffoldKey.currentState!.openDrawer();
              },),
            actions: [
              Icon(Icons.search,color: Colors.yellow[700],),
            ],
          ),
          backgroundColor: Colors.yellow[600],
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: .7.sh,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      childAspectRatio: 2.5/2,
                    ),
                    itemCount: father.length,
                    itemBuilder: (BuildContext context,  index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>
                                  TypesPage(nameShop: father[index].name)));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.transparent,
                                child: Image.asset(father[index].image!,fit: BoxFit.cover,),),
                              Text(father[index].name!,style: TextStyle(fontSize: 30),),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: .08.sh,
                width: .8.sw,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow,width: 1),
                  color: Colors.yellow[700],
                ),
                child: Center(child: Text('أنت الآن فى دليل خدماتك',style: TextStyle(fontSize: 25),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
