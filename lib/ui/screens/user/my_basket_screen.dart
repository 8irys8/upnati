import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/ui/widgets/basket_tile.dart';

class MyBasketScreen extends StatefulWidget {
  const MyBasketScreen({Key? key}) : super(key: key);

  @override
  State<MyBasketScreen> createState() => _MyBasketScreenState();
}

class _MyBasketScreenState extends State<MyBasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.chevron_right_outlined, size: 40))
          ],
          title: Text(
            LocaleKeys.basket_info_my_basket.tr(),
            style: AppTheme.bold(size: 18, color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 26,
                ),
                const BasketTile(),
                const SizedBox(
                  height: 10,
                ),
                const BasketTile(),
              ],
            ),
          ),
        ));
  }
}
