import 'package:flutter/material.dart';

import 'screens/tab.dart';

import './models/device.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Device> _devices = [
    Device(
      id: '001',
      title: 'Garage Lamp',
      type: 'outdoor',
      isOn: true,
      image: 'garage-lamp.jpg',
    ),
    Device(
      id: '002',
      title: 'Gate Light',
      type: 'outdoor',
      isOn: false,
      image: 'gate-light.jpg',
    ),
    Device(
      id: '003',
      title: 'Kitchen Lamp',
      type: 'indoor',
      isOn: true,
      image: 'kitchen-lamp.jpg',
    ),
    Device(
      id: '004',
      title: 'Living Room A/C',
      type: 'indoor',
      isOn: true,
      image: 'air-cond.jpg',
    ),
    Device(
      id: '005',
      title: 'Master Bedroom Lamp',
      type: 'indoor',
      isOn: true,
      image: 'bedroom-lamp.jpg',
    ),
    Device(
      id: '006',
      title: 'Syahmi\'s Plug',
      type: 'indoor',
      isOn: false,
      image: 'plug.jpg',
    ),
  ];

  void _toggleDeviceState(String id) {
    int deviceIndex = _devices.indexWhere((device) => device.id == id);
    if (deviceIndex != -1) {
      setState(() {
        _devices[deviceIndex].isOn = !_devices[deviceIndex].isOn;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyIoT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('My IoT Devices')),
        body: TabScreen(_devices, _toggleDeviceState),
      ),
    );
  }
}
