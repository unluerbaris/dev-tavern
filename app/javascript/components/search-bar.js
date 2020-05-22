import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-text', {
    strings: ["JavaScript Developer", "OpenGL Programmer", "Sprite Artist", "Unity Developer", "Ruby on Rails Developer", "Sound Engineer", "Mobile UX/UI Designer"],
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
