import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_temp/core/app/app_locale.dart';
import 'package:first_temp/core/app/app_routes.dart';
import 'package:first_temp/core/app/app_scroll_behavior.dart';
import 'package:first_temp/features/Splash/presentation/views/splash_view.dart';
import 'package:first_temp/features/add_debtor/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_debtor/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/features/settings/presentation/manger/locale/locale_manger_cubit.dart';
import 'package:first_temp/features/settings/presentation/manger/theme/theme_bloc.dart';
import 'package:first_temp/firebase_options.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/app/app_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await Hive.initFlutter();

  // Hive.registerAdapter<DebtModel>(DebtModelAdapter());
  // Hive.registerAdapter<DobterModel>(DobterModelAdapter());
  // Hive.registerAdapter<InstallmentModel>(InstallmentModelAdapter());
  // Hive.registerAdapter<Paymentlist>(PaymentlistAdapter());
  // Hive.registerAdapter<ProductModel>(ProductModelAdapter());
  // await Hive.openBox(HiveConstants.installment);

  Bloc.observer = SimpleBlocObserver();

  runApp(
    // const MainApp(),
    DevicePreview(
      enabled: kReleaseMode,
      // enabled: !kReleaseMode,
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
                // initialRoute: Home.id,
                initialRoute: SplashView.id,
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
