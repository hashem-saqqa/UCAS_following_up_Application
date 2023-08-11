import 'package:auto_route/annotations.dart';
import 'package:clean_arch/src/domain/models/section.dart';
import 'package:clean_arch/src/util/constants/colors.dart';
import 'package:clean_arch/src/util/constants/strings.dart';
import 'package:clean_arch/src/util/extensions/scroll_controller_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage(name: "Home")
class HomeView extends HookWidget {
  HomeView({super.key});

  List<Section> items = [
    new Section(0, "Automation 101", 30),
    new Section(1, "Automation 102", 27)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: Text(all_sections_title.tr(context)),
      centerTitle: true),
      body: Column(
        children: [
          ListView.builder(
            itemBuilder: (context, position) {
              return Card(
                color: Colors.white,
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                              style: const TextStyle(fontSize: 24),
                              items[position].sectionName),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          child: Text("${items[position].id} Students"),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: items.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: buttonColor.getColor(),
        icon: const Icon(Icons.add),
        label: Text(add_new_section_text.tr(context)),
      ),
    );
  }
}
