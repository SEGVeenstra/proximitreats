import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:listenable_widget/listenable_widget.dart';
import 'package:proximitreats/i18n/strings.g.dart';
import 'package:proximitreats/service_locator.dart';
import 'package:proximitreats/ui/shops/shop_detail_page_view_model.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

class ShopDetailPage extends ListenableWidget<ShopDetailPageViewModel> {
  const ShopDetailPage({super.key, required this.shopId});

  final UuidValue shopId;

  @override
  ShopDetailPageViewModel create(BuildContext context) {
    return sl<ShopDetailPageViewModel>(param1: shopId);
  }

  @override
  Widget build(BuildContext context, ShopDetailPageViewModel viewModel) {
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
    } else if (viewModel.shop == null) {
      body = Center(
        child: Text(context.t.shops.shopDetailPage.errors.shopNotFound),
      );
    } else {
      final shop = viewModel.shop!;
      body = RefreshIndicator.adaptive(
        onRefresh: () => viewModel.load(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              // Shop Image
              if (shop.image != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: shop.image!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                )
              else
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceBright,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(Icons.store, size: 80),
                ),

              // Shop Name
              Text(
                shop.name,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              // Shop Intro
              if (shop.intro.isNotEmpty) ...[
                Text(
                  shop.intro,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const Gap(8),
              ],

              // Shop Description
              Text(
                shop.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(context.t.shops.shopDetailPage.title)),
      body: body,
    );
  }
}
