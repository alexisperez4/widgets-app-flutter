import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView()
    );
  }
}

class _UiControlsView extends StatefulWidget {

  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}




enum Transportation { car, plane, boat, submarine}

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreackfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState((){
            isDeveloper = !isDeveloper;
          }),
        ),


        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              })
            ),

            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por barco'),
              value: Transportation.boat, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              })
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              })
            ),

            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              })
            ),
          ],
        ),


        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: wantsBreackfast, 
          onChanged: (value) => setState(() {
            wantsBreackfast = !wantsBreackfast;
          }),
        ),

        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),

        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),


        
      ],
    );
  }
}

