import 'package:flutter/material.dart';

enum typeSelected {
  upcoming,
  previous,
}

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({Key? key}) : super(key: key);

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  var valueSelected = typeSelected.upcoming;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(12)),
                color: valueSelected == typeSelected.upcoming
                    ? Colors.white
                    : null,
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    valueSelected = typeSelected.upcoming;
                  });
                },
                child: Text(
                  'Upcoming',
                  style: TextStyle(
                    color: valueSelected == typeSelected.upcoming
                        ? Colors.black
                        : Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(12)),
                color: valueSelected == typeSelected.previous
                    ? Colors.white
                    : null,
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    valueSelected = typeSelected.previous;
                  });
                },
                child: Text(
                  'Previous',
                  style: TextStyle(
                    color: valueSelected == typeSelected.previous
                        ? Colors.black
                        : Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
