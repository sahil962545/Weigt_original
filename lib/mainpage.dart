
import 'package:flutter/material.dart';

import 'Contact.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  TextEditingController name = TextEditingController();
  TextEditingController weight = TextEditingController();
  List<Contact> contact = List.empty(growable: true);
  var time = DateTime.now();

  int selectIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text('mainpage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: weight,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Weight",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: name,
              decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: (){
                  String Name = name.text.trim();
                  String Weight = weight.text.trim();
                  if(Name.isNotEmpty && Weight.isNotEmpty){
                    setState(() {
                      name.text = " ";
                      weight.text = " ";
                      contact.add(Contact(Name,Weight));
                    });

                  }

                }, child: Text("Save",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),

                ElevatedButton(onPressed: (){
                  String Name = name.text.trim();
                  String Weight = weight.text.trim();

                  if(Name.isNotEmpty && Weight.isNotEmpty) {
                    setState(() {
                      name.text = " ";
                      weight.text = " ";
                      contact[selectIndex].name = Name;
                      contact[selectIndex].weight = Weight;


                    });
                  }

                }, child: Text("Update",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contact.length,
                itemBuilder: (context, index) =>  getRow(index),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(contact[index].name),
            Text(contact[index].weight),
            Text("$time"),
          ],
        ),
        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                  onTap: ((){
                    name.text = contact[index].name;
                    weight.text = contact[index].weight;
                    setState(() {
                      selectIndex = index;
                    });

                  }),
                  child: Icon(Icons.edit)),
              InkWell(
                onTap: ((){
                  setState(() {
                    contact.removeAt(index);
                  });

                }),
                  child: Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
