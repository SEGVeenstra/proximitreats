import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proximitreats/i18n/strings.g.dart';
import 'package:proximitreats/ui/discover/discover_page_view_model.dart';
import 'package:proximitreats/ui/discover/widgets/discover_list_item.dart';
import 'package:proximitreats/utils/sl_listenable_widget.dart';

class DiscoverPage extends SlListenableWidget<DiscoverPageViewModel> {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context, DiscoverPageViewModel viewModel) {
    final Widget body;

    if (viewModel.isLoading) {
      body = Center(child: CircularProgressIndicator.adaptive());
    } else if (viewModel.error != null) {
      body = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            Text(viewModel.error!),
            FilledButton(
              onPressed: viewModel.load,
              child: Text(context.t.common.actions.tryAgain),
            ),
          ],
        ),
      );
    } else {
      body = RefreshIndicator.adaptive(
        onRefresh: () => viewModel.load(),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: viewModel.shops.length,
          itemBuilder: (context, index) {
            final shop = viewModel.shops[index];
            return DiscoverListItem(
              shop: shop,
              onTap: () {
                context.push('/search/shop/${shop.id}');
              },
            );
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(context.t.discover.discoverPage.title)),
      body: body,
    );
  }
}
