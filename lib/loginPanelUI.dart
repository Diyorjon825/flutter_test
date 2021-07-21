import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 5),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ),
              ],
            ),
            TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              initialValue: 'Input text',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                labelText: 'Label text',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Helper text',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
