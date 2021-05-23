import 'package:flutter/material.dart';

class RecentWork {
  final String image, category, title;
  final Color color;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title, this.color});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title:
        "This is a python implementation of RISC-V 32bit ISA.\nSalient Features:-\n1. Can be extended to support more instructions.\n2. Assembly to machine code conversion.\n 3. Dedicated text editor with syntax highlighthing.",
    category: "RISC-V Simulator",
    image: "assets/images/work_1.png",
    color: Colors.redAccent,
  ),
  RecentWork(
    id: 2,
    title:
        "It is a arcade game collection, consisting of games such as minesweeper, hangman and snake. Built using Flutter the game also has a leader-board and user feature. The app focuses on extensibility and clean architecture.",
    category: "The Game Dome",
    image: "assets/images/work_1.png",
    color: Colors.limeAccent,
  ),
  RecentWork(
      id: 3,
      title:
          "This project covers the implementation of advanced graph algorithms such as Johnson's algorithm and Endmund's branching algorithm. It also covers implementation of fibonacci and binomial trees.",
      category: "Graph Theory Analysis",
      image: "assets/images/work_1.png",
      color: Colors.blueAccent),
  RecentWork(
      id: 4,
      title:
          "A FPGA(Field Programming Gate Arrays) is an integrated circuit which can be configured by the user to achieve multiple functionalities. This project is a verilog implementation of one such FPGA hardware which can work as a MUX, 8-bit shift register, and a 4-bit adder.",
      category: "FPGA",
      image: "assets/images/work_1.png",
      color: Colors.pinkAccent),
];
