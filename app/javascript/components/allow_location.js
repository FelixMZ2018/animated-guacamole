const allowLocation = () => {
  console.log(navigator.geolocation)

  // if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      const positionInfo = "Your current position is (" + "Latitude: " + position.coords.latitude + ", " + "Longitude: " + position.coords.longitude + ")";
      console.log(positionInfo)
    });
  // };
}
export { allowLocation }
