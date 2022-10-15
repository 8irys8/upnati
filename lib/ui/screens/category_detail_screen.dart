import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/add_empty_product_container.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/search_field.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class CategoryDetailScreen extends StatefulWidget with AutoRouteWrapper {
  const CategoryDetailScreen({Key? key}) : super(key: key);

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.I<BusinessCubit>(), child: this);
  }
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: CustomNavigatorBar(
            // initialIndex: 0,
            ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 7, left: 37, right: 37),
                  child: SearchField(),
                ),
                Text('מוצרי חשמל', style: AppTheme.bold(size: 25)),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, right: 9, bottom: 36),
                  child: Row(
                    children: const [
                      Expanded(
                          child: AddEmptyProductContainer(
                        title: 'מוצרים חדשים',
                        desc:
                            'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סלעציץ רוברט  סט 3 עציצים דגם24  ',
                        price: '350',
                        image:
                            'https://img2.akspic.ru/previews/5/8/2/8/6/168285/168285-astronavt-risovanie-kosmos-kosmicheskoe_prostranstvo-multfilm-500x.jpg',
                      )),
                      SizedBox(
                        width: 45,
                      ),
                      Expanded(
                          child: AddEmptyProductContainer(
                        title: 'מוצרים ',
                        image:
                            'https://img2.akspic.ru/previews/5/8/2/8/6/168285/168285-astronavt-risovanie-kosmos-kosmicheskoe_prostranstvo-multfilm-500x.jpg',
                        price: '200',
                        desc:
                            'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סל קש  גובה 24 ',
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, right: 9, bottom: 36),
                  child: Row(
                    children: const [
                      Expanded(
                          child: AddEmptyProductContainer(
                        title: 'מוצרים',
                        image:
                            'https://img2.akspic.ru/previews/5/8/2/8/6/168285/168285-astronavt-risovanie-kosmos-kosmicheskoe_prostranstvo-multfilm-500x.jpg',
                        desc: 'עציץ רוברט  סט 24',
                        price: '1000',
                      )),
                      SizedBox(
                        width: 45,
                      ),
                      Expanded(
                          child: AddEmptyProductContainer(
                        title: 'אייפון 13',
                        desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                        price: '120',
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, right: 9, bottom: 36),
                  child: Row(
                    children: const [
                      Expanded(
                          child: AddEmptyProductContainer(
                        image:
                            'https://img2.akspic.ru/previews/5/8/2/8/6/168285/168285-astronavt-risovanie-kosmos-kosmicheskoe_prostranstvo-multfilm-500x.jpg',
                        title: 'מוצרים ',
                        price: '10',
                        desc:
                            'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סל קש  גובה 24 ',
                      )),
                      SizedBox(
                        width: 45,
                      ),
                      Expanded(
                          child: AddEmptyProductContainer(
                        title: 'מוצרים חדשים',
                        price: '15',
                        image:
                            'https://img2.akspic.ru/previews/5/8/2/8/6/168285/168285-astronavt-risovanie-kosmos-kosmicheskoe_prostranstvo-multfilm-500x.jpg',
                        desc:
                            'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סלעציץ רוברט  סט 3 עציצים דגם24  ',
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
