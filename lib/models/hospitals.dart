class HospitalsList {
  static final hospitals = [
    HospitalItem(
        id: 1,
        name: "Darul Sehat Hospital",
        location:
            "St-19, KDA Scheme? Abul Asar Hafeez Jalandhari Rd, Gulistan E Johar, Karachi",
        image: "assets/images/darulsehat.png"),
    HospitalItem(
        id: 2,
        name: "Ziauddin Hospital",
        location: "Allama Rasheed Turabi Rd, Block B, North Nazimabad, Karachi",
        image: "assets/images/Ziauddin.png"),
    HospitalItem(
        id: 3,
        name: "Patel Hospital",
        location: "ST-18 Block 4, Gulshan e Iqbal, Karachi",
        image: "assets/images/patel.png"),
    HospitalItem(
        id: 4,
        name: "South City Hospital",
        location: "St-1 Shahrah-e-Firdousi, Block 3, Clifton, Karachi",
        image: "assets/images/southcity.jpg"),
    HospitalItem(
        id: 5,
        name: "The Aga Khan University Hospital",
        location: "National Stadium Rd, National Stadium Road, Karachi",
        image: "assets/images/akuh.png"),
    HospitalItem(
        id: 6,
        name: "Dow University of Health Sciences",
        location: "Mission Rd, Scheme 33, Gulzar e Hijri, Karachi",
        image: "assets/images/dow.jpg"),
    HospitalItem(
        id: 7,
        name: "Mamji Hospital",
        location: "C-19, near Water Pump Chowrangi, Federal B area, Karachi",
        image: "assets/images/mamji.png"),
    HospitalItem(
        id: 8,
        name: "National Medical Centre (NMC)",
        location: "A-5/A, National Highway, DHA Phase 1, Karachi",
        image: "assets/images/nmc.png"),
    HospitalItem(
        id: 9,
        name: "Memon Medical Institute Hospital",
        location:
            "Hyder Buksh Gabol Road, K.D.A., Scheme 33, Safoora Chowrangi, Karachi",
        image: "assets/images/MMI.png"),
    HospitalItem(
        id: 10,
        name: "Saifee Hospital",
        location: "St-1, Block F, Saifee Road, North Nazimabad, Karachi",
        image: "assets/images/saifee.PNG"),
  ];
}

class HospitalItem {
  final int id;
  final String name;
  final String location;
  final String image;

  HospitalItem(
      {required this.id,
      required this.name,
      required this.location,
      required this.image});
}
