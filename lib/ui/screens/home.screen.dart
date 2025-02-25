import 'package:flutter/material.dart';
import 'package:multimedia_app/view_models/home.view_model.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StackedView<HomeViewModel> {
  const HomeScreen({super.key});

  @override
  Widget builder(
          BuildContext context, HomeViewModel viewModel, Widget? child) =>
      Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
        ),
        body: viewModel.isBusy
            ? const Center(child: CircularProgressIndicator())
            : viewModel.errorMessage != null
                ? Center(child: Text(viewModel.errorMessage!))
                : ListView.builder(
                    itemCount: viewModel.categories.length,
                    itemBuilder: (context, index) {
                      final category = viewModel.categories[index];
                      return ListTile(
                        title: Text(category.title ?? 'nulo'),
                        subtitle: Text(category.type ?? 'nulo'),
                        leading: Image.network(category.image ?? 'nulo'),
                        onTap: () => viewModel.fetchCategoryDetails(
                            context, category.url ?? ''),
                      );
                    },
                  ),
      );

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
