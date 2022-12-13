import 'package:flutter/material.dart';
import 'package:flutterdemo/driver_pages/passenger_request/passenger_request.dart';
import 'package:flutterdemo/globalComponents/driver_side_bar.dart';
import 'package:flutterdemo/globalComponents/main_app_bar.dart';
import 'package:flutterdemo/globalComponents/passenger_card.dart';

import 'passenger_demo.dart';

class PassengerRequests extends StatefulWidget {
  const PassengerRequests({Key? key}) : super(key: key);

  @override
  State<PassengerRequests> createState() => _PassengerRequestsState();
}

class _PassengerRequestsState extends State<PassengerRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DriverSideBar(),
      appBar: const MainAppBar(title: "Scheduled Rides"),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/backimg.png'))),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 40),
                child: Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "    Passengers Requests",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: pass.length,
                          itemBuilder: (BuildContext context, int index) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  PassengerCard(
                                    status: true,
                                    name: pass[index].name,
                                    rating: pass[index].rating,
                                    journeyStart: pass[index].journeyStart,
                                    journeyEnd: pass[index].journeyEnd,
                                    onTap1: () {},
                                    onTap2: () {},
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PassengerRequest(
                                                    status: false,
                                                    name: pass[index].name,
                                                    rating: pass[index].rating,
                                                    journeyStart: pass[index]
                                                        .journeyStart,
                                                    journeyEnd:
                                                        pass[index].journeyEnd,
                                                  )));
                                    },
                                  ),
                                  Center(
                                    child: index != pass.length - 1
                                        ? const Divider(
                                            color: Colors.black,
                                            height: 5,
                                            thickness: 2,
                                            indent: 20,
                                            endIndent: 20,
                                          )
                                        : const Text(""),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ],
                  ),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Cancel Ride")),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<PassDemo> pass = [
  PassDemo(
    name: "Mohammad Irtiza",
    rating: 4.5,
    journeyStart: "Institute of Business Administration",
    journeyEnd: "Askari 4",
  ),
  PassDemo(
    name: "Syed Ahris",
    rating: 4.5,
    journeyStart: "Institute of Business Administration",
    journeyEnd: "Askari 4",
  ),
];