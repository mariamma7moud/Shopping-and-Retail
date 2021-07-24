import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  //const Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: <Widget> [

          CreateContainer('https://www.nicepng.com/png/detail/237-2370146_tablets-mobiles-and-tablets-png.png', 'Mobiles & Tablets'),
          CreateContainer('https://media-exp1.licdn.com/dms/image/C4E1BAQFUWJzbYV4dAg/company-background_10000/0/1552113586536?e=2159024400&v=beta&t=Gcq14_04szwJkcD8svZhlEz1xrGitzxbWNT6fysQzXM', 'Home Appliances'),
          CreateContainer('https://www.sports-fitness.co.uk/media/wysiwyg/gym.jpg', 'Sports & Fitness'),
          CreateContainer('https://img.freepik.com/free-photo/pretty-young-stylish-sexy-woman-pink-luxury-dress-summer-fashion-trend-chic-style-sunglasses-blue-studio-background-shopping-holding-paper-bags-talking-mobile-phone-shopaholic_285396-2957.jpg?size=626&ext=jpg', 'Fashion'),
          CreateContainer('https://stdavidscardiff.com/sites/st_davids/files/styles/image_spotlight_large/public/images/spotlights/sd-jewellery-2400x1200px.jpg?itok=0QbIXMX_', 'Watches & Jewelery'),
          CreateContainer('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-nlnP1pWxRreXHBdGIxjvLtwrGl9L-4OTjw&usqp=CAU','Health & Beauty'),
          CreateContainer('https://img.freepik.com/free-photo/newborn-toddler-boy-laughing-bed_115594-1502.jpg?size=626&ext=jpg', 'Baby Products'),
          CreateContainer('https://www.incimages.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg', 'Books, Games & Toys'),
          CreateContainer('https://www.homeappliancesworld.com/files/2015/09/home-appliance1.jpg','Electronics'),
          CreateContainer('https://welpmagazine.com/wp-content/uploads/2020/10/supermarket.jpg', 'Groceries'),
        ],
      ),
    );
  }


  Widget CreateContainer(String s, String title){
    return InkWell(
      child: Container(
        child: Stack(
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                child: Image.network(s,
                  fit:  BoxFit.cover,
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      //color: Color.fromRGBO(224, 224, 224, 1.0),
                    ),
                    height: 30,
                    width: 250,
                    child: Text(title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  )
              ),
            ]
        ),
      ),
      onTap: (){
        print("pressed");
      },
    );
  }
}
