import 'package:flutter/material.dart';
import 'package:shopping/itemDetails.dart';

class Home extends StatefulWidget {
  //const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(5),
            crossAxisSpacing: 5,
            mainAxisSpacing: 20,
            children: <Widget> [
              CreateItem('https://images.yaoota.com/-Wg47Rw7NDkYIGoZcPT-byd05bM=/trim/yaootaweb-production/media/crawledproductimages/d421c4ade7341699973d5e45628667610f88b7a4.jpg', 'LazyBoy Chair', 'Art Home Recliner Lazy Boy Chair , Grey', 7385),
              CreateItem('https://cf5.s3.souqcdn.com/item/2021/05/29/13/28/62/79/9/item_XL_132862799_dd25785484241.jpg', 'Fenty Gloss Bomb', 'FENTY BEAUTY by Rihanna Gloss Bomb Cream in Cupcakin', 850),
              CreateItem('https://cdn-images.farfetch-contents.com/15/07/28/57/15072857_30986742_1000.jpg', 'True Religion', 'Ricky Super T contrast-stitch flared jeans', 8557),
              CreateItem('https://cdn-images.farfetch-contents.com/14/73/47/75/14734775_23448166_600.jpg', 'Snapshot cross bag', 'Leather exterior with twill lining. Detachable shoulder strap ', 4650),
              CreateItem('https://images.solecollector.com/complex/images/c_crop,h_907,w_1369,x_92,y_26/c_fill,dpr_2.0,f_auto,fl_lossy,q_auto,w_680/cu0egwymashlf8rwovrf/dior-air-jordans-2', 'Air Jordan Dior', 'Air Jordan 1 Retro High Dior which is sold as a collaboration between Nike and Dior', 7899),
              CreateItem('https://cdn.shopify.com/s/files/1/0408/9909/collections/marcelo-burlon.jpg?v=1613423429', 'Marcelo Burlon', 'Marcelo Burlon wing t-shirt', 4200),
              CreateItem('https://alarm-stores.com/wp-content/uploads/2020/11/iPhone-12-Pro-Max.jpg', 'Apple', 'iphone 12 pro 265gb color blue Etisalat numbers only', 16860),
              CreateItem('https://www.mepal.com/us/604/0/0/1/ffffff00/c7f95583/19b6c95be78ee325ee810d6db7541601ca6c4d99173f8db31f2b5ef6da3184e2/water-bottle-campus-500-ml-green.jpg', 'Mepal', 'Water bottle that keeps water temp up to 20 hours ', 160),

            ]
        ),
    );
  }

  Widget CreateItem(String image, String itemName, String description, int price){
    return InkWell(
      child: GestureDetector(
        onTap: (){
          setState(() {
            runApp(ItemDetailsScreen(image, itemName, price, description));
          });
        },
        child: Container(
          width: 500,
          height: 500,
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //child 1 the image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 130,
                  child: Image.network(image,
                    fit:  BoxFit.cover,
                  ),
                ),
              ),

              //child 2 the words
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(itemName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                            print('pressed');
                          },
                        ),
                        Text('$price EGP'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
