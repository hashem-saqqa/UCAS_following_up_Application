import 'package:auto_route/auto_route.dart';
import 'package:clean_arch/src/util/constants/strings.dart';
import 'package:clean_arch/src/util/constants/colors.dart';
import 'package:clean_arch/src/util/extensions/scroll_controller_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../util/constants/images.dart';

@RoutePage(name: "authScreen")
class AuthScreenView extends HookWidget {
  const AuthScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery
              .sizeOf(context)
              .width,
          child: Image.asset(
              width: 150,
              height: 150,
              ucas_logo.getFullPath(),
              fit: BoxFit.cover),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          child: DefaultTextStyle.merge(
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              child: Text(register_text.tr(context))),
        ),
        const SizedBox(
          height: 50,
        ),
        Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
              Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(),
                    hintText: staff_id_register.tr(context)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(),
                    hintText: Email_register.tr(context)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(),
                    hintText: mobile_number_register.tr(context)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(),
                    hintText: password_register.tr(context)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(),
                    hintText: confirm_password_text.tr(context)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(buttonColor.getColor()),
                foregroundColor: MaterialStateProperty.all(buttonTextColor.getColor()) ,
              )
            ,onPressed: ()
            {},
            child: const Text("Register")),
        const SizedBox(
          height: 50,
        ),
      ]),
    ))]
    )
    ,
    );
  }
}
