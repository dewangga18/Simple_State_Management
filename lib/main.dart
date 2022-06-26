import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sm_setstate/page/done_module_provider.dart';
import 'page/module_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => DoneModuleProvider()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ModulePage(),
      ),
    );
  }
}