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

import {selectCategory} from '../component/instrument'

selectCategory()

import {positionMapOnPage} from '../component/map_position'
if (document.getElementById("map")){
  positionMapOnPage();
}

