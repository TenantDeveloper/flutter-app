import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../recipe.dart';


class ProductDetails extends StatefulWidget {
  final int id;
  ProductDetails( {Key key,  this.id}) : super(key: key) ;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return _ProductDetails();
  }
}


class _ProductDetails extends State<ProductDetails> {
  int _sliderVal = 1;


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    final Recipe recipe = Recipe.dummyData.firstWhere((element) => element.id == widget.id);
    return MaterialApp(
      title: 'Products',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(recipe.label),
        ),
        body: SafeArea(
          child: ListView(

            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  
                  scrollDirection: Axis.horizontal ,
                  itemCount: recipe.imgUrl.length,
                  itemBuilder: (BuildContext context , int index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(image: AssetImage(recipe.imgUrl[index]) , fit: BoxFit.cover,),
                    );
                  },
                )
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(recipe.imgUrl.length, (index) => Padding(padding: const EdgeInsets.all(5) ,
                  child: Container(
                    width: 15,
                    height: 15,

                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),)

                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                    height:20
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(recipe.label , style: TextStyle(color: Theme.of(context).primaryColor , fontSize: 22.0 , fontWeight:FontWeight.bold)),
                        Text(recipe.price.toString() + " \$", style:TextStyle(color: Theme.of(context).primaryColor , fontSize: 30.0 , fontWeight:FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                        height:20
                    ),
                    Padding(padding: const EdgeInsets.all(10) ,
                     child: Text(recipe.description),
                    )
                  ],
                )
              ),
              Padding(padding: const EdgeInsets.all(5 ),
               child:  Container(
                 width: MediaQuery.of(context).size.width,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Quantity"),
                     Slider(
                       min:1,
                       max: 100,
                       divisions: 5,
                       value: _sliderVal.toDouble(),
                       onChanged: (val) {
                         setState(() {
                           _sliderVal = val.round();
                         });
                       },
                       activeColor: Colors.deepOrange,
                       inactiveColor: Colors.black,
                     ),

                     Text(_sliderVal.toString() , style: TextStyle(color: Colors.deepOrange , fontSize: 22.0),)
                   ],
                 ),
               )
              ),
              RaisedButton(
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          )
        )
      ),
    );
  }
}