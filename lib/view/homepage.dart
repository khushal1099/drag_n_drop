import 'package:drag_n_drop/controller/puzzle_provider.dart';
import 'package:drag_n_drop/model/puzzle_model.dart';
import 'package:drag_n_drop/util.dart';
import 'package:drag_n_drop/view/puzzlepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDone = false;
  bool isDart = false;
  bool onMove = true;

  @override
  void initState() {
    var p = Provider.of<PuzzleProvider>(context, listen: false);
    p.getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Drag N Drop"),
    //   ),
    //   body: Stack(
    //     children: [
    //       Positioned(
    //         top: 100,
    //         left: 20,
    //         child: Column(
    //           children: [
    //             if(onMove)
    //             Draggable(
    //               child: Container(
    //                 width: 100,
    //                 height: 100,
    //                 color: Colors.blue,
    //                 child: Center(child: Text('Drag me')),
    //               ),
    //               feedback: Container(
    //                 width: 100,
    //                 height: 100,
    //                 color: Colors.blue.withOpacity(0.5),
    //                 child: Center(child: Text('Dragging...')),
    //               ),
    //               onDragCompleted: () {
    //                 setState(() {
    //                   onMove = false;
    //                 });
    //               },
    //               childWhenDragging: Container(),
    //               // Optional child when dragging
    //               data:
    //                   'MyDraggableItem', // Data to be transferred to DragTargets
    //             ),
    //             Draggable(
    //               childWhenDragging: Container(),
    //               onDragCompleted: () {},
    //               child: Container(
    //                 child: Text("Flutter"),
    //                 padding: EdgeInsets.all(10),
    //                 margin: EdgeInsets.all(10),
    //                 decoration: BoxDecoration(
    //                     color: Colors.red,
    //                     borderRadius: BorderRadius.circular(10)),
    //               ),
    //               feedback: Container(
    //                 child: Text(
    //                   "Flutter",
    //                   style: Theme.of(context).textTheme.bodyText1,
    //                 ),
    //                 padding: EdgeInsets.all(10),
    //                 margin: EdgeInsets.all(10),
    //                 decoration: BoxDecoration(
    //                     color: Colors.red,
    //                     borderRadius: BorderRadius.circular(10)),
    //               ),
    //               data: "Flutter",
    //             ),
    //             Draggable(
    //               child: Container(
    //                 child: Text("Dart"),
    //                 padding: EdgeInsets.all(10),
    //                 margin: EdgeInsets.all(10),
    //                 decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10),
    //                 ),
    //               ),
    //               feedback: Container(
    //                 child: Text(
    //                   "Dart",
    //                   style: Theme.of(context).textTheme.bodyText1,
    //                 ),
    //                 padding: EdgeInsets.all(10),
    //                 margin: EdgeInsets.all(10),
    //                 decoration: BoxDecoration(
    //                   color: Colors.red,
    //                   borderRadius: BorderRadius.circular(10),
    //                 ),
    //               ),
    //               data: "Dart",
    //             )
    //           ],
    //         ),
    //       ),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           SizedBox(height: 50),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               DragTarget(
    //                 onAccept: (data) {
    //                   if (data == "Dart") {
    //                     setState(() {
    //                       isDart = true;
    //                     });
    //                   }
    //                   print("onAccept $data ");
    //                 },
    //                 onLeave: (data) {
    //                   print("onLeave $data ");
    //                 },
    //                 onWillAccept: (data) {
    //                   return (data == "Dart");
    //                 },
    //                 builder: (context, candidateData, rejectedData) {
    //                   return Container(
    //                     color: Colors.black12,
    //                     height: 100,
    //                     width: 100,
    //                     child: isDart
    //                         ? Center(
    //                             child: Container(
    //                               child: Text(
    //                                 "Dart Done",
    //                                 style:
    //                                     Theme.of(context).textTheme.bodyText1,
    //                               ),
    //                               padding: EdgeInsets.all(10),
    //                               margin: EdgeInsets.all(10),
    //                               decoration: BoxDecoration(
    //                                   color: Colors.red,
    //                                   borderRadius: BorderRadius.circular(10)),
    //                             ),
    //                           )
    //                         : Text("Dart"),
    //                   );
    //                 },
    //               ),
    //               DragTarget(
    //                 onAccept: (data) {
    //                   if (data == "Flutter") {
    //                     setState(() {
    //                       isDone = true;
    //                     });
    //                   }
    //                   print("onAccept $data ");
    //                 },
    //                 onLeave: (data) {
    //                   print("onLeave $data ");
    //                 },
    //                 onWillAccept: (data) {
    //                   return (data == "Flutter");
    //                 },
    //                 builder: (context, candidateData, rejectedData) {
    //                   return Container(
    //                     color: Colors.black12,
    //                     height: 100,
    //                     width: 100,
    //                     child: isDone
    //                         ? Center(
    //                             child: Container(
    //                               child: Text(
    //                                 "HELLO",
    //                                 style:
    //                                     Theme.of(context).textTheme.bodyText1,
    //                               ),
    //                               padding: EdgeInsets.all(10),
    //                               margin: EdgeInsets.all(10),
    //                               decoration: BoxDecoration(
    //                                   color: Colors.red,
    //                                   borderRadius: BorderRadius.circular(10)),
    //                             ),
    //                           )
    //                         : Text("Flutter"),
    //                   );
    //                 },
    //               ),
    //               DragTarget(
    //                 // onAccept: (data) {
    //                 //   isDone = true;
    //                 //   print(data);
    //                 // },
    //                 onMove: (details) {
    //                   isDone = true;
    //                 },
    //                 onLeave: (data) {
    //                   print(data);
    //                 },
    //                 onWillAccept: (data) {
    //                   return true;
    //                 },
    //                 builder: (context, candidateData, rejectedData) {
    //                   return Container(
    //                     color: Colors.black12,
    //                     height: 100,
    //                     width: 100,
    //                     child: isDone
    //                         ? Center(
    //                             child: Container(
    //                               child: Text(
    //                                 "Done",
    //                                 style:
    //                                     Theme.of(context).textTheme.bodyText1,
    //                               ),
    //                               padding: EdgeInsets.all(10),
    //                               margin: EdgeInsets.all(10),
    //                               decoration: BoxDecoration(
    //                                   color: Colors.red,
    //                                   borderRadius: BorderRadius.circular(10)),
    //                             ),
    //                           )
    //                         : Text("data"),
    //                   );
    //                 },
    //               )
    //             ],
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag N Drop"),
        centerTitle: true,
      ),
      body: Consumer<PuzzleProvider>(builder: (context, pp, child) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 1.0,
          ),
          itemBuilder: (context, index) {
            var pl = pp.puzzlelist[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PuzzlePage(puzzle: pl.puzzle);
                    },
                  ),
                );
              },
              child: Container(
                color: Colors.grey[300],
                child: Image.asset(
                  pl.image ?? "",
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          itemCount: pp.puzzlelist.length,
        );
      }),
    );
  }
}
