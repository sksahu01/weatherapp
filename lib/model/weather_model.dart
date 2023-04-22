class Weather {
  double? lat;
  double? lon;

  String? cityname;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;

  Weather(
      {this.lat,
      this.lon,
      this.cityname,
      this.temp,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure});

  //functions to parse json file into model
  Weather.fromJson(Map<String, dynamic> json) {
    lat = json["coord"]["lat"];
    lon = json["coord"]["lon"];
    cityname = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
  }
}
