import noUiSlider from 'nouislider';
import 'nouislider/distribute/nouislider.css';

const temperatureSlider = () => {
var range = document.getElementById('range');
if (range) {
var breakpoints_values = range.dataset.breakpoints.split(",").map(b => parseInt(b))


noUiSlider.create(range, {


    range: {
        'min': 10,
        '25%': 15,
        '50%': 25,
        'max':30
    },

    step: 1,

    // Handles start at ...
    start: breakpoints_values,

    // ... must be at least 300 apart
    margin: 10,

    // ... but no more than 600
    // limit: 600,

    // Display colored bars between handles
    connect: true,

    // Put '0' at the bottom of the slider
    direction: 'rtl',
    orientation: 'vertical',

    // Move handle on tap, bars are draggable
    behaviour: 'tap-drag',
    tooltips: true,

    pips: {
                mode: 'range',
                density: 3
            }


    // Show a scale with the slider
    // pips: {
    //     mode: 'steps',
    //     stepped: true,
    //     density: 4
    // }
  });


range.style.height = '400px';
range.style.margin = '0 auto 30px';

var valuesDivs = [
    document.getElementById('range-value-1'),
    document.getElementById('range-value-2'),
    document.getElementById('range-value-3'),
    document.getElementById('range-value-4')
];

var diffDivs = [
    document.getElementById('range-diff-1'),
    document.getElementById('range-diff-2'),
    document.getElementById('range-diff-3')
];

// When the slider value changes, update the input and span
// range.noUiSlider.on('update', function (values, handle) {
//     valuesDivs[handle].innerHTML = values[handle];
//     diffDivs[0].innerHTML = values[1] - values[0];
//     diffDivs[1].innerHTML = values[2] - values[1];
//     diffDivs[2].innerHTML = values[3] - values[2];
// });
  }
}


  const submitValues = () => {
    const submit = document.querySelector('#submit-temperature');
    if (submit) {
    submit.addEventListener('click', (event) => {
    const range = document.getElementById('range');
    const data = range.noUiSlider.get();
    fetch('/temperatures/new', {
      method: 'POST',
      headers:  {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    body: JSON.stringify(data)
      })
    });
  }
}
export { temperatureSlider, submitValues };






