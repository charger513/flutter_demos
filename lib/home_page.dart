import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portafolio/grocery_store/ui/pages/grocery_store_home_page.dart';
import 'package:flutter_portafolio/list_animation/ui/pages/list_animation_page.dart';
import 'package:flutter_portafolio/page_view_center_scale/ui/pages/page_view_center_scale_page.dart';
import 'package:flutter_portafolio/parallax_scroll/ui/pages/parallax_page.dart';
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
                  'Demos UI',
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
              Card(
                child: ListTile(
                  title: Text(
                    'Parallax List UI',
                    style: GoogleFonts.merriweatherSans(),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => ParallaxPage()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'PageView Center Scale',
                    style: GoogleFonts.merriweatherSans(),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const PageViewCenterScalePage(),
                      ),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'List Animation',
                    style: GoogleFonts.merriweatherSans(),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const ListAnimationPage(),
                      ),
                    );
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
