import ldBar from 'loadingio-bar';

const loading = () => {
  const bar = document.querySelector('.ldBar');
  if (bar) {
    const bar1 = new ldBar(".ldBar")
    bar1.set(87);
    const bar2 = new ldBar(".ldBar2")
    bar2.set(72);
  }

};

export { loading };
