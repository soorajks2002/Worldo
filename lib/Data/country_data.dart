class CountryData {
  late String nameCommon;
  late String capital;
  late String flagUrl;

  late String nameOfficial;

  late bool independent;
  late bool unMember;

  late String currencyName;
  late String currencySymbol;

  late double latitude;
  late double longitude;

  late bool landLocked;

  late double area;
  late int popultaion;

  late String timeZone;

  late String continents;

  CountryData({
    required this.nameCommon,
    required this.capital,
    required this.flagUrl,
    required this.nameOfficial,
    required this.independent,
    required this.unMember,
    required this.currencyName,
    required this.currencySymbol,
    required this.latitude,
    required this.longitude,
    required this.landLocked,
    required this.area,
    required this.popultaion,
    required this.timeZone,
    required this.continents,
  });
}
