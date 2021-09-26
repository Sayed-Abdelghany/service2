
List <CategoriesFather>father = [
  CategoriesFather(name:'محلات',image:'assets/images/s1.png',son: [
    CategorySon(name: 'مطاعم',image: 'assets/images/s1.png'),
    CategorySon(name: 'كافيهات',image: 'assets/images/s2.png'),
    CategorySon(name: 'ملابس',image: 'assets/images/s3.png'),
  ]),
  CategoriesFather(name:'خدمات',image:'assets/images/s2.png',son: [
    CategorySon(name: 'تعليم',image: 'assets/images/s4.png'),
    CategorySon(name: 'صحه',image: 'assets/images/s5.png'),
    CategorySon(name: 'سياحه',image: 'assets/images/s6.png'),
  ]),
  CategoriesFather(name:'صيانه',image:'assets/images/s3.png',son: [
    CategorySon(name: 'ملابس',image: 'assets/images/s3.png'),
  ]),
  CategoriesFather(name:'مفقودات',image:'assets/images/s4.png',son: [
    CategorySon(name: 'ملابس',image: 'assets/images/s3.png'),
  ]),
  CategoriesFather(name:'عقارات',image:'assets/images/s5.png',son: [
    CategorySon(name: 'ملابس',image: 'assets/images/s3.png'),
  ]),
  CategoriesFather(name:'وظائف',image:'assets/images/s6.png',son: [
    CategorySon(name: 'ملابس',image: 'assets/images/s3.png'),
  ]),
];
class CategoriesFather {
  List<CategorySon>?son;
  String ?name;
  String ?image;
  CategoriesFather({this.name,this.image,this.son});
}

// List <CategorySon>son=[
//   CategorySon(name:'مطاعم',image:'assets/images/s1.png'),
//   CategorySon(name:'ملابس',image:'assets/images/s2.png'),
//   CategorySon(name:'سنترال',image:'assets/images/s3.png'),
//   CategorySon(name:'اكسسوارات',image:'assets/images/s4.png'),
//   CategorySon(name:'مكتبات',image:'assets/images/s5.png'),
//   CategorySon(name:'حلويات',image:'assets/images/s6.png'),
//   CategorySon(name:'حلويات',image:'assets/images/s6.png'),
//   CategorySon(name:'حلويات',image:'assets/images/s6.png'),
//   CategorySon(name:'حلويات',image:'assets/images/s6.png'),
// ];
class CategorySon{
  String ?name;
  String ?image;
  CategorySon({this.name, this.image});
}
