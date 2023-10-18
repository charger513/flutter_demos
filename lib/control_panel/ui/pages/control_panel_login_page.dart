import 'package:flutter/material.dart';
import 'package:flutter_portafolio/control_panel/ui/pages/control_panel_home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ControlPanelLoginPage extends StatelessWidget {
  const ControlPanelLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center(
            //   child: Image.asset(
            //     'assets/control_panel/vilfer_logo.png',
            //     width: MediaQuery.of(context).size.width * 0.6,
            //   ),
            // ),
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child:
                  Text('My Company', style: GoogleFonts.pacifico(fontSize: 40)),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: const StadiumBorder()),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const ControlPanelHomePage()));
                      },
                      child: const Text('Log In'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.blue),
                      onPressed: () {},
                      child: const Text('Forgot password'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
