import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var sgpa;
var sub1gpa = TextEditingController();
var sub2gpa = TextEditingController();
var sub3gpa = TextEditingController();
var sub4gpa = TextEditingController();
var sub5gpa = TextEditingController();
var sub6gpa = TextEditingController();
var sub7gpa = TextEditingController();
var sub8gpa = TextEditingController();
var sub9gpa = TextEditingController();
var sub10gpa = TextEditingController();
var sub1ch = TextEditingController();
var sub2ch = TextEditingController();
var sub3ch = TextEditingController();
var sub4ch = TextEditingController();
var sub5ch = TextEditingController();
var sub6ch = TextEditingController();
var sub7ch = TextEditingController();
var sub8ch = TextEditingController();
var sub9ch = TextEditingController();
var sub10ch = TextEditingController();
var prevCGPA = TextEditingController();
var prevch = TextEditingController();
var currentCGPA;
var newsemch;
var result = "";


class DeveloperInfoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.person_outline_sharp, size: 25,),
      Text('  About the Developer', style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20
      ),),
      ]
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white, // Border color
                width: 2.0, // Border width
              ),
              borderRadius: BorderRadius.circular(12), // Border radius
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 4.0,
                  offset: Offset(2, 2),
                ),
              ], // Shadow
            ),
            child: Center(child: Image.asset('assets/images/profile.png')),
          ),
          Text('            Flutter  Developer      ', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 20,

          ),),
          Row(
            children: [
              Icon(Icons.person),
          Text(' Talha Shahid', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
          ),),
    ]
          ),
          Row(
              children: [
                Icon(Icons.email_outlined),
                Text('  talhashahidarain@gmail.com', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),),
              ]
          ),
          // Add other relevant information here
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog when the button is pressed
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAST-NUCES GPA CALCULATOR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FAST-NUCES GPA CALCULATOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DeveloperInfoDialog(); // Show the developer info dialog
                  },
                );
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 'about',
                  child: Text('About Developer'),

                ),
              ],
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: 1000,
            width: 392,
            decoration: BoxDecoration(
              color: Colors.lightBlue, // Background color
              border: Border.all(
                color: Colors.lightBlue, // Border color
                width: 2.0, // Border width
              ),
              // borderRadius: BorderRadius.circular(12), // Border radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4.0,
                  offset: Offset(2, 2),
                ),
              ], // Shadow
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ElevatedButton(
                        child: Text("Grading Scheme", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lime,
                        ),
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NewScreen2()),
                          );
                        },
                      ),
                  ElevatedButton(
                    child: Text(" GPA Calculator  ", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lime,
                    ),
                    onPressed: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewScreen()),
                      );
                    },
                  )

                ],
              ),
            ),
          ),
        )
    );
  }
}
class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('GPA CALCULATOR'),
        ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue, // Background color
                        border: Border.all(
                          color: Colors.lightBlue, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(12), // Border radius
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4.0,
                            offset: Offset(2, 2),
                          ),
                        ], // Shadow
                      ),
                      width : 190,
                      height : 100,
                      child: TextField(
                        controller: prevCGPA,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.add_chart_rounded),
                          iconColor: Colors.blue,
                          labelText: 'Previous CGPA',
                          labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue, // Background color
                        border: Border.all(
                          color: Colors.lightBlue, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(12), // Border radius
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4.0,
                            offset: Offset(2, 2),
                          ),
                        ], // Shadow
                      ),
                      width : 190,
                      height : 100,
                      child: TextField(
                        controller: prevch,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.watch_later_outlined),
                          iconColor: Colors.blue,
                          labelText: 'Previous Cr.H',
                          labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                  ],
                ),





                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber, // Background color
                    border: Border.all(
                      color: Colors.amber, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub1gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.black,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub1ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                ////////////////////////////////////////////////////////////
                Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan, // Background color
                    border: Border.all(
                      color: Colors.cyan, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub2gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub2ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                ///////////////////////////////////////////////////////////////////////
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange, // Background color
                    border: Border.all(
                      color: Colors.orange, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub3gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub3ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                /////////////////////////////////////////////////////
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen, // Background color
                    border: Border.all(
                      color: Colors.lightGreen, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub4gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub4ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green, // Background color
                    border: Border.all(
                      color: Colors.green, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub5gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub5ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                /////////////////////////////////////////////////////////////////
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey, // Background color
                    border: Border.all(
                      color: Colors.blueGrey, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub6gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub6ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber, // Background color
                    border: Border.all(
                      color: Colors.amber, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub7gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub7ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue, // Background color
                    border: Border.all(
                      color: Colors.lightBlue, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub8gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub8ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange, // Background color
                    border: Border.all(
                      color: Colors.orange, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub9gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub9ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green, // Background color
                    border: Border.all(
                      color: Colors.green, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(12), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(2, 2),
                      ),
                    ], // Shadow
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub10gpa,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_chart_rounded),
                            iconColor: Colors.blue,
                            labelText: 'Grade Point Average',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        width : 190,
                        height : 100,
                        child: TextField(
                          controller: sub10ch,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.watch_later_outlined),
                            iconColor: Colors.blue,
                            labelText: 'Credit Hour',
                            labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),

                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                    ],
                  ),
                ),



                ElevatedButton(

                  child: Text("Get GPA", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                  ),
                  onPressed: ()
                  {
                    var pcgpa = prevCGPA.text.toString();
                    var sub1gp = sub1gpa.text.toString();
                    var sub2gp = sub2gpa.text.toString();
                    var sub3gp = sub3gpa.text.toString();
                    var sub4gp = sub4gpa.text.toString();
                    var sub5gp = sub5gpa.text.toString();
                    var sub6gp = sub6gpa.text.toString();
                    var sub7gp = sub7gpa.text.toString();
                    var sub8gp = sub8gpa.text.toString();
                    var sub9gp = sub9gpa.text.toString();
                    var sub10gp = sub10gpa.text.toString();
                    var sub1c = sub1ch.text.toString();
                    var sub2c = sub2ch.text.toString();
                    var sub3c = sub3ch.text.toString();
                    var sub4c = sub4ch.text.toString();
                    var sub5c = sub5ch.text.toString();
                    var sub6c = sub6ch.text.toString();
                    var sub7c = sub7ch.text.toString();
                    var sub8c = sub8ch.text.toString();
                    var sub9c = sub9ch.text.toString();
                    var sub10c = sub10ch.text.toString();
                    var pch = prevch.text.toString();

                    if ((pcgpa=="" || pch=="") || (sub1gp == "" && sub2gp == "" && sub3gp == "" && sub4gp == "" && sub5gp == "" && sub6gp == "" && sub7gp == "" && sub8gp == "" && sub9gp == "" && sub10gp == "") || (sub1gp != "" && sub1c == "") || (sub2gp != "" && sub2c == "") || (sub3gp != "" && sub3c == "") ||(sub4gp != "" && sub4c == "") || (sub5gp != "" && sub5c == "") || (sub6gp != "" && sub6c == "") || (sub7gp != "" && sub7c == "") || (sub8gp != "" && sub8c == "") || (sub9gp != "" && sub9c == "") || (sub10gp != "" && sub10c == "")) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Hint'),
                          content: Text('Check fields carefully and all fields should not be empty!!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the pop-up
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                    else {



                      if(sub1gp.isEmpty)
                      {
                        sub1gp="0";
                      }
                      if(sub1c.isEmpty)
                      {
                        sub1c="0";
                      }
                      if(sub2gp.isEmpty)
                      {
                        sub2gp="0";
                      }
                      if(sub2c.isEmpty)
                      {
                        sub2c="0";
                      }
                      if(sub3gp.isEmpty)
                      {
                        sub3gp="0";
                      }
                      if(sub3c.isEmpty)
                      {
                        sub3c="0";
                      }
                      if(sub4gp.isEmpty)
                      {
                        sub4gp="0";
                      }
                      if(sub4c.isEmpty)
                      {
                        sub4c="0";
                      }
                      if(sub5gp.isEmpty)
                      {
                        sub5gp="0";
                      }
                      if(sub5c.isEmpty)
                      {
                        sub5c="0";
                      }
                      if(sub6gp.isEmpty)
                      {
                        sub6gp="0";
                      }
                      if(sub6c.isEmpty)
                      {
                        sub6c="0";
                      }
                      if(sub7gp.isEmpty)
                      {
                        sub7gp="0";
                      }
                      if(sub7c.isEmpty)
                      {
                        sub7c="0";
                      }
                      if(sub8gp.isEmpty)
                      {
                        sub8gp="0";
                      }
                      if(sub8c.isEmpty)
                      {
                        sub8c="0";
                      }
                      if(sub9gp.isEmpty)
                      {
                        sub9gp="0";
                      }
                      if(sub9c.isEmpty)
                      {
                        sub9c="0";
                      }
                      if(sub10gp.isEmpty)
                      {
                        sub10gp="0";
                      }
                      if(sub10c.isEmpty)
                      {
                        sub10c="0";
                      }

                      var fpcgpa = double.parse(pcgpa.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds1gp = double.parse(sub1gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds2gp = double.parse(sub2gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds3gp = double.parse(sub3gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds4gp = double.parse(sub4gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds5gp = double.parse(sub5gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds6gp = double.parse(sub6gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds7gp = double.parse(sub7gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds8gp = double.parse(sub8gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds9gp = double.parse(sub9gp.replaceAll(RegExp(r'[.null]''[.notnull]''[.nn]''[^0-9]'),''));
                      var ds10gp = double.parse(sub10gp.replaceAll(RegExp(r'[^0-9]'),''));

                      var fpch = int.parse(pch.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is1c = int.parse(sub1c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is2c = int.parse(sub2c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is3c = int.parse(sub3c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is4c = int.parse(sub4c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is5c = int.parse(sub5c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is6c = int.parse(sub6c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is7c = int.parse(sub7c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is8c = int.parse(sub8c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is9c = int.parse(sub9c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      var is10c = int.parse(sub10c.replaceAll(RegExp(r'[^0-9]''.'),''));
                      newsemch=is1c + is2c + is3c + is4c + is5c + is6c + is7c + is8c + is9c + is10c;
                      sgpa = ((ds1gp * is1c) + (ds2gp * is2c) + (ds3gp * is3c) + (ds4gp * is4c) + (ds5gp * is5c) + (ds6gp * is6c) + (ds7gp * is7c) + (ds8gp * is8c) + (ds9gp * is9c) + (ds10gp * is10c)) / (is1c + is2c + is3c + is4c + is5c + is6c + is7c + is8c + is9c + is10c);
                      currentCGPA = (((fpcgpa * fpch)+(sgpa*newsemch))/(fpch+newsemch));

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewScreen1()),
                      );
                    }


                  },
                )

              ],

            )
        )
    );


  }
}

class NewScreen1 extends StatelessWidget {
  double updateGpa(var currentCGPA) {
    return currentCGPA;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Your GPA'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children : [


              Container(
                width:392,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.amber, // Background color
                  border: Border.all(
                    color: Colors.amber, // Border color
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(12), // Border radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4.0,
                      offset: Offset(2, 2),
                    ),
                  ], // Shadow
                ),
                child: Center(
                  child: Text(
                    "SGPA : ${sgpa.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                    ),
                  ),

                ),
              ),



              Container(
                width:392,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue, // Background color
                  border: Border.all(
                    color: Colors.blue, // Border color
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(12), // Border radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4.0,
                      offset: Offset(2, 2),
                    ),
                  ], // Shadow
                ),
                child: Center(
                  child: Text(
                    " CGPA : ${currentCGPA.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                    ),
                  ),

                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text("Click Here !!", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lime,
                      ),
                      onPressed: ()
                      {
                        showDialog(

                          context: context,
                          builder: (context) => AlertDialog(
                            content: SizedBox(
                              width: 200,
                              height: 200,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue, // Background color
                                  border: Border.all(
                                    color: Colors.lightBlue, // Border color
                                    width: 10.0, // Border width
                                  ),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21)), // Border radius
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.lightBlue,
                                      blurRadius: 10.0,
                                      spreadRadius: 20,
                                      offset: Offset(4, 4),
                                    ),
                                  ], // Shadow
                                ),
                                height: 500,
                                width: 250,
                                child: Center(child: Text("\" If Your CGPA Is Good Then Congrates, If Not Good Then Best Of Luck You Will Get It. \"", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the pop-up
                                },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue, shadowColor: Colors.lightBlue),
                                child: Text('Thanks'),
                              ),
                            ],
                          ),
                        );

                      },
                    ),


                  ]
              )



            ]
        ),
      ),



    );
  }
}


class NewScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Grading Scheme'),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 392,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent, // Background color
              border: Border.all(
                color: Colors.deepPurpleAccent, // Border color
                width: 10.0, // Border width
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurpleAccent,
                  blurRadius: 10.0,
                  spreadRadius: 50,
                  offset: Offset(4, 4),
                ),
              ], // Shadow
            ),
            child: Image.asset('assets/images/img.png'),
          ),
        )
    );
  }
}