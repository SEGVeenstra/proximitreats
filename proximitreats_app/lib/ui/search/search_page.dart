import 'package:flutter/material.dart';
import 'package:proximitreats/ui/search/search_page_view_model.dart';
import 'package:proximitreats/utils/sl_listenable_widget.dart';

class SearchPage extends SlListenableWidget<SearchPageViewModel> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, SearchPageViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Shops'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
            child: TextField(
              controller: viewModel.searchController,
              decoration: InputDecoration(
                hintText: 'Search for shops...',
                suffixIcon: IconButton(
                  onPressed: () => viewModel.search(),
                  icon: const Icon(Icons.search),
                ),
              ),
              onSubmitted: (_) => viewModel.search(),
            ),
          ),
        ),
      ),
      body: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: viewModel.shops.length,
              itemBuilder: (context, index) {
                final shop = viewModel.shops[index];
                return ListTile(
                  leading: shop.image != null
                      ? Image.network(shop.image!)
                      : const Icon(Icons.store),
                  title: Text(shop.name),
                  subtitle: Text(shop.description),
                );
              },
            ),
    );
  }
}
