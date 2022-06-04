import 'package:flutter/material.dart';
import 'customization.dart';

class SensorScreenBody extends StatefulWidget {
  @override
  _SensorScreenBodyState createState() => _SensorScreenBodyState();
}

class _SensorScreenBodyState extends State<SensorScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.010),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.power_rounded,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "INDOOR PLUG",
                  statusOn: "• ON",
                  statusOff: "• OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.garage_rounded,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "GARAGE LIGHTS",
                  statusOn: "• ON",
                  statusOff: "• OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.017),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.door_sliding_rounded,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "FRONT GATE",
                  statusOn: "• OPEN",
                  statusOff: "• CLOSED",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.speaker,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "SOUNDBAR",
                  statusOn: "• ON",
                  statusOff: "• OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.017),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.tv_rounded,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "TELEVISION",
                  statusOn: "• ON",
                  statusOff: "• OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.ac_unit_rounded,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "AC LIVING ROOM",
                  statusOn: "• ON",
                  statusOff: "• OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.017),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.air_rounded,
                    size: 55,
                    color: Colors.grey.shade800,
                  ),
                  title: "AIR PURIFIER",
                  statusOn: "• ON",
                  statusOff: "• OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.ac_unit_rounded,
                    size: 55,
                    color: Colors.grey.shade800,
                  ),
                  title: "AC BEDROOM",
                  statusOn: "• ON",
                  statusOff: "• OFF",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
