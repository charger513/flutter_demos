import 'package:flutter_portafolio/control_panel/models/client.dart';
import 'package:flutter_portafolio/control_panel/models/order.dart';

final orders = [
  Order(
    name: 'Apertura de puertas',
    fechaAsignacion: '07-junio-2022',
    status: 1,
    prioridad: 1,
  ),
  Order(
    name: 'Apertura de vehículos',
    fechaAsignacion: '08-junio-2022',
    status: 2,
    prioridad: 2,
  ),
  Order(
    name: 'Apertura de puertas',
    fechaAsignacion: '07-junio-2022',
    status: 1,
    prioridad: 2,
  ),
  Order(
    name: 'Cerraduras antipalanca',
    fechaAsignacion: '02-junio-2022',
    status: 3,
    prioridad: 2,
  ),
  Order(
    name: 'Bombín de seguridad',
    fechaAsignacion: '07-junio-2022',
    status: 1,
    prioridad: 1,
  ),
  Order(
    name: 'Apertura de vehículos',
    fechaAsignacion: '08-junio-2022',
    status: 3,
    prioridad: 2,
  ),
];

final clients = [
  Client(
    name: 'José García',
    email: 'j.garcia@correo.com',
    phone: '999 99 99 99',
  ),
  Client(
    name: 'Francisco Gonzáles',
    email: 'f.gonzales@correo.com',
    phone: '999 99 99 99',
  ),
  Client(
    name: 'Javier Fernández',
    email: 'j.fernandez@correo.com',
    phone: '999 99 99 99',
  ),
  Client(
    name: 'David Sánchez',
    email: 'd.sanchez@correo.com',
    phone: '999 99 99 99',
  ),
];
