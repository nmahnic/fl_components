import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and checks'),
      ),
      body: Column(
          children: [
      
            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primaryColor,
              value: _sliderValue,
              onChanged: _sliderEnable ? (value) {
                _sliderValue = value;
                setState(() { });
              } : null ,
            ),

            Checkbox(
              value: _sliderEnable, 
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() { });
              }
            ),

            Switch.adaptive(
              value: _sliderEnable, 
              onChanged: (value)  => { setState(() {  _sliderEnable = value; }) }
            ),

            CheckboxListTile(
              title: const Text("Habilitar Slider"),
              value: _sliderEnable, 
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() { });
              }
            ),

            SwitchListTile.adaptive(
              activeColor: AppTheme.primaryColor,
              title: const Text("Habilitar Slider"),
              value: _sliderEnable, 
              onChanged: (value)  => { setState(() {  _sliderEnable = value; }) }
            ),

            const AboutListTile(),
      
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [ 
                    Image(
                      image: const NetworkImage('https://w7.pngwing.com/pngs/677/631/png-transparent-the-legend-of-korra-aang-katara-asami-sato-avatar-television-heroes-human-thumbnail.png'),
                      fit: BoxFit.contain,
                      width: _sliderValue,
                    ),
                    const SizedBox(height: 50,)
                  ]
                ),
              ),
            ),

            
          ],
        ),
    );
  }
}