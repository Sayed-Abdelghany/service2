import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service2/Model/Types.dart';
class TypesPage extends StatefulWidget {
  static String id = 'TypesPage';
  final  String ?nameShop;
  TypesPage({ @required this.nameShop });

  @override
  _TypesPageState createState() => _TypesPageState();
}

class _TypesPageState extends State<TypesPage> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(widget.nameShop!,style: TextStyle(color: Colors.yellow[700]),),
        ),
        backgroundColor: Colors.yellow[600],
        body: GridView.builder(
          itemCount: CategoriesFather().son!.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            childAspectRatio: 1.7/2,
          ), itemBuilder: (BuildContext context, int index) {

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: 20.h),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30.sp,
                      child: Image.asset(father[index].son![index].image!,
                        fit: BoxFit.fill,),),

                  ),

                  Text(father[index].son![index].name!),

                  // Text('مطعم سندوتش ميكى ',style: TextStyle(fontWeight: FontWeight.bold),),
                  // CircleAvatar(
                  //   radius: 40,
                  //   backgroundColor: Colors.transparent,
                  //   child:SvgPicture.asset( 'assets/images/coffee_black_24dp.svg',
                  //     color: Colors.red,width: 60,
                  //     fit: BoxFit.cover,),
                  // ),
                ],
              ),
            ),
          );
        },
        ) ,
      ),
    );
  }
}
