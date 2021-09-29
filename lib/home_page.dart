import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portafolio/grocery_store/ui/pages/grocery_store_home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Portfolio UI',
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Grocery Store UI',
                    style: GoogleFonts.merriweatherSans(),
                  ),
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
