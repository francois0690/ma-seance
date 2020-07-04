import ldBar from 'loadingio-bar';

const loading = () => {
  const bar = new ldBar(".ldBar")
  bar.set(87);
  const bar2 = new ldBar(".ldBar2")
  bar2.set(72);
};

export { loading };
