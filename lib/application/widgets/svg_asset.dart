import 'package:flutter/material.dart';
import 'package:inventarios/application/widgets/icons.dart';

// ejecutar en la terminal flutter pub add flutter_svg
import 'package:flutter_svg/svg.dart';

class SvgAsset extends StatelessWidget{
  final AssetName? assetName;
  final double? heigth;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  const SvgAsset(
    {Key? key, this.assetName, this.heigth, this.width, this.fit, this.color})
    : super(key: key);
    @override
    Widget build(BuildContext context){
      return SizedBox(
        height: heigth,
        width: width,
        child: SvgPicture.asset(
          //se cambió assets por aset
          InventariosSvgAssets().asset[assetName]!,
          fit: fit?? BoxFit.cover,
          color: color,
          ),
      );
    }
}