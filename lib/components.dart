import 'package:path/path.dart';

import 'package:flutter/material.dart';

Widget Word(BuildContext context, input) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "${input.english}",
              maxLines: 3,
              style: TextStyle(
                  color: Colors.white, fontFamily: "gill", fontSize: 30),
            ),
          ),
          Expanded(
            child: Text(
              "${input.arbeic}",
              maxLines: 3,
              style: TextStyle(
                  color: Colors.white, fontFamily: "gill", fontSize: 30),
            ),
          ),
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Image.asset("${input.asset}"),
                      );
                    });
              },
              icon: Icon(
                Icons.forward,
                color: Colors.white,
                size: 40,
              ))
        ],
      ),
    ),
  );
}

class DataModel {
  final String english;
  final String arbeic;
  final String asset;
  DataModel({required this.arbeic, required this.asset, required this.english});
}
