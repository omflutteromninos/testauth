import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class ViewData extends StatefulWidget {
  const ViewData({Key? key}) : super(key: key);

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  final CollectionReference _users = FirebaseFirestore.instance.collection('users');
  TextEditingController  _changevalue = TextEditingController();
  TextEditingController  _value = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Column(
                children: [
                  TextField(controller: _value,),
                  TextButton(onPressed: (){
                    _users.add({
                      'userName': _value.text
                    });
                    _value.clear();
                  }, child: Text('hiii'))
                ],
              );


            });


          }, icon: Icon(Icons.add))
        ],
      ),
      body: StreamBuilder(stream: _users.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if(snapshot.hasData){
          return ListView.builder(itemCount: snapshot.data!.docs.length,

          itemBuilder: (context, int data){
            final DocumentSnapshot documentSnapshot = snapshot.data!.docs[data];
            _changevalue.text=documentSnapshot['userName'];
            return  ListTile(
              leading: Text(documentSnapshot['userName']),
              title: TextButton(onPressed: (){
                _users.doc(documentSnapshot!.id).delete();
              }, child: Text('delete'),),

              trailing: IconButton(onPressed: (){
                showModalBottomSheet(context: context, builder: (context){
                  _changevalue.text=  documentSnapshot['userName'];
                  return Column(
                    children: [
                      TextField(controller: _changevalue,),
                      ElevatedButton(onPressed: (){
                        _users.doc(documentSnapshot!.id).update({
                          'userName': _changevalue.text
                        });
                      }, child: Text('update value')),

                     // IconButton(onPressed: (){}, icon: Icon(Icons.subscriptions_rounded))

                    ],
                  );
                });
              },icon: Icon(Icons.edit),),
            );
          });
        }
        else{
          return CircularProgressIndicator();
        }

      },

      ),
    );
  }
}
