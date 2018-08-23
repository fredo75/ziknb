function positionMapOnPage () {
  window.addEventListener('scroll', (e) => {
    const height = document.getElementById('banner').offsetHeight + 80;
    if (scrollY > height) {
      // console.log(height);
      const map = document.getElementById('map');
      window.requestAnimationFrame(function() {
        map.style.top = `${scrollY - height}px`;
      })
    }
  })

}

export {positionMapOnPage}
