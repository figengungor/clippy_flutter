import 'package:flutter/material.dart';
import 'package:clippy_flutter/ticket.dart';

//https://dribbble.com/shots/4015473-Movie-Ticket-UI

class TicketDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text('Tickets')),
      body: Center(
        child: Container(
          width: 200.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 16.0),
              Ticket(
                radius: 10.0,
                clipShadows: [ClipShadow(color: Colors.black)],
                child: Image.asset(
                  'assets/bohemian_rapsody.png',
                ),
              ),
              Ticket(
                radius: 10.0,
                clipShadows: [ClipShadow(color: Colors.black)],
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.remove,
                              color: Colors.lightBlue,
                            ),
                            Text(
                              '1 TICKET',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.lightBlue,
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 0.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Date'),
                                  FittedBox(
                                    child: Text(
                                      '08/17   ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Time'),
                                FittedBox(
                                  child: Text(
                                    '9:00PM',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0),
                                  ),
                                )
                              ],
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Price'),
                                FittedBox(
                                  child: Text(
                                    '\$15.00  ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0),
                                  ),
                                )
                              ],
                            ),
                          )),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.lightBlue,
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Center(
                          child: Text(
                            'BUY TICKETS',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
