### Improvements

- Make finders in City model to be chainable, and to only instantiate the records and the end of the chain;
- Have an object class for Weather, instead of only relying on the hash;
- Cache the call to City Daily Weather inside the OpenWeatherMapClient class get_daily_weather method;
- Have routes to CityController show action to be more "RESTful", adding country and city in the URL structure, not only as parameters;
- Write more integration tests;
