import 'package:flutter/material.dart';
import 'package:flutter_portafolio/control_panel/ui/pages/control_panel_clients_page.dart';
import 'package:flutter_portafolio/control_panel/ui/pages/control_panel_home_page.dart';
import 'package:flutter_portafolio/control_panel/ui/pages/control_panel_orders_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ControlPanelDrawer extends StatelessWidget {
  const ControlPanelDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // Center(
            //   child: Image.asset(
            //     'assets/control_panel/vilfer_logo.png',
            //     height: 150,
            //   ),
            // ),
            Center(
              child: Text(
                'My Company',
                style: GoogleFonts.pacifico(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              title: Text('John Doe'),
              subtitle: Text('staff@example.com'),
              leading: CircleAvatar(
                child: Text('U'),
                backgroundColor: Colors.blue,
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Dashboard'),
              leading: const Icon(Icons.dashboard),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => const ControlPanelHomePage()));
              },
            ),
            ListTile(
              title: const Text('Orders'),
              leading: const Icon(Icons.event_available),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => const ControlPanelOrdersPage()));
              },
            ),
            const ListTile(
              title: Text('Services'),
              leading: Icon(Icons.adjust_rounded),
              trailing: Icon(Icons.chevron_right_rounded),
            ),
            ListTile(
              title: const Text('Clients'),
              leading: const Icon(Icons.people),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => const ControlPanelClientsPage()));
              },
            ),
            const ListTile(
              title: Text('Staff'),
              leading: Icon(Icons.key),
              trailing: Icon(Icons.chevron_right_rounded),
            ),
            const ListTile(
              title: Text('Configuration'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.chevron_right_rounded),
            ),
            const ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout_rounded),
            ),
            const Spacer(),
            const ListTile(
              title: Center(child: Text('Ver. 0.0.0')),
            ),
          ],
        ),
      ),
    );
  }
}
