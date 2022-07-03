import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';

class ReorderableListViewCustom extends StatefulWidget {
  late double rWidth;
  late List<String> data;
  late String imageName;

  ReorderableListViewCustom({
    required this.data,
    required this.rWidth,
    required this.imageName,
  });

  @override
  State<ReorderableListViewCustom> createState() =>
      _ReorderableListViewCustomState();
}

class _ReorderableListViewCustomState extends State<ReorderableListViewCustom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.rWidth * 343,
      height: widget.rWidth * 80 * widget.data.length,
      child: ReorderableListView(
        children: widget.data
            .map((choice) => Container(
                width: widget.rWidth * 343,
                height: widget.rWidth * 80,
                padding: EdgeInsets.only(
                  top: widget.rWidth * 8,
                  bottom: widget.rWidth * 8,
                ),
                key: ValueKey(choice),
                child: Stack(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: widget.rWidth * 24,
                            height: widget.rWidth * 24,
                            child: Image.asset(
                              'assets/images/terminate_icon.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: widget.rWidth * 24,
                          height: widget.rWidth,
                        ),
                        SizedBox(
                          width: widget.rWidth * 64,
                          height: widget.rWidth * 64,
                          child: Image.asset(widget.imageName),
                        ),
                        SizedBox(
                          width: widget.rWidth * 16,
                          height: widget.rWidth,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            choice,
                            style: reorderableTextStyle,
                          ),
                        ),
                        SizedBox(
                          width: widget.rWidth * 53,
                          height: widget.rWidth,
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: widget.rWidth * 21,
                          height: widget.rWidth * 64,
                          child: const Icon(Icons.menu_rounded),
                        ),
                      ),
                    ),
                  ],
                )))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final element = widget.data.removeAt((oldIndex));
            widget.data.insert(newIndex, element);
          });
        },
      ),
    );
  }
}
