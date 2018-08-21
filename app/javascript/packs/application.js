import "bootstrap";

import "../plugins/flatpickr";

import {animatedWave } from '../component/banner'
if (document.getElementById("catch_phrase")){
  animatedWave();
}

import {hideNavbar} from '../component/banner'
if (document.getElementById("catch_phrase")){
  hideNavbar();
}
