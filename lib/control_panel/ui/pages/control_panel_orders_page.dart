import 'package:flutter/material.dart';
import 'package:flutter_portafolio/control_panel/constants/constants.dart';
import 'package:flutter_portafolio/control_panel/ui/widgets/control_panel_appbar.dart';
import 'package:flutter_portafolio/control_panel/ui/widgets/control_panel_drawer.dart';
import 'package:flutter_portafolio/control_panel/ui/widgets/order_list_item.dart';

class ControlPanelOrdersPage extends StatelessWidget {
  const ControlPanelOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ControlPanelAppbar(
        title: const Text('Órdenes de servicio'),
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
      body: Stack(
        children: [
          ListView.builder(
            itemCount: orders.length,
            itemBuilder: ((context, index) {
              final order = orders[index];
              return OrderListItem(order: order);
            }),
          ),
          // Positioned(
          //   bottom: 50,
          //   right: 10,
          //   child: SizedBox(
          //     height: 50,
          //     width: 120,
          //     child: ElevatedButton(
          //       onPressed: () {},
          //       style: ElevatedButton.styleFrom(
          //         shape: const StadiumBorder(),
          //         primary: Colors.green,
          //       ),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: const [
          //           Icon(Icons.add),
          //           Text('Agregar'),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
