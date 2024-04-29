import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FilterScreen> {
  var _filterSet = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter King'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _filterSet,
            onChanged: (isChecked){
              _filterSet = isChecked;
            },
            title: Text(
              'Setting ',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only king',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 30, right: 20),
          ),
        ],
      ),
    );
  }
}
