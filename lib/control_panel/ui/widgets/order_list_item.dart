import 'package:flutter/material.dart';
import 'package:flutter_portafolio/control_panel/models/order.dart';
import 'package:flutter_portafolio/control_panel/ui/pages/control_panel_order_details_page.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({Key? key, required this.order}) : super(key: key);

  final Order order;

  IconData getPrioridadIcon(int prioridad) {
    switch (prioridad) {
      case 1:
        return Icons.keyboard_arrow_up_rounded;
      case 2:
        return Icons.keyboard_double_arrow_up_rounded;
      default:
        return Icons.keyboard_arrow_up_rounded;
    }
  }

  Color? getStatusColor(int status) {
    switch (status) {
      case 1:
        return Colors.green;
      case 2:
        return Colors.amber;
      case 3:
        return Colors.red;
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(order.name),
        subtitle: Text(order.fechaAsignacion),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(getPrioridadIcon(order.prioridad)),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: getStatusColor(order.status),
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ControlPanelOrderDetailsPage(
                order: order,
                statusColor: getStatusColor(order.status),
              ),
            ),
          );
        },
      ),
    );
  }
}
