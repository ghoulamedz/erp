import 'package:RayhanaERP/ui/cards/info_box.dart';
import 'package:flutter/material.dart';

class EfficiencyCard extends StatelessWidget {
  const EfficiencyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Shift Efficiency"),
            const SizedBox(height: 10),

            const Text(
              "92.4%",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            LinearProgressIndicator(
              value: 0.92,
              borderRadius: BorderRadius.circular(10),
            ),

            const SizedBox(height: 16),

            Row(
              children: const [
                Expanded(
                  child: InfoBox(title: "TOTAL UNITS", value: "142,090"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: InfoBox(title: "ACTIVE LINES", value: "14/16"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
