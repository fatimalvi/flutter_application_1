import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/hospitals.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/patient_login.dart';
import 'package:flutter_application_1/widgets/hospital_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Hospital_Search extends StatefulWidget{
  final String userId;
  const Hospital_Search({required this.userId});
  @override
  State<Hospital_Search> createState() => HospitalSearch();
}

class HospitalSearch extends State<Hospital_Search>{

  //
  //const Hospital_Search({required this.userId});
  String? userName = '';

  @override
  void initState() {
    super.initState();
    _getUserData();
  }
  

  Future<void> _getUserData() async {

    //print(widget.userId);

    final userData = await FirebaseFirestore.instance
        .collection('users')
        .doc(widget.userId.toString())
        .get();

    if (userData.exists) {
      final data = userData.data() as Map<String, dynamic>;
      setState(() {
        userName = data['firstName'];
      });
    } //else {
    //  print('User does not exist');
   // }
  }
  
 
  @override
  Widget build(BuildContext context) {
    _getUserData();
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Patient_Login();
                }));
              },
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Image.asset(
            "assets/images/user.png",
            width: 60,
            height: 60,
          ),
          // "Hello user" text
          Padding(
            
            padding: const EdgeInsets.all(16.0),
            child: userName != null
                ? Text(
                    'Hello $userName',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : CircularProgressIndicator(),
          ),

          // Search bar
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                hintText: 'Search hospitals',
              ),
            ),
          ),

          // Hospital list
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: HospitalsList.hospitals.length,
                itemBuilder: (context, index) {
                  return HospitalWidget(
                    item: HospitalsList.hospitals[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
