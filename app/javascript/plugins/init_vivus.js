import Vivus from 'vivus';

const init_Vivus = () => {
  new Vivus('ia-logo', {
    // file: '/../assets/images/svg-logo.svg',
    file: "app/assets/images/svg-logo.svg",
    duration: 100});
};

export { init_Vivus };
