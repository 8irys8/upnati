import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/main_container.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class MessageScreen extends StatefulWidget with AutoRouteWrapper {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<UserCubit>(),
      child: this,
    );
  }
}

class _MessageScreenState extends State<MessageScreen> {
  bool? isRead = false;

  @override
  void initState() {
    super.initState();
    context
        .read<UserCubit>()
        .getNotifications(pageOrder: SortType.ASC.name, size: 10000);
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.chevron_right_outlined, size: 40))
          ],
          title: Column(
            children: [
              Image.asset(
                Images.icBellBlue,
                height: 26,
              ),
              Text(
                LocaleKeys.user_info_messages.tr(),
                style: AppTheme.bold(size: 13),
              ),
            ],
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: const CustomNavigatorBar(),
        body: SafeArea(
            child: DefaultTabController(
          length: 2,
          child: BlocListener<UserCubit, UserState>(
            listener: (context, state) {
              state.whenOrNull(
                errorUserState: (err) {
                  if (err.error is AppExceptions) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(err.message ?? ''),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Something went wrong'),
                      ),
                    );
                  }
                },
              );
            },
            child: BlocBuilder<UserCubit, UserState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  successNotificationState:
                      (response, countUser, countBusiness) {
                    var listClient = response.content
                        ?.where((el) => el.senderType == SenderType.USER.name)
                        .toList();

                    var listShop = response.content
                        ?.where(
                            (el) => el.senderType == SenderType.BUSINESS.name)
                        .toList();

                    return Column(
                      children: [
                        TabBar(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 60,
                            ),
                            indicator: const UnderlineTabIndicator(
                              borderSide: BorderSide(
                                width: 3.0,
                                color: Color(0xff3DB8C1),
                              ),
                              insets: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10),
                            ),
                            tabs: [
                              Tab(
                                child: Text.rich(
                                  TextSpan(
                                      text:
                                          '${LocaleKeys.user_info_known.tr()} ',
                                      style: AppTheme.regular(size: 16),
                                      children: [
                                        TextSpan(
                                            text:
                                                '${countBusiness?.count == 0 ? '' : (countBusiness?.count ?? '')}',
                                            style: AppTheme.regular(
                                                size: 16, color: AppColors.red))
                                      ]),
                                ),
                              ),
                              Tab(
                                  child: Text.rich(
                                TextSpan(
                                    text:
                                        '${LocaleKeys.user_info_client.tr()} ',
                                    style: AppTheme.regular(size: 16),
                                    children: [
                                      TextSpan(
                                          text:
                                              '${countUser?.count == 0 ? '' : (countUser?.count ?? '')}',
                                          style: AppTheme.regular(
                                              size: 16, color: AppColors.red))
                                    ]),
                              ))
                            ]),
                        Expanded(
                          child: TabBarView(children: [
                            ListView.builder(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 27, right: 27),
                                itemCount: listShop?.length ?? 0,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, left: 10, right: 10),
                                    child: MainContainer(
                                      opacity: .36,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 25),
                                        child: Row(
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: AppColors.gray),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          150)),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(150),
                                                child: listShop?[index]
                                                            .senderImage ==
                                                        null
                                                    ? Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: AppColors.gray,
                                                        ),
                                                        child: Image.asset(
                                                          Images.emptyAvatar,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      )
                                                    : Image.network(
                                                        listShop?[index]
                                                                .senderImage ??
                                                            '',
                                                        fit: BoxFit.cover,
                                                      ),
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                          listShop?[index]
                                                                  .senderName ??
                                                              '',
                                                          style: AppTheme
                                                                  .regular(
                                                                      size: 10)
                                                              .copyWith(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline)),
                                                      Text('ממליצה על ',
                                                          style: AppTheme.bold(
                                                              size: 12,
                                                              color: AppColors
                                                                  .red)),
                                                    ],
                                                  ),
                                                  Text(
                                                      listShop?[index].title ??
                                                          '',
                                                      style: AppTheme.semi(
                                                          size: 14)),
                                                  Text(
                                                      listShop?[index]
                                                              .message ??
                                                          '',
                                                      style: AppTheme.semiLight(
                                                          size: 10)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                            //second page
                            ListView.builder(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 27, right: 27),
                                itemCount: listClient?.length ?? 0,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, left: 10, right: 10),
                                    child: MainContainer(
                                      opacity: .36,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 25),
                                        child: Row(
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: AppColors.gray),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          150)),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(150),
                                                child: listClient?[index]
                                                            .senderImage ==
                                                        null
                                                    ? Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: AppColors.gray,
                                                        ),
                                                        child: Image.asset(
                                                          Images.emptyAvatar,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      )
                                                    : Image.network(
                                                        listClient?[index]
                                                                .senderImage ??
                                                            '',
                                                        fit: BoxFit.cover,
                                                      ),
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                          listClient?[index]
                                                                  .senderName ??
                                                              '',
                                                          style: AppTheme
                                                                  .regular(
                                                                      size: 10)
                                                              .copyWith(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline)),
                                                      Text('ממליצה על ',
                                                          style: AppTheme.bold(
                                                              size: 12,
                                                              color: AppColors
                                                                  .red)),
                                                    ],
                                                  ),
                                                  Text(
                                                      listClient?[index]
                                                              .title ??
                                                          '',
                                                      style: AppTheme.semi(
                                                          size: 14)),
                                                  Text(
                                                      listClient?[index]
                                                              .message ??
                                                          '',
                                                      style: AppTheme.semiLight(
                                                          size: 10)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ]),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ),
        )),
      ),
    );
  }
}
