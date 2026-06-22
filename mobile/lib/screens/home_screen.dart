import 'package:flutter/material.dart';

import '../config/app_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VoltPassNG'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.ev_station,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                'Find & pay for EV charging in Nigeria',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 32),
              FilledButton.icon(
                onPressed: () {
                  // TODO: navigate to station map
                },
                icon: const Icon(Icons.map),
                label: const Text('Find stations'),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () {
                  // TODO: navigate to wallet / Paystack top-up
                },
                icon: const Icon(Icons.account_balance_wallet),
                label: const Text('My wallet'),
              ),
              const SizedBox(height: 48),
              Text(
                'API: ${AppConfig.apiBaseUrl}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
