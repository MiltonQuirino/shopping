import 'package:flutter/material.dart';
import 'package:shopping/widgets/animated-input.widget.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool menuOpened = false;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Text("search"),
        AnimetedInput(controller: _controller),
        TextButton(
          onPressed: () {
            !menuOpened ? _controller.forward() : _controller.reverse();
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.search_ellipsis,
            progress: _controller,
            semanticLabel: 'Open Menu',
          ),
        ),
      ],
    );
  }
}


// Container(
//       height: 40,
//       padding: EdgeInsets.only(
//         left: 20,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.1),
//         borderRadius: BorderRadius.all(
//           Radius.circular(128),
//         ),
//       ),
//       child: Row(children: [
//         Icon(Icons.search),
//         Container(
//           width: 200,
//           padding: EdgeInsets.only(left: 10),
//           child: TextFormField(
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               border: InputBorder.none,
//               labelText: "Search ...",
//               labelStyle: TextStyle(
//                 color: Theme.of(context).colorScheme.primary,
//                 fontWeight: FontWeight.w300,
//                 fontSize: 16,
//               ),
//             ),
//             style: TextStyle(
//               fontSize: 20,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),
//         )

//         // Text("Search"),
//       ]),
//     );