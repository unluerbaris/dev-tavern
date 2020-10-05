import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-text', {
    strings: [ "Unity 2D Developer", "Unity 3D Developer", "Game Programmer", "2D Graphic Designer", "3D Graphic Designer", "Sound Designer", "Musician", "Script Writer", "Level Designer", "Unreal Engine Developer" ],
    typeSpeed: 60,
    backSpeed: 50,
    startDelay: 200,
    backDelay: 400,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });
}

export { loadDynamicBannerText };
