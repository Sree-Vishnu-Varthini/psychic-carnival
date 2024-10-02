(function () {
    var time = new Date(),
      hour = time.getHours() / 12 * 360 + time.getMinutes() / 60 * 30,
      minutes = time.getMinutes() / 60 * 360 + time.getSeconds() / 60 * 6,
      seconds = time.getSeconds() / 60 * 360,
  
      animation = [
        '@keyframes sec-handle{from{transform: rotate(' + seconds + 'deg);}to{transform:rotate(' + (seconds + 360) + 'deg);}}',
        '@keyframes min-handle{from{transform: rotate(' + minutes + 'deg);}to{transform:rotate(' + (minutes + 360) + 'deg);}}',
        '@keyframes hour-handle{from{transform: rotate(' + hour + 'deg);}to{transform:rotate(' + (hour + 360) + 'deg);}}',
      ].join('');
    document.querySelector('#clock-animation').innerHTML = animation;
  })();
  
  console.log(Date());