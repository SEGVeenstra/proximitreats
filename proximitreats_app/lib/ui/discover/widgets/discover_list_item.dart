import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:proximitreats_client/proximitreats_client.dart';

class DiscoverListItem extends StatelessWidget {
  const DiscoverListItem({super.key, required this.shop, this.onTap});

  final Shop shop;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            spacing: 12,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).colorScheme.surfaceBright,
                ),
                child: (shop.image != null)
                    ? CachedNetworkImage(
                        imageUrl: shop.image!,
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                      )
                    : const Icon(Icons.store, size: 56),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shop.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Gap(8),
                    Text(
                      shop.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
