import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portafolio/grocery_store/ui/pages/grocery_store_home_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Portafolio UI',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Grocery Store UI'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const GroceryStoreHomePage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
