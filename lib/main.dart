import 'package:flutter/material.dart';
import 'package:flutter_provider_state_management/Providers/theme_changer_provider.dart';
import 'package:flutter_provider_state_management/Providers/count_provider.dart';
import 'package:flutter_provider_state_management/theme_changer.dart';
import 'package:flutter_provider_state_management/Providers/slider_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CountProvider()),
        ChangeNotifierProvider(create: (_)=>SliderProvider()),
        ChangeNotifierProvider(create: (_)=>ThemeChangerProvider())
      ],

      child: Builder(builder: (BuildContext context){
        final themeChanger = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          title: 'Provider State Management',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
              primarySwatch: Colors.indigo,
            iconTheme: const IconThemeData(
              color: Colors.red
            )
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.teal,
            primaryColor: Colors.teal,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.teal
            ),
            iconTheme: const IconThemeData(
              color: Colors.amber
            )
          ),
          home: const DarkThemeScreen(),
        );
      },),
    );
  }
}

