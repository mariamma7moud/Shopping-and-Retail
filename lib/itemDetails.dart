
import 'package:flutter/material.dart';
import 'package:shopping/startScreen.dart';

class ItemDetailsScreen extends StatefulWidget {
  final String _image;
  final String _itemName;
  final int _price;
  final String _description;

  const ItemDetailsScreen( this._image, this._itemName, this._price, this._description):super();


  @override
  _ItemDetailsScreenState createState() => _ItemDetailsScreenState(_image, _itemName, _price, _description);
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  int _amount= 1;
  String image= '';
  String itemName = '';
  int price = 0;
  String description = '';

  _ItemDetailsScreenState(String image, String itemName, int price, String description){
    this.image= image;
    this.itemName= itemName;
    this.price= price;
    this.description= description;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //Icon(Icons.home),
          title: Text('Item Details Screen'),
          //backgroundColor: Colors.green,
          backgroundColor: Colors.red,
          leading: InkWell(
            child: Icon(Icons.arrow_back),
            onTap: ()=> runApp(StartScreen()),
          ),


        ),
        body: SafeArea(
            child: Column(
              children: [

                //image child 1
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Image.network(image,
                      fit:  BoxFit.cover,
                    ),
                  ),
                ),

                //Title child 2
                Text(itemName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),

                //price and number child 3
                Column(
                  children: [
                    Divider(
                        color: Colors.black
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '${calculatePrice(price)} EGP',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        SizedBox(width: 250,),

                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red
                            ),

                            child: Icon(Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              _amount = _amount - 1;
                            });
                          },
                        ),

                        Container(
                          child: Center(child: Text(_amount.toString())),
                          width: 50,
                        ),

                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red
                            ),

                            child: Icon(Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              _amount = _amount + 1;
                            });
                          },
                        ),
                      ],
                    ),

                    Divider(
                        color: Colors.black
                    ),
                  ],
                ),

                //description child 4
                Container(
                  height: 200,
                  width: 400,
                  //color: Colors.grey,
                  child: Text(
                    description
                  ),
                ),
                SizedBox(height: 30,),

                //add to cart child 5
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric( horizontal: 30),
                  ),
                  onPressed: () {
                    print('pressed');
                  },
                  child: Text('Add to Cart'),
                ),

              ],
            ),
        ),
      ),
    );

  }

  int calculatePrice(int price){
    return price * _amount;
  }
}
