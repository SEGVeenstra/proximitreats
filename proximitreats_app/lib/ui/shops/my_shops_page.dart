import 'package:flutter/material.dart';
import 'package:proximitreats/i18n/strings.g.dart';
import 'package:proximitreats/ui/shops/my_shops_page_view_model.dart';
import 'package:proximitreats/ui/shops/widgets/shop_list_item.dart';
import 'package:proximitreats/utils/get_it_listenable_widget.dart';

class MyShopsPage
    extends GetItListenableWidget<MyShopsPageViewModel, void, void> {
  const MyShopsPage({super.key});

  @override
  Widget build(BuildContext context, MyShopsPageViewModel viewModel) {
    final Widget body;

    if (viewModel.isLoading) {
      body = const Center(child: CircularProgressIndicator.adaptive());
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
      body = ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final shop in viewModel.shops)
            ShopListItem(shop: shop, onTap: () {}),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(context.t.shops.myShopsPage.title)),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
