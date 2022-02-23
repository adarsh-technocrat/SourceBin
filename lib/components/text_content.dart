import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:source_bin/constants/colors.dart';

class TextContent extends StatelessWidget {
  const TextContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            const TextField(
              style: TextStyle(
                color: ConstColors.kTitleTextColor,
                fontSize: 38,
              ),
              cursorColor: ConstColors.kTitleTextColor,
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Title",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: ConstColors.kTitleTextColor,
                  fontSize: 38,
                ),
              ),
            ),
            const TextField(
              style: TextStyle(
                color: ConstColors.kDescriptionTextColor,
                fontSize: 22,
              ),
              cursorColor: ConstColors.kDescriptionTextColor,
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Description",
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: ConstColors.kDescriptionTextColor,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: const [
                              Icon(
                                FluentIcons.calendar_today_28_regular,
                                color: ConstColors.kTitleTextColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Today",
                                style: TextStyle(
                                    color: ConstColors.kTitleTextColor),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(20)),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(
                                  FluentIcons.copy_24_regular,
                                  color: ConstColors.kTitleTextColor,
                                ),
                                Text(
                                  "Copy",
                                  style: TextStyle(
                                      color: ConstColors.kTitleTextColor),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const TextField(
                    style: TextStyle(
                      color: ConstColors.kTitleTextColor,
                      fontSize: 16,
                    ),
                    cursorColor: ConstColors.kTitleTextColor,
                    maxLines: 22,
                    decoration: InputDecoration(
                      hintText: "Code",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: ConstColors.kDescriptionTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
