import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-text', {
    strings: ["Immigration", "Hospital", "Technical"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
