import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        Container(
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/auth/logo_g.jpg')),
            ],
          )
        );
  }
}
