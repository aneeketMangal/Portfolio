import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Shared/const/const.dart';
import 'package:portfolio/Shared/ui/style.dart';
import 'package:portfolio/Shared/widgets/components/recent.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 450,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ProjectTile(isHover, widget.index),
              ProjectTileHelper(isHover, widget.index),
            ],
          )),
    );
  }
}

class ProjectTileHelper extends StatelessWidget {
  final int index;
  final bool isHover;
  ProjectTileHelper(this.isHover, this.index);
  @override
  Widget build(BuildContext context) {
    if (!isHover) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
      );
    }
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 600,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  recentWorks[index].color.withOpacity(0.2),
                  Colors.transparent,
                ],
              )),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Text(
                    recentWorks[index].category.toUpperCase(),
                    style: h4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2),
                  child: Text(
                    recentWorks[index].title,
                    style: h5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final int index;
  final bool isHover;
  ProjectTile(this.isHover, this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue.withOpacity(0.1)),
          height: 350,
          width: 400,
        ),
        // child:
        //     Image.asset(recentWorks[index].image, height: 350, width: 100)),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          recentWorks[index].category.toUpperCase(),
          style: h4,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
      ],
    );
  }
}
