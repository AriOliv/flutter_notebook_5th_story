import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightTicketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TicketPage(),
    );
  }
}

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 8,
              right: 24,
              top: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_left),
                  Spacer(),
                  Text(
                    "Your Ticket",
                    style: GoogleFonts.montserrat(
                      fontSize: 20
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 48,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.blueAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
