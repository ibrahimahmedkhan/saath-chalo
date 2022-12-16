import 'package:flutterdemo/models/approved_passenger.dart';
import 'package:flutterdemo/models/passenger_request.dart';
import 'package:flutterdemo/models/customer_json.dart';
import 'package:flutterdemo/providers_repositories/passenger/home/home_provider.dart';

import '../../../models/coordinates.dart';
import '../../../models/rides_json.dart';

abstract class PassengerHomeRepository {
  Future<List<PassengerHomeListDetails>> searchRides(
      String startingCoordinates, String endingCoordinates);
  updateRide(Ride ride);
}

class FirebasePassengerHomeRepository implements PassengerHomeRepository {
  @override
  Future<List<PassengerHomeListDetails>> searchRides(
      String startingCoordinates, String endingCoordinates) {
    // TODO: implement searchRides
    // TODO: using google maps
    throw UnimplementedError();
  }

  @override
  updateRide(Ride ride) {
    // TODO: implement updateRide
    throw UnimplementedError();
  }
}

class MockPassengerHomeRepository implements PassengerHomeRepository {
  List<PassengerHomeListDetails> rides = [
    PassengerHomeListDetails(
      ride: Ride(
        id: "${DateTime.now().microsecondsSinceEpoch}1231",
        driverId: "1231",
        vehicleId: "ABC-123",
        startingDestination: "startingCoordinatesApproved",
        endingDestination: "endingCoordinatesApproved",
        startingCoordinates: Coordinates(
          lat: "123",
          long: "123",
        ),
        endingCoordinates: Coordinates(
          lat: "123",
          long: "123",
        ),
        totalFare: 1200,
        availableSeats: 3,
        isFemaleOnly: false,
        date: DateTime(2022, 12, 13).millisecondsSinceEpoch,
        time: DateTime(0, 0, 0, 17, 30).millisecondsSinceEpoch,
        approvedPassengers: [
          ApprovedPassenger(
            passengerId: "52345",
            startingCoordinates: "3123123",
            endingCoordinates: "123123",
            rideFare: 400,
            isDelete: false,
            driverRating: -1,
            passengerRating: -1,
          ),
        ],
        passengerRequests: [
          PassengerRequest(
              passengerId: "1245",
              startingCoordinates: "123123",
              endingCoordinates: "123312",
              status: "Pending",
              isDelete: false),
        ],
        isDelete: false,
        isCompleted: false,
        isRecurring: false,
      ),
      driver: Customer(
        firstName: "Syed",
        lastName: "Ahris",
        email: "ahrissyed@gmail.com",
        phone: "03343829388",
        password: "asdasdasdasd",
        rating: 4.5,
        profilePictureLink: "ASdasdasdasd",
        gender: "M",
        isDriver: true,
        isPassenger: false,
        isDelete: false,
        id: '',
      ),
    )
  ];
  @override
  Future<List<PassengerHomeListDetails>> searchRides(
      String startingCoordinates, String endingCoordinates) async {
    return rides;
  }

  @override
  updateRide(Ride ride) {
    //TODO: send firebasereq
  }
}
