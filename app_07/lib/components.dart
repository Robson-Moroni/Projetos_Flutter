import 'package:flutter/material.dart';

class fields extends StatelessWidget {
  const fields({Key? key, required this.labelName, this.textInputType}) : super(key: key);

  final TextInputType? textInputType;
  final String labelName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelName, style:
        const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        )
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20.0),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        keyboardType: textInputType,
        ),

      ],
    );
  }
}
