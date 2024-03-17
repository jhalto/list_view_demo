import 'package:flutter/material.dart';
import 'package:list_view_demo/screens/list_model.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("total student is ${myList.length} "),
                  ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: ListTile(
                        subtitle: Text("${myList[index].age}"),
                        tileColor: myList[index].name=="Nadim"?Colors.red:Colors.blue,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage("${myList[index].image}"),
                        ),
                        title: Text("Name is ${myList[index].name}"),
                        trailing: Icon(myList[index].isMale==true?Icons.male:Icons.female ),
                        iconColor: myList[index].isMale==false?Colors.pink:Colors.yellow,
                      ),
                    );
                  },)
                ],
              ),
            ),
          )
      ),
    );
  }
}
