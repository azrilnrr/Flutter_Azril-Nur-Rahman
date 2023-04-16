import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_27/view_model/food_view_model.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<FoodViewModel>(context, listen: false);
      await viewModel.getAllFood();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<FoodViewModel>(context);

    final isLoading = modelView.state == FoodViewState.loading;
    final isError = modelView.state == FoodViewState.error;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (isError) {
      return const Center(child: Text('Gagal mengambil data'));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: modelView.foods.length,
        itemBuilder: (BuildContext context, int index) {
          final food = modelView.foods[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(food.name[0]),
            ),
            title: Text(food.name),
          );
        },
      ),
    );
  }
}
