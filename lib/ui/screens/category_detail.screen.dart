import 'package:flutter/material.dart';
import 'package:multimedia_app/ui/widgets/video_player.widget.dart';
import 'package:multimedia_app/view_models/home.view_model.dart';
import 'package:stacked/stacked.dart';

class CategoryDetailScreen extends StackedView<HomeViewModel> {
  const CategoryDetailScreen({super.key});

  @override
  Widget builder(
          BuildContext context, HomeViewModel viewModel, Widget? child) =>
      Scaffold(
        appBar: AppBar(
          title: const Text('Category Details'),
        ),
        body: viewModel.isBusy
            ? const Center(child: CircularProgressIndicator())
            : viewModel.errorMessage != null
                ? Center(child: Text(viewModel.errorMessage!))
                : viewModel.video == null
                    ? const Center(child: Text('No details available'))
                    : SingleChildScrollView(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (viewModel.video!.avatar != null)
                              Image.network(viewModel.video!.avatar!),
                            const SizedBox(height: 16.0),
                            Text(
                              viewModel.video!.name ?? 'No name available',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              viewModel.video!.resumeDescription ??
                                  'No description available',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              'Email: ${viewModel.video!.email ?? 'No email available'}',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              'Created At: ${viewModel.video!.createdAt ?? 'No date available'}',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              'Type Audience: ${viewModel.video!.typeAudience ?? 'No type audience available'}',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 16.0),
                            if (viewModel.video!.videoUrl != null)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Video:',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8.0),
                                  AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: VideoPlayerWidget(
                                        url: viewModel.video!.videoUrl!),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
      );

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
