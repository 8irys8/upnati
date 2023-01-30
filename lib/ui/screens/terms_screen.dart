import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/resources/resource.dart';

class TermsScreen extends StatefulWidget with AutoRouteWrapper {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  State<TermsScreen> createState() => _TermsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<UserCubit>(),
      child: this,
    );
  }
}

class _TermsScreenState extends State<TermsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getTerms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(right: 30),
          icon: const Icon(
            Icons.close_outlined,
            size: 26,
          ),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 33),
                  child: Center(
                    child: Text(
                      LocaleKeys.onboard_for_full_regulation.tr(),
                      style:
                          AppTheme.regular(size: 17, color: AppColors.darkBlue),
                    ),
                  ),
                ),
                BlocListener<UserCubit, UserState>(
                  listener: (context, state) {
                    state.whenOrNull(error: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Something went wrong'),
                        ),
                      );
                    });
                  },
                  child: BlocBuilder<UserCubit, UserState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          loading: () => const Center(
                                child: SpinKitCircle(
                                    color: AppColors.darkBlueLight),
                              ),
                          successInfoState: (response) => Text(
                                response.value ?? '',
                                textAlign: TextAlign.center,
                                style: AppTheme.regular(
                                    size: 17, color: AppColors.darkBlue),
                              ),
                          orElse: () => const SizedBox());
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
