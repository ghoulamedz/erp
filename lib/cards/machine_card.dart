import 'package:flutter/material.dart';

class MachineCard extends StatelessWidget {
  final String title;
  final String status;
  final double progress;

  const MachineCard({
    super.key,
    required this.title,
    required this.status,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor = status == "RUNNING" ? Colors.green : Colors.orange;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Chip(
                  label: Text(status),
                  backgroundColor: statusColor.withOpacity(0.1),
                ),
              ],
            ),

            const SizedBox(height: 12),

            LinearProgressIndicator(value: progress),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Pause"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Report Issue"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
