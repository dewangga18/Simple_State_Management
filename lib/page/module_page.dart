import 'package:flutter/material.dart';
import 'done_module_list.dart';
import 'module_list.dart';

class ModulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          //icon done untuk pindah halaman ke DoneMOduleLISt
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoneModuleList(),
                ),
              );
            },
            icon: const Icon(Icons.done),
          ),
          const SizedBox(width: 20,)
        ],
      ),
      body: ModuleList(),
    );
  }
}
