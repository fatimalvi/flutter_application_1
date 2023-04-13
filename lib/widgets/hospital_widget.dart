import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/hospitals.dart';

class HospitalWidget extends StatelessWidget {
  final HospitalItem item;

  const HospitalWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.asset(item.image,
            height: 120, // set the desired height of the image
            width: 60,
            fit: BoxFit.cover),
        title: Text(item.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text(
              "${item.location}",
              style: TextStyle(
                color: Color(0xFF02411A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
