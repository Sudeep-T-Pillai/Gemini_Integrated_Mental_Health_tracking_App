import 'package:flutter/material.dart';

class LogUsingGoogle extends StatelessWidget {
  const LogUsingGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/Login/feeling1.gif'),
            const SizedBox( height: 25,),

            ElevatedButton(
                onPressed: (){/*......*/},
                child: Text('Unlock a Healthier You 🔓')
            )
          ],
        ),
      ),
    );
  }
}
