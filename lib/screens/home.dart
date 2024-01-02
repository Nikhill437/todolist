import 'package:flutter/material.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu,size: 20,),const Text('Aryan',style: TextStyle(fontWeight: FontWeight.bold,),),
          Container(
            height: 40,
            width: 40,
            child: ClipRect(
              child: Image.asset("../images/img1.png"),
            ),
          ),
          ],

        ),
      ),
      body:Container(
        color: Colors.grey,
        child: Column(
          children: [
          searchbox(),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: const Text(
            "All Todo's",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
          ),
          ),
            Expanded(child: ListView(
              children: const[

              ],
            ))
          ],
        ),
      )
    );
  }
}
Widget searchbox(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(5)
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search,
          color: Colors.grey,
          size: 35,
        ),
          hintText: "Search to do ",
      ),
    ),
  ));
}