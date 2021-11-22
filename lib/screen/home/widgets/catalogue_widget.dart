import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'catalogue_list_item.dart';

class CatalogueWidget extends StatelessWidget {
  const CatalogueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      crossAxisCount: 4,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => const CatalogueListItem(),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
      mainAxisSpacing: 8,
      crossAxisSpacing: 12,
    );
  }
}
