import 'package:flutter/material.dart';

class PuzzlePage extends StatefulWidget {
  List<String>? puzzle;

  PuzzlePage({super.key, required this.puzzle});

  @override
  State<PuzzlePage> createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {

  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puzzle"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 1.0,
              ),
              itemBuilder: (context, index) {
                return Draggable(
                  feedback: Container(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    color: Colors.grey[300],
                    child: Image.asset(
                      "${widget.puzzle![index]}",
                      fit: BoxFit.cover,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.3,
                    ),
                  ),
                  child: Container(
                    color: Colors.grey[300],
                    child: Image.asset(
                      "${widget.puzzle![index]}",
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
              itemCount: widget.puzzle?.length,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            height: MediaQuery.sizeOf(context).height * 0.3,
            width: MediaQuery.sizeOf(context).width * 0.9,
            color: Colors.grey,
            child: Row(
              children: [
                Column(
                  children: [
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text("Puzzle"),
                        );
                      },
                      onAccept: (data) {
                        isDone = true;
                      },
                      onWillAccept: (data) {
                        return true;
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
