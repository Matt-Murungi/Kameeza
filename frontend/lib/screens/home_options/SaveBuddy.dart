
import 'package:flutter/material.dart';
import 'package:contact_picker/contact_picker.dart';

import '../../widgets/ActionButton.dart';
import '../../widgets/ImageContainer.dart';
import 'response.dart';

class SaveBuddy extends StatefulWidget {
  static const route = "save_buddy";

  @override
  _SaveBuddyState createState() => _SaveBuddyState();
}

class _SaveBuddyState extends State<SaveBuddy> {
  final ContactPicker _contactPicker = new ContactPicker();
  Contact _contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
                child: ImageContainer(
              imageurl: 'assets/images/img2.png',
            )),
            SizedBox(height: 40,),
            ListTile(
              title: TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                  labelText: "Mobile Number",
                  hintText: 'Who do you want to be your buddy?',
                ),
              ),
              trailing: InkWell(
                onTap: () async {
                  Contact contact = await _contactPicker.selectContact();
                  setState(() {
                    _contact = contact;
                  });
                },
                child: Column(
                  children: [Icon(Icons.person_add), Text("Contacts")],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            new Text(
              _contact == null ? 'No contact selected.' : _contact.toString(),
            ),
            SizedBox(
              height: 20,
            ),
            ActionButton(
              label: "Send Invite",
              function: () =>
                  Navigator.pushNamed(context, ResponseScreen.route),
            ),
                   SizedBox(
            height: 100,
          ),
          ],
        ),
      ),
    );
  }
}
