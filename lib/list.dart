import 'package:flutter/material.dart';

import 'my_data.dart';

// use setState to the parent of this widget
// convert this stateless widget to stateful widget
class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  // preferred to make variables private
  // and to maintain the list state custom data class is required i.e. MyData here
  final List<MyData> _myList = [];

  // need to remove for loop from build method and add it to initState
  // otherwise that for loop gets called again and again after setState method called
  // in for loop we need to add data and not the widget
  @override
  void initState() {
    super.initState();

    for (var i = 0; i <= 100; i++) {
      _myList.add(MyData(value: 0));
    }
  }

  // use shorthand operators for single return statements
  @override
  Widget build(BuildContext context) => Scaffold(
        // scaffold was missing
        body: ListView.builder(
            itemCount: _myList.length,
            itemBuilder: (context, index) => ListItemWidget(
                  count: _myList[index].value,
                  onPressed: () => _onPressed(index),
                )),
      );

  // separate functions or methods from build method
  void _onPressed(int index) {
    setState(() {
      _myList[index].value += 1;
    });
  }
}

// convert this widget from  stateful to stateless
class ListItemWidget extends StatelessWidget {
  // pass or get updated count variable from main list
  // (rather than setting local variable here)
  final int count;

  // for plus button click you need to use this kind of callback function or typedef
  final Function()? onPressed;
  const ListItemWidget({super.key, required this.count, this.onPressed});

  @override
  Widget build(BuildContext context) => Padding(
        // container was used previously (its high level, avoid it for normal padding)
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Text(count.toString()),
            MaterialButton(
              onPressed: onPressed,
              child: const Text("+"),
            )
          ],
        ),
      );
}
