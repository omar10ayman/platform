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
          english: "Go to play \nmatch"),
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
      DataModel(
          arbeic: "اخي - اخويا",
          asset: "assets/gifs/Brother.gif",
          english: "brother"),
      DataModel(
          arbeic: "سلام", asset: "assets/gifs/Goodbye.gif", english: "later"),
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
      DataModel(
          arbeic: "صباح الخير",
          asset: "assets/gifs/Good morning.gif",
          english: "good morning"),
      DataModel(
          arbeic: "بنتي",
          asset: "assets/gifs/Daughter.gif",
          english: "daughter"),
      DataModel(
          arbeic: "عشاء", asset: "assets/gifs/Dinner.gif", english: "dinner"),
      DataModel(arbeic: "كلب", asset: "assets/gifs/Dog.gif", english: "dog"),
      DataModel(
          arbeic: "بشرب", asset: "assets/gifs/Drinking.gif", english: "drink"),
      DataModel(arbeic: "بطه", asset: "assets/gifs/Duck.gif", english: "duck"),
      DataModel(
          arbeic: "باكل", asset: "assets/gifs/Eating.gif", english: "eating"),
      DataModel(arbeic: "بيض", asset: "assets/gifs/Eggs.gif", english: "egg"),
      DataModel(
          arbeic: "عيلة", asset: "assets/gifs/Family.gif", english: "family"),
      DataModel(
          arbeic: "بابا", asset: "assets/gifs/Father.gif", english: "father"),
      DataModel(arbeic: "سمك", asset: "assets/gifs/Fish.gif", english: "fish"),
      DataModel(arbeic: "شوكه", asset: "assets/gifs/Fork.gif", english: "fish"),
      DataModel(
          arbeic: "فاكهه", asset: "assets/gifs/Fruit.gif", english: "fruit"),
      DataModel(arbeic: "هديه", asset: "assets/gifs/Gift.gif", english: "gift"),
      DataModel(arbeic: "بنت", asset: "assets/gifs/Girl.gif", english: "girls"),
      DataModel(
          arbeic: "تيته", asset: "assets/gifs/Grandma.gif", english: "grandma"),
      DataModel(
          arbeic: "جدو", asset: "assets/gifs/Grandpa.gif", english: "Grandpa"),
      DataModel(arbeic: "لبان", asset: "assets/gifs/Gum.gif", english: "gum"),
      DataModel(arbeic: "هو", asset: "assets/gifs/He.gif", english: "he"),
      DataModel(
          arbeic: "ازيك",
          asset: "assets/gifs/How are you.gif",
          english: "how are you"),
      DataModel(
          arbeic: "جعان", asset: "assets/gifs/Hungry.gif", english: "hungry"),
      DataModel(
          arbeic: "بحبك",
          asset: "assets/gifs/I love you.gif",
          english: "I love you"),
      DataModel(arbeic: "مربي", asset: "assets/gifs/Jam.gif", english: "jam"),
      DataModel(
          arbeic: "عصير", asset: "assets/gifs/Juice.gif", english: "juice"),
      DataModel(
          arbeic: "سكينه", asset: "assets/gifs/Knife.gif", english: "knife"),
      DataModel(
          arbeic: "غداء", asset: "assets/gifs/Lunch.gif", english: "lunch"),
      DataModel(arbeic: "راجل", asset: "assets/gifs/Man.gif", english: "man"),
      DataModel(arbeic: "لحمه", asset: "assets/gifs/Meat.gif", english: "meat"),
      DataModel(arbeic: "حليب", asset: "assets/gifs/Milk.gif", english: "milk"),
      DataModel(
          arbeic: "فلوس", asset: "assets/gifs/Money.gif", english: "money"),
      DataModel(arbeic: "قمر", asset: "assets/gifs/Moon.gif", english: "moon"),
      DataModel(arbeic: "انت", asset: "assets/gifs/You.gif", english: "you"),
      DataModel(
          arbeic: "ايوه-نعم", asset: "assets/gifs/Yes.gif", english: "yes"),
      DataModel(arbeic: "سنه", asset: "assets/gifs/Year.gif", english: "year"),
      DataModel(arbeic: "ست", asset: "assets/gifs/Woman.gif", english: "woman"),
      DataModel(
          arbeic: "مياه", asset: "assets/gifs/Water.gif", english: "water"),
      DataModel(arbeic: "كلنا", asset: "assets/gifs/Us.gif", english: "us"),
      DataModel(
          arbeic: "عمي", asset: "assets/gifs/Uncle.gif", english: "uncle"),
      DataModel(arbeic: "رحله", asset: "assets/gifs/Trip.gif", english: "trip"),
      DataModel(
          arbeic: "بكره",
          asset: "assets/gifs/Tomorrow.gif",
          english: "tomorrow"),
      DataModel(
          arbeic: "حمام", asset: "assets/gifs/Toilet.gif", english: "toilet"),
      DataModel(
          arbeic: "لذيذ", asset: "assets/gifs/Tasty.gif", english: "tasty"),
      DataModel(
          arbeic: "معلقه", asset: "assets/gifs/Spoon.gif", english: "spoon"),
      DataModel(
          arbeic: "مكرونه",
          asset: "assets/gifs/Spaghetti.gif",
          english: "spaghetti"),
      DataModel(arbeic: "ابن", asset: "assets/gifs/Son.gif", english: "son"),
      DataModel(
          arbeic: "اخت", asset: "assets/gifs/Sister.gif", english: "sister"),
      DataModel(
          arbeic: "بشم", asset: "assets/gifs/Smell.gif", english: "smell"),
      DataModel(
          arbeic: "تعبان", asset: "assets/gifs/Sick.gif", english: "sick"),
      DataModel(
          arbeic: "مدرسه", asset: "assets/gifs/School.gif", english: "school"),
      DataModel(
          arbeic: "ساندوتش",
          asset: "assets/gifs/Sandwich.gif",
          english: "sandwich"),
      DataModel(
          arbeic: "مطعم",
          asset: "assets/gifs/Restaurant.gif",
          english: "restaurant"),
      DataModel(
          arbeic: "ارنب", asset: "assets/gifs/Rabbit.gif", english: "rabbit"),
      DataModel(
          arbeic: "بطاطس", asset: "assets/gifs/Potato.gif", english: "potato"),
      DataModel(
          arbeic: "طبق", asset: "assets/gifs/Plate.gif", english: "plate"),
      DataModel(
          arbeic: "بيتزا", asset: "assets/gifs/Pizza.gif", english: "pizza"),
      DataModel(
          arbeic: "بابا وماما",
          asset: "assets/gifs/Parents.gif",
          english: "parents"),
      DataModel(arbeic: "افتح", asset: "assets/gifs/Open.gif", english: "open"),
      DataModel(arbeic: "لا", asset: "assets/gifs/No.gif", english: "no"),
      DataModel(
          arbeic: "ماما", asset: "assets/gifs/Mother.gif", english: "mother"),
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
