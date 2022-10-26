import 'package:flutter/material.dart';

class Visibilitytest extends StatefulWidget {
  const Visibilitytest({Key? key}) : super(key: key);

  @override
  State<Visibilitytest> createState() => _VisibilitytestState();
}

class _VisibilitytestState extends State<Visibilitytest> {
  var isVisible1= false;
  var isVisible2=false;
  var isVisible3=false;
  var intialize= 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Visibility(child: Text('visibitiy1'), visible: isVisible1,),
              Visibility(child: Text('visibitiy2'), visible: isVisible2,),
              Visibility(child: Text('visibitiy3'), visible: isVisible3,),
              TextButton(onPressed: (){
                  if(intialize==1){
                    setState(() {
                      isVisible1=true;
                      isVisible3=false;
                      isVisible2=false;
                    });
                  }
                  else if(intialize==2){
                    setState(() {
                      isVisible2=true;
                      isVisible1=false;
                      isVisible3=false;
                    });
                  }
                  else if(intialize==3){
                    isVisible3=true;
                    isVisible1=false;
                    isVisible2=false;
                    intialize=0;
                  }
                  print(intialize);
                  setState(() {
                    intialize++;
                  });

              }, child: Text('press me')),
            ],
          ),
        ),
      ),
    );
  }
}
