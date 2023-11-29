import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          
          children: <Widget>[
            Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_tRibzOf_vv9brYRZ5wjayMxFg8E_CPvuPQ&usqp=CAU'),
            ),
            Positioned(
              bottom: -50.0,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://prompthero.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaEpJaWxoTnpSbE1tTmpZaTB3TURneExUUmpZbVF0T1RWaVpTMWxNalZoWkRabU9EUTFOelVHT2daRlZBPT0iLCJleHAiOm51bGwsInB1ciI6ImJsb2JfaWQifX0=--9349aa5d3d9b72ba74ec2af901659ba0423a2e3b/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBPZ2wzWldKd09oUnlaWE5wZW1WZmRHOWZiR2x0YVhSYkIya0NBQWd3T2dwellYWmxjbnNKT2hOemRXSnpZVzF3YkdWZmJXOWtaVWtpQjI5dUJqb0dSVlE2Q25OMGNtbHdWRG9PYVc1MFpYSnNZV05sVkRvTWNYVmhiR2wwZVdsZiIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--935666d13f63ed5aca9daa2416340e3a90b6014e/prompthero-prompt-5fbe79d4b93.png'),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        ListTile(
          title: Text('abhishek kumar'),
          subtitle: Text('Native android and flutter developer'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.mail),
          label: Text(
            'Hire me',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        ListTile(
          title: Text('about me'),
          subtitle: Text(
              'hi i am abhishek kumar there i my profile how can i help you '),
        )
      ],
    );
  }
}
