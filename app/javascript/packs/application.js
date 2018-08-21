import "bootstrap";

import {animatedWave } from '../component/banner'
animatedWave();

import {hideNavbar} from '../component/banner'
console.log(window.location);
console.log(window.location.href === '');
if (document.getElementById("catch_phrase")){
  hideNavbar();
}
