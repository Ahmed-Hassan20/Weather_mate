import 'package:weather_mate/features/HomeScreen/domain/entities/WeatherResponseEntity.dart';

/// location : {"name":"El Faiyum","region":"Al Fayyum","country":"Egypt","lat":29.3084784,"lon":30.8405117,"tz_id":"Africa/Cairo","localtime_epoch":1728315304,"localtime":"2024-10-07 18:35"}
/// current : {"last_updated_epoch":1728315000,"last_updated":"2024-10-07 18:30","temp_c":31.0,"temp_f":87.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":9.4,"wind_kph":15.1,"wind_degree":12,"wind_dir":"NNE","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":27,"cloud":4,"feelslike_c":29.6,"feelslike_f":85.2,"windchill_c":31.0,"windchill_f":87.7,"heatindex_c":29.6,"heatindex_f":85.2,"dewpoint_c":9.7,"dewpoint_f":49.4,"vis_km":10.0,"vis_miles":6.0,"uv":1.0,"gust_mph":18.1,"gust_kph":29.1}
/// forecast : {"forecastday":[{"date":"2024-10-07","date_epoch":1728259200,"day":{"maxtemp_c":33.9,"maxtemp_f":93.1,"mintemp_c":20.3,"mintemp_f":68.5,"avgtemp_c":27.0,"avgtemp_f":80.6,"maxwind_mph":17.0,"maxwind_kph":27.4,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":45,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:54 AM","sunset":"05:35 PM","moonrise":"09:59 AM","moonset":"08:11 PM","moon_phase":"Waxing Crescent","moon_illumination":15,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728277200,"time":"2024-10-07 08:00","temp_c":23.4,"temp_f":74.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.6,"wind_kph":15.5,"wind_degree":27,"wind_dir":"NNE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":60,"cloud":0,"feelslike_c":25.1,"feelslike_f":77.2,"windchill_c":23.5,"windchill_f":74.2,"heatindex_c":25.1,"heatindex_f":77.2,"dewpoint_c":15.3,"dewpoint_f":59.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":12.1,"gust_kph":19.5,"uv":6.0}]},{"date":"2024-10-08","date_epoch":1728345600,"day":{"maxtemp_c":34.9,"maxtemp_f":94.8,"mintemp_c":22.4,"mintemp_f":72.3,"avgtemp_c":28.4,"avgtemp_f":83.1,"maxwind_mph":16.3,"maxwind_kph":26.3,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":45,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:54 AM","sunset":"05:34 PM","moonrise":"10:58 AM","moonset":"08:59 PM","moon_phase":"Waxing Crescent","moon_illumination":23,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728363600,"time":"2024-10-08 08:00","temp_c":25.6,"temp_f":78.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":12.8,"wind_kph":20.5,"wind_degree":28,"wind_dir":"NNE","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":58,"cloud":0,"feelslike_c":26.7,"feelslike_f":80.1,"windchill_c":25.7,"windchill_f":78.2,"heatindex_c":26.7,"heatindex_f":80.1,"dewpoint_c":16.8,"dewpoint_f":62.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":16.1,"gust_kph":25.9,"uv":7.0}]},{"date":"2024-10-09","date_epoch":1728432000,"day":{"maxtemp_c":34.2,"maxtemp_f":93.6,"mintemp_c":22.4,"mintemp_f":72.4,"avgtemp_c":28.1,"avgtemp_f":82.6,"maxwind_mph":21.9,"maxwind_kph":35.3,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":46,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:55 AM","sunset":"05:33 PM","moonrise":"11:56 AM","moonset":"09:54 PM","moon_phase":"Waxing Crescent","moon_illumination":32,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728450000,"time":"2024-10-09 08:00","temp_c":25.6,"temp_f":78.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":12.5,"wind_kph":20.2,"wind_degree":26,"wind_dir":"NNE","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":56,"cloud":0,"feelslike_c":26.6,"feelslike_f":79.9,"windchill_c":25.6,"windchill_f":78.1,"heatindex_c":26.6,"heatindex_f":79.9,"dewpoint_c":16.2,"dewpoint_f":61.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":15.9,"gust_kph":25.5,"uv":7.0}]},{"date":"2024-10-10","date_epoch":1728518400,"day":{"maxtemp_c":33.3,"maxtemp_f":91.9,"mintemp_c":21.6,"mintemp_f":70.9,"avgtemp_c":27.1,"avgtemp_f":80.9,"maxwind_mph":16.6,"maxwind_kph":26.6,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":46,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:55 AM","sunset":"05:32 PM","moonrise":"12:50 PM","moonset":"10:55 PM","moon_phase":"First Quarter","moon_illumination":42,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728536400,"time":"2024-10-10 08:00","temp_c":24.1,"temp_f":75.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.4,"wind_kph":18.4,"wind_degree":12,"wind_dir":"NNE","pressure_mb":1013.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":64,"cloud":0,"feelslike_c":25.6,"feelslike_f":78.1,"windchill_c":24.1,"windchill_f":75.3,"heatindex_c":25.6,"heatindex_f":78.1,"dewpoint_c":17.0,"dewpoint_f":62.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":14.0,"gust_kph":22.6,"uv":6.0}]},{"date":"2024-10-11","date_epoch":1728604800,"day":{"maxtemp_c":34.1,"maxtemp_f":93.4,"mintemp_c":20.8,"mintemp_f":69.4,"avgtemp_c":27.4,"avgtemp_f":81.3,"maxwind_mph":14.8,"maxwind_kph":23.8,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":43,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:56 AM","sunset":"05:31 PM","moonrise":"01:39 PM","moonset":"No moonset","moon_phase":"Waxing Gibbous","moon_illumination":52,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728622800,"time":"2024-10-11 08:00","temp_c":23.8,"temp_f":74.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":10.1,"wind_kph":16.2,"wind_degree":9,"wind_dir":"N","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":57,"cloud":0,"feelslike_c":25.3,"feelslike_f":77.5,"windchill_c":23.8,"windchill_f":74.8,"heatindex_c":25.3,"heatindex_f":77.5,"dewpoint_c":14.8,"dewpoint_f":58.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":12.6,"gust_kph":20.3,"uv":6.0}]}]}

