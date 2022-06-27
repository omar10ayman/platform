import 'package:button/components.dart';
import 'package:flutter/material.dart';

class Words extends StatefulWidget {
  Words({Key? key}) : super(key: key);

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
  @override
  Widget build(BuildContext context) {
    List<DataModel> input = [
      DataModel(
          arbeic: "السلام عليكم",
          asset: "assets/gifs/Good morning.gif",
          english: "Hallo - Hi"),
      DataModel(
          arbeic: "كله تمام", asset: 'assets/gifs/Fine.gif', english: "fine"),
      DataModel(
          arbeic: " اسمك ايه",
          asset: "assets/gifs/Whats your name.gif",
          english: "what\'s your name"),
      DataModel(
          arbeic: 'بطاطس بالجبنه',
          asset: "assets/gifs/Cheese fries.gif",
          english: "cheese fries"),
      DataModel(
          arbeic: "تاكل",
          asset: "assets/gifs/Wanna eat.gif",
          english: "do you want to eat"),
      DataModel(
          arbeic: "مع السلامه",
          asset: "assets/gifs/Goodbye.gif",
          english: "goodbye - bye"),
      DataModel(
          arbeic: "رايح ماتش كوره",
          asset: "assets/gifs/رايح ماتش كورة.gif",
          english: "Go to play                                       match"),
      DataModel(
          arbeic: "اي حاجه",
          asset: "assets/gifs/Anything.gif",
          english: "anything"),
      DataModel(
          arbeic: "فاضى النهارده",
          asset: "assets/gifs/فاضي النهاردة.gif",
          english: "are you free"),
      DataModel(
          arbeic: "لحمد لله",
          asset: "assets/gifs/See you later.gif",
          english: "See you later"),
      DataModel(
          arbeic: "حيوان", asset: "assets/gifs/Animal.gif", english: "animal"),
      DataModel(
          arbeic: "موزه", asset: "assets/gifs/Banana.gif", english: "banana"),
      DataModel(
          arbeic: "عصفوره - حمامه",
          asset: "assets/gifs/Bird.gif",
          english: "bird"),
      DataModel(
          arbeic: "بسكوت",
          asset: "assets/gifs/Biscuit.gif",
          english: "biscuit"),
      DataModel(
          arbeic: "بطانيه",
          asset: "assets/gifs/Blanket.gif",
          english: "blanket"),
      DataModel(arbeic: "ولد", asset: "assets/gifs/Boy.gif", english: "boy"),
      DataModel(
          arbeic: "عيش - خبز",
          asset: "assets/gifs/Bread.gif",
          english: "bread"),
      DataModel(
          arbeic: "فطار",
          asset: "assets/gifs/Breakfast.gif",
          english: "breakfast"),
      DataModel(arbeic: "اخي - اخويا", asset: "gif", english: "brother"),
      DataModel(
          arbeic: "سلام", asset: "assets/gifs/Brother.gif", english: "later"),
      DataModel(
          arbeic: "برجر", asset: "assets/gifs/Burger.gif", english: "burger"),
      DataModel(
          arbeic: "كاميرا", asset: "assets/gifs/Camera.gif", english: "camera"),
      DataModel(arbeic: "قطه", asset: "assets/gifs/Cat.gif", english: "cat"),
      DataModel(
          arbeic: "جبنه", asset: "assets/gifs/Cheese.gif", english: "cheese"),
      DataModel(
          arbeic: "فراخ", asset: "assets/gifs/Chicken.gif", english: "chicken"),
      DataModel(
          arbeic: "طفل", asset: "assets/gifs/Child.gif", english: "child"),
      DataModel(
          arbeic: "شوكولاته",
          asset: "assets/gifs/Chocolate.gif",
          english: "chocolate"),
      DataModel(
          arbeic: "اقفل", asset: "assets/gifs/Close.gif", english: "close"),
      DataModel(arbeic: "كوبايه", asset: "assets/gifs/Cup.gif", english: "cup"),
      DataModel(arbeic: "سلام", asset: "gif", english: "later"),
      DataModel(arbeic: "سلام", asset: "gif", english: "later"),
      DataModel(arbeic: "سلام", asset: "gif", english: "later"),
      DataModel(arbeic: "سلام", asset: "gif", english: "later"),
      DataModel(arbeic: "سلام", asset: "gif", english: "later"),
      DataModel(arbeic: "سلام", asset: "gif", english: "later"),
      DataModel(arbeic: "سلام", asset: "gif", english: "later"),
    ];

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: ListView.separated(
            shrinkWrap: false,
            itemBuilder: (context, index) => Word(context, input[index]),
            separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 2,
                  color: Color.fromARGB(255, 163, 26, 16),
                ),
            itemCount: input.length));
  }
}

// Widget defaulttextformfield({
//   dynamic controller,
//   required String label,
//   double raduis = 15.0,
//   IconButton? suffix,
//   bool ispass = false,
//   Function? onchage,
//   Function? ontab,
// }) =>
//     Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: TextFormField(
        
//         onChanged: (v) {
//           // ignore: void_checks
//           return onchage!(v);
//         },
//         onTap: () {
//           ontab!();
//         },
//         controller: controller,
//         obscureText: ispass,
//         decoration: InputDecoration(
//           labelText: label,
//           labelStyle: const TextStyle(
//             color: Colors.black,
//           ),
//           suffixIcon: suffix,
//           enabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(
//                 color: Colors.black,
//                 width: 2,
//               ),
//               borderRadius: BorderRadius.all(Radius.circular(raduis))),
//           focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(
//                 color: Colors.black,
//                 width: 2,
//                 style: BorderStyle.solid,
//               ),
//               borderRadius: BorderRadius.all(Radius.circular(raduis))),
//           contentPadding:
//               const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//         ),
//       ),
//     );
