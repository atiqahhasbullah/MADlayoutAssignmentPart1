import 'package:flutter/material.dart';
import 'customization.dart';

class LRScreenBody extends StatefulWidget {
  @override
  _SensorScreenBodyState createState() => _SensorScreenBodyState();
}

class _SensorScreenBodyState extends State<LRScreenBody> {
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
                    Icons.lightbulb_rounded,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "LIVING ROOM LIGHTS",
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
                    Icons.apple_rounded,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "APPLE TV",
                  statusOn: "• ON",
                  statusOff: "• OFF",
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
                    Icons.wifi_rounded,
                    size: 50,
                    color: Colors.grey.shade800,
                  ),
                  title: "WIFI",
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
