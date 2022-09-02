import 'package:flutter/material.dart';
import 'package:flutter_portafolio/control_panel/constants/constants.dart';
import 'package:flutter_portafolio/control_panel/ui/widgets/control_panel_appbar.dart';
import 'package:flutter_portafolio/control_panel/ui/widgets/control_panel_drawer.dart';

class ControlPanelClientsPage extends StatelessWidget {
  const ControlPanelClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ControlPanelAppbar(
        title: const Text('Clientes'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt),
          ),
        ],
      ),
      drawer: const ControlPanelDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          final client = clients[index];
          return Card(
            child: ListTile(
              title: Text(client.name),
              subtitle: Text(client.email),
              trailing: const Icon(Icons.chevron_right_rounded),
            ),
          );
        },
      ),
    );
  }
}
