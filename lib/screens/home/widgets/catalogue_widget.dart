import 'package:flutter/material.dart';
import 'package:flutter_playground/datasource/product_remote_datasource.dart';
import 'package:flutter_playground/models/product_model.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'catalogue_list_item.dart';

class CatalogueWidget extends StatefulWidget {
  const CatalogueWidget({Key? key}) : super(key: key);

  @override
  State<CatalogueWidget> createState() => _CatalogueWidgetState();
}

class _CatalogueWidgetState extends State<CatalogueWidget> {
  late ProductModelDataSource _remoteDataSource;

  @override
  void initState() {
    super.initState();
    _remoteDataSource = ProductModelDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: _remoteDataSource.getProductRemoteData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            crossAxisCount: 4,
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return CatalogueListItem(product: snapshot.data![index]);
            },
            staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
            mainAxisSpacing: 8,
            crossAxisSpacing: 12,
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const Center(
            child: Text('Error'),
          );
        }
      },
    );
  }
}
