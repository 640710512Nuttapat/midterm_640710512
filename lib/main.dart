import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // TODO: implement widget
  
  String sum='0';
  String end='0';
  String end2='';
  String s='0';
  List<String> number = [];
  int i=0;
  void deletesum(IconData b){
 setState(() {
   if(b==Icons.clear){
     sum='0'; 
   }else if(b==Icons.backspace_outlined){
    sum=s;
   }
 });

  }
  void numberr(String a){
    end2+=a;
    end=a;
    print(end2);
  }
  

  Widget arr(IconData b){
    return Expanded(
    child: Ink(
      decoration: BoxDecoration(
        color: Color.fromARGB(160, 208, 208, 208), // ตั้งค่าสีพื้นหลังเป็นโปร่งใส
        borderRadius: BorderRadius.circular(0), // ตั้งค่ากรอบวงรีเป็น 0
      ),
      child: InkWell(
        onTap: () {
          deletesum(b);
        },
        child: Container(
          width: 70,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(b),
            ],
          ),
        ),
      ),
    ),
  );
  }
   Widget myButton(String a) {
  return Expanded(
     child: Ink(
      decoration: BoxDecoration(
        color: Color.fromARGB(159, 237, 49, 49), // ตั้งค่าสีพื้นหลังเป็นโปร่งใส
        borderRadius: BorderRadius.circular(0), // ตั้งค่ากรอบวงรีเป็น 0
      ),
      child: InkWell(
        onTap: () {
          numberr(a);
        },
        child: Container(
          width: 70,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Text(a,style: TextStyle(fontSize: 20), textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    ),);
      }

      Widget my0(String a) {
  return Expanded(
     child: Ink(
      decoration: BoxDecoration(
        color: Color.fromARGB(159, 237, 49, 49), // ตั้งค่าสีพื้นหลังเป็นโปร่งใส
        borderRadius: BorderRadius.circular(0), // ตั้งค่ากรอบวงรีเป็น 0
      ),
      child: InkWell(
        onTap: () {
          numberr(a);
        },
        child: Container(
           width:80,
          
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Text(a,style: TextStyle(fontSize: 20), textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    ),);
      }
void mm(String a){
  setState(() {
    if(a=='='){
    sum='0';
  }
  });
  
  
}
      Widget m(String a) {
  return Expanded(
     child: Ink(
      decoration: BoxDecoration(
        color: Color.fromARGB(159, 237, 49, 49), // ตั้งค่าสีพื้นหลังเป็นโปร่งใส
        borderRadius: BorderRadius.circular(0), // ตั้งค่ากรอบวงรีเป็น 0
      ),
      child: InkWell(
        onTap: () {
          mm(a);
        },
        child: Container(
           width:80,
          
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Text(a,style: TextStyle(fontSize: 20), textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    ),);
      }

 void mysum(String a){
  setState(() {
    int num1 = int.parse(sum);
    int num2 = int.parse(end);
    int num3 = int.parse(end2);
    s=sum;
    if(a=='+'){
      
      int result = num1 + num3;
      
     sum=result.toString();
     end2="";
    }
    else if(a=='-'){
    if(num1==0){
      int result =num3;
     sum=result.toString();
     end2="";
    }else  {
      int result = num1 - num3;
     sum=result.toString();
     end2="";
    }
      
    }
     else if(a=='÷'){
     int result = num1 ~/num3;
     sum=result.toString();
     end2="";
    }
    else if(a=='X'){
      if(num1==0){
         int result=num2;
         end="0";
         sum=result.toString();
         end2="";
      }else {
     int result = num1 * num3;
     sum=result.toString();
      end2="";
      }
    
    
    }


  });
}
Widget my(String a) {
  return Expanded(
     child: Ink(
      decoration: BoxDecoration(
        color: Color.fromARGB(160, 208, 208, 208), // ตั้งค่าสีพื้นหลังเป็นโปร่งใส
        borderRadius: BorderRadius.circular(0), // ตั้งค่ากรอบวงรีเป็น 0
      ),
      child: InkWell(
        onTap: () {
          mysum(a);
        },
        child: Container(
          width: 70,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Text(a,style: TextStyle(fontSize: 20), textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    ),);
      }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
       appBar: AppBar(
          title: Center(
            child: Text(
              "MY CALCULATOR",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        
        body: Column(
          
          children: [
            
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            SizedBox(width: 50,),
            Center(
            child: Text('$sum', style: TextStyle(fontSize: 50.5)),
              ),
            SizedBox(width: 50,),
  ],
)
            , Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
              SizedBox(height:100,),arr(Icons.clear), SizedBox(width:20,),
              arr(Icons.backspace_outlined) ,SizedBox(width: 50,)
             ],
             ) 
             ,Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(height:100,),  myButton('7',),SizedBox(width:20,),myButton('8',),SizedBox(width:20,),myButton('9',),SizedBox(width:20,),my('÷',),SizedBox(width: 50,)
              ],)

              ,Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               myButton('4',),SizedBox(width:20,),myButton('5',),SizedBox(width:20,),myButton('6',),SizedBox(width:20,),my('X',),SizedBox(width: 50,)
              ],)

              ,Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(height:100,),  myButton('1',),SizedBox(width:20,),myButton('2',),SizedBox(width:20,),myButton('3',),SizedBox(width:20,),my('-',),SizedBox(width: 50,)
              ],)

              ,Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 
                my0('0',),SizedBox(width:20,), my('+',),SizedBox(width: 50,)
              ],)

               ,Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 
               SizedBox(height:100,),  m('=',),SizedBox(width: 50,)
              ],)

          , Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 
               Text("กดเลข เครื่องหมาย เลข เครื่องหมาย ครับ")
              ],)




          ]),
        ));
       
  }
}

