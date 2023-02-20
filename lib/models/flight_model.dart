class Flight {
  final String startingPlace;
  final String startingPlaceCode;
  final String landingPlace;
  final String landingPlaceCode;
  final String flightDuration;
  final String departureDate;
  final int landingDay;
  final String departureHour;

  Flight({
    required this.startingPlace,
    required this.startingPlaceCode,
    required this.landingPlace,
    required this.landingPlaceCode,
    required this.flightDuration,
    required this.departureDate,
    required this.landingDay,
    required this.departureHour,
  });
}

final List<Flight> availableFlights = [
  Flight(
    startingPlace: 'New-York',
    startingPlaceCode: 'NYC',
    landingPlace: 'London',
    landingPlaceCode: 'LDN',
    flightDuration: '8H-30M',
    departureDate: '1 May',
    landingDay: 23,
    departureHour: '08:00 AM',
  ),
  Flight(
    startingPlace: 'Dhaka',
    startingPlaceCode: 'DK',
    landingPlace: 'Bangkok',
    landingPlaceCode: 'BK',
    flightDuration: '5H-12M',
    departureDate: '2 march',
    landingDay: 25,
    departureHour: '10:00 PM',
  ),
];
