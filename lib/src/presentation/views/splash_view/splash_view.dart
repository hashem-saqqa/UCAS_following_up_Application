import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:clean_arch/src/util/extensions/scroll_controller_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../config/app_router.dart';
import '../../../util/constants/images.dart';

@RoutePage(name: "splash")
class SplashView extends HookWidget {
  const SplashView({super.key});


  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 3), () {
      context.router.replace(const AuthScreen());
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Image.asset(
                width: 200, height: 200, ucas_logo.getFullPath()),
          ),
          const SizedBox(height: 100,),
          const CircularProgressIndicator()
        ],
      ),
    );
  }
}