class WeatherResponseDto extends WeatherResponseEntity {
  WeatherResponseDto({
    super.location,
    super.current,
    super.forecast,
    super.code,
    super.message,
  });

  WeatherResponseDto.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    current = json['current'] != null ? Current.fromJson(json['current']) : null;
    forecast = json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
    code = json['code'];
    message = json['message'];

    // Process the weather features after deserializing
    features = processWeatherFeatures(); // Use the method from the parent class
  }
}

/// forecastday : [{"date":"2024-10-07","date_epoch":1728259200,"day":{"maxtemp_c":33.9,"maxtemp_f":93.1,"mintemp_c":20.3,"mintemp_f":68.5,"avgtemp_c":27.0,"avgtemp_f":80.6,"maxwind_mph":17.0,"maxwind_kph":27.4,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":45,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:54 AM","sunset":"05:35 PM","moonrise":"09:59 AM","moonset":"08:11 PM","moon_phase":"Waxing Crescent","moon_illumination":15,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728277200,"time":"2024-10-07 08:00","temp_c":23.4,"temp_f":74.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.6,"wind_kph":15.5,"wind_degree":27,"wind_dir":"NNE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":60,"cloud":0,"feelslike_c":25.1,"feelslike_f":77.2,"windchill_c":23.5,"windchill_f":74.2,"heatindex_c":25.1,"heatindex_f":77.2,"dewpoint_c":15.3,"dewpoint_f":59.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":12.1,"gust_kph":19.5,"uv":6.0}]},{"date":"2024-10-08","date_epoch":1728345600,"day":{"maxtemp_c":34.9,"maxtemp_f":94.8,"mintemp_c":22.4,"mintemp_f":72.3,"avgtemp_c":28.4,"avgtemp_f":83.1,"maxwind_mph":16.3,"maxwind_kph":26.3,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":45,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:54 AM","sunset":"05:34 PM","moonrise":"10:58 AM","moonset":"08:59 PM","moon_phase":"Waxing Crescent","moon_illumination":23,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728363600,"time":"2024-10-08 08:00","temp_c":25.6,"temp_f":78.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":12.8,"wind_kph":20.5,"wind_degree":28,"wind_dir":"NNE","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":58,"cloud":0,"feelslike_c":26.7,"feelslike_f":80.1,"windchill_c":25.7,"windchill_f":78.2,"heatindex_c":26.7,"heatindex_f":80.1,"dewpoint_c":16.8,"dewpoint_f":62.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":16.1,"gust_kph":25.9,"uv":7.0}]},{"date":"2024-10-09","date_epoch":1728432000,"day":{"maxtemp_c":34.2,"maxtemp_f":93.6,"mintemp_c":22.4,"mintemp_f":72.4,"avgtemp_c":28.1,"avgtemp_f":82.6,"maxwind_mph":21.9,"maxwind_kph":35.3,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":46,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:55 AM","sunset":"05:33 PM","moonrise":"11:56 AM","moonset":"09:54 PM","moon_phase":"Waxing Crescent","moon_illumination":32,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728450000,"time":"2024-10-09 08:00","temp_c":25.6,"temp_f":78.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":12.5,"wind_kph":20.2,"wind_degree":26,"wind_dir":"NNE","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":56,"cloud":0,"feelslike_c":26.6,"feelslike_f":79.9,"windchill_c":25.6,"windchill_f":78.1,"heatindex_c":26.6,"heatindex_f":79.9,"dewpoint_c":16.2,"dewpoint_f":61.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":15.9,"gust_kph":25.5,"uv":7.0}]},{"date":"2024-10-10","date_epoch":1728518400,"day":{"maxtemp_c":33.3,"maxtemp_f":91.9,"mintemp_c":21.6,"mintemp_f":70.9,"avgtemp_c":27.1,"avgtemp_f":80.9,"maxwind_mph":16.6,"maxwind_kph":26.6,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":46,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:55 AM","sunset":"05:32 PM","moonrise":"12:50 PM","moonset":"10:55 PM","moon_phase":"First Quarter","moon_illumination":42,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728536400,"time":"2024-10-10 08:00","temp_c":24.1,"temp_f":75.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.4,"wind_kph":18.4,"wind_degree":12,"wind_dir":"NNE","pressure_mb":1013.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":64,"cloud":0,"feelslike_c":25.6,"feelslike_f":78.1,"windchill_c":24.1,"windchill_f":75.3,"heatindex_c":25.6,"heatindex_f":78.1,"dewpoint_c":17.0,"dewpoint_f":62.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":14.0,"gust_kph":22.6,"uv":6.0}]},{"date":"2024-10-11","date_epoch":1728604800,"day":{"maxtemp_c":34.1,"maxtemp_f":93.4,"mintemp_c":20.8,"mintemp_f":69.4,"avgtemp_c":27.4,"avgtemp_f":81.3,"maxwind_mph":14.8,"maxwind_kph":23.8,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":43,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"05:56 AM","sunset":"05:31 PM","moonrise":"01:39 PM","moonset":"No moonset","moon_phase":"Waxing Gibbous","moon_illumination":52,"is_moon_up":0,"is_sun_up":0},"hour":[{"time_epoch":1728622800,"time":"2024-10-11 08:00","temp_c":23.8,"temp_f":74.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":10.1,"wind_kph":16.2,"wind_degree":9,"wind_dir":"N","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":57,"cloud":0,"feelslike_c":25.3,"feelslike_f":77.5,"windchill_c":23.8,"windchill_f":74.8,"heatindex_c":25.3,"heatindex_f":77.5,"dewpoint_c":14.8,"dewpoint_f":58.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":12.6,"gust_kph":20.3,"uv":6.0}]}]

