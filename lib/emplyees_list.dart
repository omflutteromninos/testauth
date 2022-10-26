import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Employees extends StatefulWidget {
  const Employees({Key? key}) : super(key: key);

  @override
  State<Employees> createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  TextEditingController _employeeName = TextEditingController();
  TextEditingController _description = TextEditingController();
  TextEditingController _details = TextEditingController();

  final CollectionReference _employees = FirebaseFirestore.instance.collection('employees');
  final CollectionReference _newemployee = FirebaseFirestore.instance.collection('newemployees');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (_){
          return Column(
            children: [
              TextField(
                controller: _employeeName,
              ),
              TextField(
                controller: _description,
              ),
              TextField(
                controller: _details,
              ),
              ElevatedButton(onPressed: (){

                _newemployee.add({
                  'name': 'new name',
                  'class': 'hey'
                });

                _employees.add({
                  'employeeName': _employeeName.text,
                  'description': _description.text,
                  'complete details':_details.text,




                });
              }, child: Text('button'))

            ],
          );
         // ElevatedButton(onPressed: () {  }, child: null,)
        });

      },



      ),
      body: StreamBuilder(
      stream: _employees.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
              itemCount: snapshot.data!.docs.length,



              itemBuilder: (context, int index){
                final DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
                return ListTile(
                  leading: Text(documentSnapshot['employeeName']),
                  title: Text(documentSnapshot['description']),
                  subtitle: Text(documentSnapshot['complete details']),
                  trailing: IconButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (context){
                      _employeeName.text = documentSnapshot['employeeName'];
                      _details.text = documentSnapshot['complete details'];
                      _description.text = documentSnapshot['description'];
                      return Column(
                        children: [

                          TextField(
                            controller: _employeeName,
                          ),
                          TextField(
                            controller: _details,
                          ),
                          TextField(
                            controller: _description,
                          ),
                          IconButton(onPressed: (){
                            _employees.doc(documentSnapshot.id!).update({
                                'employeeName': _employeeName.text,
                                 'complete details': _details.text,
                                       'description': _description.text,
                            }) ;
                          }, icon: Icon(Icons.done)),
                        ],
                      );
                    });
                  }, icon: Icon(Icons.edit)),
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


class employeeData{
  String EmployeeName;
  String EmployeeDetails;
  String EmployeeData;
employeeData(this.EmployeeName, this.EmployeeDetails,this.EmployeeData);

Map addData(){
  return {
    'employeeName': EmployeeName,
      'description' : EmployeeDetails,
       'complete details' : EmployeeData,
  };
}

}