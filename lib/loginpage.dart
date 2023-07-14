import 'package:flutter/material.dart';
import 'package:todoapp/Home.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "img/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Bhai username dalo", labelText: "username"),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Bhai password dalo ", labelText: "password"),
          ),
          SizedBox(height: 80),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "login",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.login,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              "By omkarkatkar",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
} //