/// date : "2024-10-07"
/// date_epoch : 1728259200
/// day : {"maxtemp_c":33.9,"maxtemp_f":93.1,"mintemp_c":20.3,"mintemp_f":68.5,"avgtemp_c":27.0,"avgtemp_f":80.6,"maxwind_mph":17.0,"maxwind_kph":27.4,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":45,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0}
/// hour : [{"time_epoch":1728277200,"time":"2024-10-07 08:00","temp_c":23.4,"temp_f":74.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.6,"wind_kph":15.5,"wind_degree":27,"wind_dir":"NNE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"snow_cm":0.0,"humidity":60,"cloud":0,"feelslike_c":25.1,"feelslike_f":77.2,"windchill_c":23.5,"windchill_f":74.2,"heatindex_c":25.1,"heatindex_f":77.2,"dewpoint_c":15.3,"dewpoint_f":59.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":12.1,"gust_kph":19.5,"uv":6.0}]
class Forecast extends ForecastEntity{
  Forecast({
    super.forecastday,});

  Forecast.fromJson(dynamic json) {
    if (json['forecastday'] != null) {
      forecastday = [];
      json['forecastday'].forEach((v) {
        forecastday?.add(ForecastDay.fromJson(v));
      });
    }
  }



}
class ForecastDay extends ForecastDayEntity {
  ForecastDay({
    super.date,
    super.day,

    super.hour,
  });

