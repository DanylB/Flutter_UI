import 'package:flutter/material.dart';

class BuildSwitch extends StatefulWidget {
  @override
  _BuildSwitchState createState() => _BuildSwitchState();
}

class _BuildSwitchState extends State<BuildSwitch> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),

      child: Container(
        padding: const EdgeInsets.all(4),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFF6C65AC),
        ),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => setState(() {
                  state = !state;
                }),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: state == false ? Colors.white : null,
                  ),
                  child: Text(
                    'My Country',
                    style: TextStyle(
                      color: state == false ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => setState(() {
                  state = !state;
                  print('asdasd');
                }),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: state == true ? Colors.white : null,
                  ),
                  child: Text(
                    'Global',
                    style: TextStyle(
                      color: state == true ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
