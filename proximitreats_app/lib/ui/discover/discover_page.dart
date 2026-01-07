import 'package:flutter/material.dart';
import 'package:proximitreats/ui/discover/discover_page_view_model.dart';
import 'package:proximitreats/ui/discover/widgets/discover_list_item.dart';
import 'package:proximitreats/utils/sl_listenable_widget.dart';

class DiscoverPage extends SlListenableWidget<DiscoverPageViewModel> {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context, DiscoverPageViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discover Shops')),
      body: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator.adaptive(
              onRefresh: () => viewModel.load(),
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: viewModel.shops.length,
                itemBuilder: (context, index) {
                  final shop = viewModel.shops[index];
                  return DiscoverListItem(
                    shop: shop,
                    onTap: () {
                      // TODO: navigate to detail page
                    },
                  );
                },
              ),
            ),
    );
  }
}
