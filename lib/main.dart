import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';

import 'Screens/product_details.dart';

/*
* main() function is the entry point for the code when the app launches.
* */
void main() {
  // runApp() function tells flutter which is the top level widget for the app.
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ThemeData theme = ThemeData();

// 3
    return MaterialApp(
// 4
      title: 'Products',
debugShowCheckedModeBanner: false,
// 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Products"),
        ),
        body: SafeArea(
          child: ListView.builder( itemCount: Recipe.dummyData.length,
            itemBuilder: (BuildContext context , int index) {
             return
               GestureDetector(
                 onTap: () {
                   Navigator.push(context , MaterialPageRoute(builder: (context) {
                     return ProductDetails(id: Recipe.dummyData[index].id,);
                   })
                   );
                 },
                 child: buildRecipeCard(Recipe.dummyData[index]),
               );
            } , )
          ),
        ),
      );
  }


  Widget buildRecipeCard (Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(image: AssetImage(recipe.imgUrl[0])),
            const SizedBox(
              height: 20.0,
            ),
            Text(recipe.label , style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),)
          ],
        ),
      )
    );
  }
}