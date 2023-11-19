import 'package:device_preview/device_preview.dart';
import 'package:first_temp/constent.dart';
import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/features/home/data/models/debt_type_adabtoe.dart';
import 'package:first_temp/features/home/data/models/dobter_type_adabter.dart';
import 'package:first_temp/features/home/data/models/paymantlist_type_adapter.dart';
import 'package:first_temp/features/home/data/models/product_type_adapter.dart';
import 'package:first_temp/features/home/presentation/view/home.dart';

import 'package:first_temp/test/presentation/manger/read/read_cubit.dart';
import 'package:first_temp/test/presentation/manger/write/write_cubit.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_temp/core/app/app_locale.dart';
import 'package:first_temp/core/app/app_routes.dart';
import 'package:first_temp/core/app/app_scroll_behavior.dart';

import 'package:first_temp/features/settings/presentation/manger/locale/locale_manger_cubit.dart';
import 'package:first_temp/features/settings/presentation/manger/theme/theme_bloc.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/app/app_observer.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // Hive.openBox(HiveConstants.wordBox);
  // Hive.registerAdapter(WordTypeAdapter());

  await Hive.openBox(HiveConstants.installment);

  Hive.registerAdapter(InstallmentTypeAdapter());
  Hive.registerAdapter(DebtTypeAdapter());
  Hive.registerAdapter(ProductTypeAdapter());
  Hive.registerAdapter(PaymantlistTypeAdaper());
  Bloc.observer = SimpleBlocObserver();

  runApp(
    // const MainApp(),
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MainApp(), // Wrap your app
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocaleMangerCubit>(
          create: (context) => LocaleMangerCubit()..getCacheLocale(),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc()..add(GetCurrentThemeEvent()),
        ),
        BlocProvider(
          create: (context1) => WriteCubit(),
        ),
        BlocProvider(
          create: (context1) => ReadCubit()..getWords(),
        ),
        BlocProvider(
          create: (context1) => WriteDebtorCubit(),
        ),
        BlocProvider(
          create: (context1) => ReadDebtorCubit()..getDebtor(),
        ),
      ],
      child: BlocBuilder<LocaleMangerCubit, LocaleMangerState>(
        builder: (context, locale) {
          return BlocBuilder<ThemeBloc, LoadedThemeState>(
            builder: (context, theme) {
              return MaterialApp(
                // localization
                localizationsDelegates: localizationsDelegates,
                supportedLocales: S.delegate.supportedLocales,
                locale: locale.locale,
                // locale: DevicePreview.locale(context),
                //settings
                debugShowCheckedModeBanner: false,
                scrollBehavior: AppScrollBehavior(),
                builder: DevicePreview.appBuilder,
                //routes
                routes: routes,
                initialRoute: Home.id,
                //theme
                theme: theme.themeData?.copyWith(
                  textTheme: GoogleFonts.poppinsTextTheme(
                    Theme.of(context).textTheme,
                  ),
                  // appBarTheme: const AppBarTheme(
                  //   centerTitle: true,
                  // ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
