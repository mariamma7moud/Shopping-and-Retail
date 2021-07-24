import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  //const MyCart({Key key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int _amount= 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            itemview('https://images.solecollector.com/complex/images/c_crop,h_907,w_1369,x_92,y_26/c_fill,dpr_2.0,f_auto,fl_lossy,q_auto,w_680/cu0egwymashlf8rwovrf/dior-air-jordans-2', 'Nike Air jordan', 'Air jordan dior 1 retro high', 7899),
            SizedBox(
              height: 5,
            ),
            itemview('https://alarm-stores.com/wp-content/uploads/2020/11/iPhone-12-Pro-Max.jpg', 'Apple iphone 12 pro', 'iphone 12 pro 265gb', 16860),
          ],
        )
    );
  }

  Widget itemview(String img, String t1, String t2, int price){

    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            child: Image.network(img,
              width: 150,
              height: 150,
            ),

          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(t1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Text(t2,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  Text('${calculatePrice(price)} EGP',
                    style: TextStyle(
                        color: Colors.red
                    ),
                  ),
                  SizedBox( width: 7),
                  IconButton(icon: Icon(Icons.remove),
                    onPressed: (){
                        setState(() {
                          _amount = _amount - 1;
                        });
                    },
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.white12,
                    child: Text('$_amount'),
                  ),
                  IconButton(icon: Icon(Icons.add),
                    onPressed: (){
                      setState(() {
                        _amount = _amount + 1;
                      });
                    },
                    color: Colors.red,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  int calculatePrice(int price){
    return price * _amount;
  }
}