  ForecastDay.fromJson(dynamic json) {
    date = json['date'];
    day = json['day'] != null ? Day.fromJson(json['day']) : null;
    if (json['hour'] != null) {
      hour = [];
      json['hour'].forEach((v) {
        hour?.add(Hour.fromJson(v));
      });
    }
  }
}
/// name : "El Faiyum"
/// region : "Al Fayyum"
/// country : "Egypt"
/// lat : 29.3084784
/// lon : 30.8405117
/// tz_id : "Africa/Cairo"
/// localtime_epoch : 1728315304
/// localtime : "2024-10-07 18:35"

class Location extends LocationEntity {
  Location({
    super.name,
    super.region,
    super.country,
    super.lat,
    super.lon,
    super.tzId,
  });

  Location.fromJson(dynamic json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    lat = json['lat'];
    lon = json['lon'];
    tzId = json['tz_id'];
  }
}

/// time_epoch : 1728277200
/// time : "2024-10-07 08:00"
/// temp_c : 23.4
/// temp_f : 74.2
/// is_day : 1
/// condition : {"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000}
/// wind_mph : 9.6
/// wind_kph : 15.5
/// wind_degree : 27
/// wind_dir : "NNE"
/// pressure_mb : 1014.0
/// pressure_in : 29.95
/// precip_mm : 0.0
/// precip_in : 0.0
/// snow_cm : 0.0
/// humidity : 60
/// cloud : 0
/// feelslike_c : 25.1
/// feelslike_f : 77.2
/// windchill_c : 23.5
/// windchill_f : 74.2
/// heatindex_c : 25.1
/// heatindex_f : 77.2
/// dewpoint_c : 15.3
/// dewpoint_f : 59.5
/// will_it_rain : 0
/// chance_of_rain : 0
/// will_it_snow : 0
/// chance_of_snow : 0
/// vis_km : 10.0
/// vis_miles : 6.0
/// gust_mph : 12.1
/// gust_kph : 19.5
/// uv : 6.0

class Hour extends HourEntity {
  Hour({
    super.time,
    super.tempC,
    super.tempF,
    super.isDay,
    super.condition,
    super.windMph,
    super.windKph,
    super.windDegree,
    super.windDir,
    super.pressureMb,
    super.pressureIn,
    super.precipMm,
    super.precipIn,
    super.snowCm,
    super.humidity,
    super.cloud,
    super.feelslikeC,
    super.feelslikeF,
    super.windchillC,
    super.windchillF,
    super.heatindexC,
    super.heatindexF,
    super.dewpointC,
    super.dewpointF,
    super.willItRain,
    super.chanceOfRain,
    super.willItSnow,
    super.chanceOfSnow,
    super.visKm,
    super.visMiles,
    super.gustMph,
    super.gustKph,
    super.uv,
  });

