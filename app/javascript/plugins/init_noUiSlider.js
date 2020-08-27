import noUiSlider from 'nouislider';
import 'nouislider/distribute/nouislider.css';

const temperatureSlider = () => {
  const slider = document.getElementById('slider');
  noUiSlider.create(slider, {
      start: [10, 30, 60, 100],
      connect: true,

      range: {
          'min': 0,
          'max': 100
      }
  });
}
export { temperatureSlider };

