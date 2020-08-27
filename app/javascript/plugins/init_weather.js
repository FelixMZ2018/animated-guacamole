const initWeather = () => {
   const API_KEY = '1c427ea6625a43bbb4125b93d578f530';

      const icon = document.getElementById('icon');
      const temperature = document.getElementById('temperature');
      const city = document.getElementById('city');
      const date = document.getElementById('localDate');
      const sunrise = document.getElementById('sunrise');
      const sunset = document.getElementById('sunset');
      const visibility = document.getElementById('visibility');
      const wind = document.getElementById('speed');
      const humidity = document.getElementById('humidity');
      const cloud = document.getElementById('all');
      const pressure = document.getElementById('pressure');
      const feels_like = document.getElementById('feels_like');
      const time = document.getElementById('time');


    const updateCard = (data) => {
      icon.src = `https://openweathermap.org/img/w/${data.weather[0].icon}.png`;
      temperature.innerText = `${Math.round(data.main.temp) - 273}°C`;
      feels_like.innerText = `${Math.round(data.main.feels_like) - 273}°C`;
      sunrise.innerText = new Date(data.sys.sunrise).toLocaleTimeString('en-us', {hour: '2-digit', minute: '2-digit'});
      sunset.innerText = new Date(data.sys.sunset).toLocaleTimeString('en-us', {hour: '2-digit', minute: '2-digit'});
      humidity.innerText = data.main.humidity + '%';
      wind.innerText = data.wind.speed + ' km/h';
      visibility.innerText = data.visibility;
      cloud.innerText = data.clouds.all;
      pressure.innerText = data.main.pressure;
      time.innerText  = new Date(data.dt).toLocaleTimeString('en-us', {hour: '2-digit'});
    };

    const fetchWeather = (cityName = 'Berlin') => {
      fetch(`http://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=${API_KEY}`)
        .then(response => response.json())
        .then(updateCard);
    };

    const fetchWeatherByCoordinates = (coordinates) => {
      fetch(`http://api.openweathermap.org/data/2.5/weather?lat=${coordinates.lat}&lon=${coordinates.lon}&appid=${API_KEY}`)
        .then(response => response.json())
        .then(updateCard);
    };

    const fetchCurrentPositionWeather = () => {
      //event.preventDefault();
      navigator.geolocation.getCurrentPosition((data) => {
        fetchWeatherByCoordinates({ lat: data.coords.latitude, lon: data.coords.longitude });
      });
    };
    fetchCurrentPositionWeather()
}

export {initWeather}