  Hour.fromJson(dynamic json) {
    timeEpoch = json['time_epoch'];
    time = json['time'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    snowCm = json['snow_cm'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    windchillC = json['windchill_c'];
    windchillF = json['windchill_f'];
    heatindexC = json['heatindex_c'];
    heatindexF = json['heatindex_f'];
    dewpointC = json['dewpoint_c'];
    dewpointF = json['dewpoint_f'];
    willItRain = json['will_it_rain'];
    chanceOfRain = json['chance_of_rain'];
    willItSnow = json['will_it_snow'];
    chanceOfSnow = json['chance_of_snow'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
    uv = json['uv'];
  }
}

/// text : "Sunny"
/// icon : "//cdn.weatherapi.com/weather/64x64/day/113.png"
/// code : 1000

class Condition extends ConditionEntity {
  Condition({
    super.text,
    super.icon,
    super.code,
  });

  Condition.fromJson(dynamic json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }
}

/// maxtemp_c : 33.9
/// maxtemp_f : 93.1
/// mintemp_c : 20.3
/// mintemp_f : 68.5
/// avgtemp_c : 27.0
/// avgtemp_f : 80.6
/// maxwind_mph : 17.0
/// maxwind_kph : 27.4
/// totalprecip_mm : 0.0
/// totalprecip_in : 0.0
/// totalsnow_cm : 0.0
/// avgvis_km : 10.0
/// avgvis_miles : 6.0
/// avghumidity : 45
/// daily_will_it_rain : 0
/// daily_chance_of_rain : 0
/// daily_will_it_snow : 0
/// daily_chance_of_snow : 0
/// condition : {"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000}
/// uv : 7.0

class Day extends DayEntity {
  Day({
    super.maxtempC,
    super.maxtempF,
    super.mintempC,
    super.mintempF,
    super.avgtempC,
    super.avgtempF,
    super.maxwindMph,
    super.maxwindKph,
    super.totalprecipMm,
    super.totalprecipIn,
    super.totalsnowCm,
    super.avgvisKm,
    super.avgvisMiles,
    super.avghumidity,
    super.dailyWillItRain,
    super.dailyChanceOfRain,
    super.dailyWillItSnow,
    super.dailyChanceOfSnow,
    super.condition,
    super.uv,
  });

  Day.fromJson(dynamic json) {
    maxtempC = json['maxtemp_c'];
    maxtempF = json['maxtemp_f'];
    mintempC = json['mintemp_c'];
    mintempF = json['mintemp_f'];
    avgtempC = json['avgtemp_c'];
    avgtempF = json['avgtemp_f'];
    maxwindMph = json['maxwind_mph'];
    maxwindKph = json['maxwind_kph'];
    totalprecipMm = json['totalprecip_mm'];
    totalprecipIn = json['totalprecip_in'];
    totalsnowCm = json['totalsnow_cm'];
    avgvisKm = json['avgvis_km'];
    avgvisMiles = json['avgvis_miles'];
    avghumidity = json['avghumidity'];
    dailyWillItRain = json['daily_will_it_rain'];
    dailyChanceOfRain = json['daily_chance_of_rain'];
    dailyWillItSnow = json['daily_will_it_snow'];
    dailyChanceOfSnow = json['daily_chance_of_snow'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    uv = json['uv'];
  }
}

/// text : "Sunny"
/// icon : "//cdn.weatherapi.com/weather/64x64/day/113.png"
/// code : 1000

/// last_updated_epoch : 1728315000
/// last_updated : "2024-10-07 18:30"
/// temp_c : 31.0
/// temp_f : 87.7
/// is_day : 0
/// condition : {"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000}
/// wind_mph : 9.4
/// wind_kph : 15.1
/// wind_degree : 12
/// wind_dir : "NNE"
/// pressure_mb : 1013.0
/// pressure_in : 29.9
/// precip_mm : 0.0
/// precip_in : 0.0
/// humidity : 27
/// cloud : 4
/// feelslike_c : 29.6
/// feelslike_f : 85.2
/// windchill_c : 31.0
/// windchill_f : 87.7
/// heatindex_c : 29.6
/// heatindex_f : 85.2
/// dewpoint_c : 9.7
/// dewpoint_f : 49.4
/// vis_km : 10.0
/// vis_miles : 6.0
/// uv : 1.0
/// gust_mph : 18.1
/// gust_kph : 29.1

class Current extends CurrentEntity {
  Current({
    super.lastUpdatedEpoch,
    super.lastUpdated,
    super.tempC,
    super.tempF,
    super.isDay,
    super.condition,
    super.windMph,
    super.windKph,
    super.windDegree,
    super.windDir,
    super.pressureMb,
    super.pressureIn,
    super.precipMm,
    super.precipIn,
    super.humidity,
    super.cloud,
    super.feelslikeC,
    super.feelslikeF,
    super.windchillC,
    super.windchillF,
    super.heatindexC,
    super.heatindexF,
    super.dewpointC,
    super.dewpointF,
    super.visKm,
    super.visMiles,
    super.uv,
    super.gustMph,
    super.gustKph,
  });

  Current.fromJson(dynamic json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    windchillC = json['windchill_c'];
    windchillF = json['windchill_f'];
    heatindexC = json['heatindex_c'];
    heatindexF = json['heatindex_f'];
    dewpointC = json['dewpoint_c'];
    dewpointF = json['dewpoint_f'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    uv = json['uv'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
  }
}

/// text : "Clear"
/// icon : "//cdn.weatherapi.com/weather/64x64/night/113.png"
/// code : 1000
