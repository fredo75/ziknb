let xs=[]
for(let i=0; i <= 500; i++) {
  xs.push(i);
}
let t=0;

function animatedWave () {
  let points= xs.map(x => {
  let y = 200+100 * Math.sin((x+t)/20);
  return [x, y];
  })

  let path = "M" + points.map(p => {
    return p[0]+ "," + p[1];

  }).join("L")

  document.querySelector("path").setAttribute("d", path);

  t+=1;

  requestAnimationFrame(animatedWave);

}

function hideNavbar (){

$('.navbar-wagon').addClass('hidden');
}


export { animatedWave }
export { hideNavbar }
