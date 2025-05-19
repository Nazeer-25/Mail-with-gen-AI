import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skybox Capstone'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer<HomeViewModel>(
            builder: (context, viewModel, child) {
              return Text(
                viewModel.text,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              );
            },
          ),
        ),
      ),
    );
  }
} 