import 'package:flutter/material.dart';
import 'package:my_flutter_app/category.dart';
import 'package:my_flutter_app/category_widget.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName = 'Home';
  List<Category> categoriesList = [];
  HomeScreen(){
    createCategory();
  }
  void createCategory(){
    for(int i = 1 ; i < 11 ; i++){
      categoriesList.add(Category(title:'Category num $i', image:'assets/images/cars.jpg'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,)
          ),
          centerTitle: true,
          //leading: ,
          actions: [],
          backgroundColor: Color(0xd79b00d2),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 4,vertical: 6),
            child: Column(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacementNamed('Login');
                },
                    child: Text('Back to Login')),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1/1
                    ),
                    itemBuilder: (context,index) => CategoryWidget(
                        ImageTitle: categoriesList[index].title,
                        ImagePath: categoriesList[index].image
                    ),
                    itemCount: categoriesList.length,
                  ),
                ),
              ],
            ),

        )
    );
  }
    CategoryWidget buildItemList(BuildContext context,int index){
    return CategoryWidget(
        ImageTitle: categoriesList[index].title,
        ImagePath: categoriesList[index].image
    );
  }
  CategoryWidget mapToCategory(Category category){
    return CategoryWidget(ImageTitle:category.title, ImagePath:category.image);
  }
}