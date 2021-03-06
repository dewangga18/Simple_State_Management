import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'done_module_provider.dart';

class DoneModuleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //listen digunakan untuk rebuild ui
    final doneModuleList = Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Module List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(doneModuleList[index]),
          );
        },
        itemCount: doneModuleList.length,
      ),
    );
  }
}

