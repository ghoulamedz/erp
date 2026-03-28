import 'package:RayhanaERP/ui/cards/alert_card.dart';
import 'package:RayhanaERP/ui/cards/efficiency_card.dart';
import 'package:RayhanaERP/ui/cards/machine_card.dart';
import 'package:flutter/material.dart';

class ProductionPage extends StatelessWidget {
  const ProductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Digital Foreman"),
        actions: const [CircleAvatar(radius: 16), SizedBox(width: 12)],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text("FLOOR OPERATIONS", style: TextStyle(fontSize: 12)),
          const SizedBox(height: 8),

          const Text(
            "Active Production Runs",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.filter_list),
                label: const Text("Filter Floor"),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("New Batch"),
              ),
            ],
          ),

          const SizedBox(height: 20),

          const EfficiencyCard(),
          const SizedBox(height: 16),

          const AlertCard(),
          const SizedBox(height: 16),

          const MachineCard(
            title: "Injection Mold A",
            status: "RUNNING",
            progress: 0.75,
          ),

          const SizedBox(height: 12),

          const MachineCard(
            title: "Extrusion Line 04",
            status: "WARNING",
            progress: 0.48,
          ),
        ],
      ),
    );
  }
}
