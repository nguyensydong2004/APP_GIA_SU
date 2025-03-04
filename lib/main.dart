import 'package:app_education/bloc/auth/auth.bloc.dart';
import 'package:app_education/bloc/font/font_bloc.dart';
import 'package:app_education/core/theme/app_theme.dart';
import 'package:app_education/routes/app_routes.dart';
import 'package:app_education/routes/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:app_education/services/storage_service.dart';
import 'package:app_education/views/onboarding/onboarding_screen.dart';
import 'package:get_storage/get_storage.dart';

import 'bloc/font/font_state.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  await StorageService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<FontBloc>(
          create: (context) =>FontBloc()
      ),
      BlocProvider<AuthBloc>(
          create: (context) =>AuthBloc()
      ),
    ],
        child: BlocBuilder<FontBloc, FontState>(
            builder: (context, fontState){
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'E-Learning App',
                theme: AppTheme.getLightTheme(fontState),
                themeMode: ThemeMode.light,
                initialRoute: AppRoutes.splash,
                onGenerateRoute: AppRoutes.onGenerateRoute,
                getPages: AppPages.pages,
              );
            })
    );
  }
}
