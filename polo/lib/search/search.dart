import 'package:flutter/material.dart';
import 'package:polo/navigation/navigationbar.dart';

import 'customsearch.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  final List<Contact> contacts = [
    Contact('John Doe', '123-456-7890', 'https://via.placeholder.com/150'),
    Contact('Jane Smith', '987-654-3210', 'https://via.placeholder.com/150'),
    // Diğer örnek veriler eklenebilir
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navigationBar(),
      appBar: AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.grey.shade900,
      title: Container(
        height: 38,
        child: TextField(
          readOnly: true,
          // enableInteractiveSelection: false,
          onTap: () {
            showSearch(
              context: context,
              delegate: CustomSearchDelegate(),
            );
          },
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[850],
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none),
              hintStyle:
              TextStyle(fontSize: 14, color: Colors.grey.shade500),
              hintText: "arama"),
        ),
      ),
    ),
      body:  ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ContactListItem(contact: contacts[index]);
        },
      ),
    );
  }
}
class Contact {
  final String name;
  final String phoneNumber;
  final String imageUrl;

  Contact(this.name, this.phoneNumber, this.imageUrl);
}
class ContactListItem extends StatelessWidget {
  final Contact contact;

  ContactListItem({required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        contact.imageUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(contact.name),
      subtitle: Text(contact.phoneNumber),
    );
  }
}
