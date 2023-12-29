import 'package:flutter/material.dart';
import 'package:tec/extension/responsive.dart';
// import 'package:tech2/extensions/responsive_size.dart';

class Options extends StatelessWidget {
  final List<String> images;
  final List<String> items;

  const Options({super.key, required this.images, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.width(120),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: context.width(14),
          );
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: context.width(8)),
            width: context.width(83),
            height: context.width(103),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: context.width(83),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 229, 229),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset(images[index]),
                  ),
                ),
                SizedBox(
                  height: context.width(5),
                ),
                Text(
                  items[index],
                  style: TextStyle(
                    color: const Color(0xff666464),
                    fontSize: context.width(12),
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
