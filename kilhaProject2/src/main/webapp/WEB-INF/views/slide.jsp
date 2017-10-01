<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ERP Lite System</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" rel="stylesheet" type="text/css">
<style>
html, body {
  width: 100vw;
  height: 100vh;
  overflow: hidden;
}

.carousel {
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-animation: rotateHue infinite 20s linear;
  animation: rotateHue infinite 20s linear;
  -webkit-animation-delay: 0.625s;
  animation-delay: 0.625s;
}
@-webkit-keyframes 
rotateHue { 0% {
 -webkit-filter: hue-rotate(0deg);
 filter: hue-rotate(0deg);
}
 20% {
 -webkit-filter: hue-rotate(0deg);
 filter: hue-rotate(0deg);
}
 25% {
 -webkit-filter: hue-rotate(90deg);
 filter: hue-rotate(90deg);
}
 45% {
 -webkit-filter: hue-rotate(90deg);
 filter: hue-rotate(90deg);
}
 50% {
 -webkit-filter: hue-rotate(180deg);
 filter: hue-rotate(180deg);
}
 70% {
 -webkit-filter: hue-rotate(180deg);
 filter: hue-rotate(180deg);
}
 75% {
 -webkit-filter: hue-rotate(270deg);
 filter: hue-rotate(270deg);
}
 95% {
 -webkit-filter: hue-rotate(270deg);
 filter: hue-rotate(270deg);
}
 100% {
 -webkit-filter: hue-rotate(360deg);
 filter: hue-rotate(360deg);
}
}
@keyframes 
rotateHue { 0% {
 -webkit-filter: hue-rotate(0deg);
 filter: hue-rotate(0deg);
}
 20% {
 -webkit-filter: hue-rotate(0deg);
 filter: hue-rotate(0deg);
}
 25% {
 -webkit-filter: hue-rotate(90deg);
 filter: hue-rotate(90deg);
}
 45% {
 -webkit-filter: hue-rotate(90deg);
 filter: hue-rotate(90deg);
}
 50% {
 -webkit-filter: hue-rotate(180deg);
 filter: hue-rotate(180deg);
}
 70% {
 -webkit-filter: hue-rotate(180deg);
 filter: hue-rotate(180deg);
}
 75% {
 -webkit-filter: hue-rotate(270deg);
 filter: hue-rotate(270deg);
}
 95% {
 -webkit-filter: hue-rotate(270deg);
 filter: hue-rotate(270deg);
}
 100% {
 -webkit-filter: hue-rotate(360deg);
 filter: hue-rotate(360deg);
}
}

.carousel__shutters {
  position: absolute;
  height: 150vmax;
  width: 150vmax;
  left: calc(50% - 75vmax);
  top: calc(50% - 75vmax);
  pointer-events: none;
  z-index: 2;
  -webkit-animation: rotateFrame 10s linear infinite;
  animation: rotateFrame 10s linear infinite;
}
@-webkit-keyframes 
rotateFrame { 0% {
 -webkit-transform: rotate(0deg);
 transform: rotate(0deg);
}
 100% {
 -webkit-transform: rotate(180deg);
 transform: rotate(180deg);
}
}
@keyframes 
rotateFrame { 0% {
 -webkit-transform: rotate(0deg);
 transform: rotate(0deg);
}
 100% {
 -webkit-transform: rotate(180deg);
 transform: rotate(180deg);
}
}

.carousel__shutters:before, .carousel__shutters:after {
  content: '';
  position: absolute;
  height: 100%;
  width: 100%;
  left: 50%;
  -webkit-transform: translate3d(-50%, 0, 0);
  transform: translate3d(-50%, 0, 0);
  background-color: #b3401a;
  pointer-events: auto;
}

.carousel__shutters:before {
  bottom: 50%;
  -webkit-animation: openTop 5s infinite;
  animation: openTop 5s infinite;
}
@-webkit-keyframes 
openTop { 0% {
 -webkit-transform: translate3d(-50%, 0, 0);
 transform: translate3d(-50%, 0, 0);
 -webkit-animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
 animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
}
 40% {
 -webkit-transform: translate3d(-50%, -65vmax, 0);
 transform: translate3d(-50%, -65vmax, 0);
 animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
 70% {
 -webkit-transform: translate3d(-50%, -65vmax, 0);
 transform: translate3d(-50%, -65vmax, 0);
 animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
 100% {
 -webkit-transform: translate3d(-50%, 0, 0);
 transform: translate3d(-50%, 0, 0);
 -webkit-animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
 animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
}
@keyframes 
openTop { 0% {
 -webkit-transform: translate3d(-50%, 0, 0);
 transform: translate3d(-50%, 0, 0);
 -webkit-animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
 animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
}
 40% {
 -webkit-transform: translate3d(-50%, -65vmax, 0);
 transform: translate3d(-50%, -65vmax, 0);
 animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
 70% {
 -webkit-transform: translate3d(-50%, -65vmax, 0);
 transform: translate3d(-50%, -65vmax, 0);
 animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
 100% {
 -webkit-transform: translate3d(-50%, 0, 0);
 transform: translate3d(-50%, 0, 0);
 -webkit-animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
 animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
}

.carousel__shutters:after {
  top: 50%;
  -webkit-animation: openBottom 5s infinite;
  animation: openBottom 5s infinite;
}
@-webkit-keyframes 
openBottom { 0% {
 -webkit-transform: translate3d(-50%, 0, 0);
 transform: translate3d(-50%, 0, 0);
 -webkit-animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
 animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
}
 40% {
 -webkit-transform: translate3d(-50%, 65vmax, 0);
 transform: translate3d(-50%, 65vmax, 0);
 animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
 70% {
 -webkit-transform: translate3d(-50%, 65vmax, 0);
 transform: translate3d(-50%, 65vmax, 0);
 animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
 100% {
 -webkit-transform: translate3d(-50%, 0, 0);
 transform: translate3d(-50%, 0, 0);
 -webkit-animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
 animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
}
@keyframes 
openBottom { 0% {
 -webkit-transform: translate3d(-50%, 0, 0);
 transform: translate3d(-50%, 0, 0);
 -webkit-animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
 animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
}
 40% {
 -webkit-transform: translate3d(-50%, 65vmax, 0);
 transform: translate3d(-50%, 65vmax, 0);
 animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
 70% {
 -webkit-transform: translate3d(-50%, 65vmax, 0);
 transform: translate3d(-50%, 65vmax, 0);
 animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
 100% {
 -webkit-transform: translate3d(-50%, 0, 0);
 transform: translate3d(-50%, 0, 0);
 -webkit-animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
 animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
}
}

.carousel__slides {
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  background-color: #b3401a;
}

.carousel__slide {
  position: absolute;
  height: 100%;
  width: 100%;
  opacity: 0;
  -webkit-animation: showHideSlide infinite 20s steps(1);
  animation: showHideSlide infinite 20s steps(1);
}
@-webkit-keyframes 
showHideSlide { 0% {
 opacity: 1;
 pointer-events: auto;
 z-index: 1;
}
 25% {
 opacity: 0;
 pointer-events: none;
 z-index: -1;
}
 100% {
 opacity: 0;
 pointer-events: none;
 z-index: -1;
}
}
@keyframes 
showHideSlide { 0% {
 opacity: 1;
 pointer-events: auto;
 z-index: 1;
}
 25% {
 opacity: 0;
 pointer-events: none;
 z-index: -1;
}
 100% {
 opacity: 0;
 pointer-events: none;
 z-index: -1;
}
}

.carousel__slide:nth-child(1) {
  -webkit-animation-delay: 0s;
  animation-delay: 0s;
}

.carousel__slide:nth-child(1) .carousel__slideBg { background-image: url(images/pic_pur.jpg); }
/* url(https://unsplash.it/g/1500/2200?image=838) */
.carousel__slide:nth-child(2) {
  -webkit-animation-delay: 5s;
  animation-delay: 5s;
}

.carousel__slide:nth-child(2) .carousel__slideBg { background-image: url(images/pic_fac.jpg); }

.carousel__slide:nth-child(3) {
  -webkit-animation-delay: 10s;
  animation-delay: 10s;
}

.carousel__slide:nth-child(3) .carousel__slideBg { background-image: url(images/pic_ware.jpg); }

.carousel__slide:nth-child(4) {
  -webkit-animation-delay: 15s;
  animation-delay: 15s;
}

.carousel__slide:nth-child(4) .carousel__slideBg { background-image: url(images/pic_market.jpg); }

.carousel__slideBg {
  position: relative;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  background-size: cover;
  background-position: center;
  background-color: #b3401a;
  background-blend-mode: hard-light;
  opacity: 1;
  z-index: -1;
  -webkit-animation: bgInOut 5s infinite;
  animation: bgInOut 5s infinite;
}
@-webkit-keyframes 
bgInOut { 0% {
 -webkit-transform: rotate(-45deg) scale(1.1);
 transform: rotate(-45deg) scale(1.1);
 -webkit-animation-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);
 animation-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);
}
 33% {
 -webkit-transform: rotate(0deg);
 transform: rotate(0deg);
}
 50% {
 -webkit-transform: rotate(0deg);
 transform: rotate(0deg);
}
 66% {
 -webkit-transform: rotate(0deg);
 transform: rotate(0deg);
 -webkit-animation-timing-function: cubic-bezier(0.895, 0.03, 0.685, 0.22);
 animation-timing-function: cubic-bezier(0.895, 0.03, 0.685, 0.22);
}
 100% {
 -webkit-transform: rotate(45deg) scale(0.9);
 transform: rotate(45deg) scale(0.9);
}
}
@keyframes 
bgInOut { 0% {
 -webkit-transform: rotate(-45deg) scale(1.1);
 transform: rotate(-45deg) scale(1.1);
 -webkit-animation-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);
 animation-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);
}
 33% {
 -webkit-transform: rotate(0deg);
 transform: rotate(0deg);
}
 50% {
 -webkit-transform: rotate(0deg);
 transform: rotate(0deg);
}
 66% {
 -webkit-transform: rotate(0deg);
 transform: rotate(0deg);
 -webkit-animation-timing-function: cubic-bezier(0.895, 0.03, 0.685, 0.22);
 animation-timing-function: cubic-bezier(0.895, 0.03, 0.685, 0.22);
}
 100% {
 -webkit-transform: rotate(45deg) scale(0.9);
 transform: rotate(45deg) scale(0.9);
}
}

.carousel__slideContent {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate3d(-50%, -50%, 0);
  transform: translate3d(-50%, -50%, 0);
  color: white;
  font-family: "Abril Fatface", sans-serif;
  line-height: 0.8;
  letter-spacing: -0.025em;
  z-index: 2;
  opacity: 1;
  text-shadow: 0 0 0.5em rgba(179, 64, 26, 0.25);
  mix-blend-mode: lighten;
}

.carousel__slideContent span {
  display: block;
  font-size: 15vmin;
}

.button {
  font-family: 'Roboto Mono', sans-serif;
  text-decoration: none;
  font-weight: 800;
  text-transform: uppercase;
  font-size: 2vmin;
  display: inline-block;
  position: relative;
  border: 3px solid white;
  box-shadow: -0.5vmin 0.5vmin 0 rgba(255, 255, 255, 0.5);
  background: transparent;
  margin-top: 5vmin;
  mix-blend-mode: lighten;
  color: white;
  padding: 2vmin 2vmin 1.8vmin 2vmin;
  letter-spacing: 0.1em;
  text-shadow: none;
  line-height: 1;
  -webkit-transform: translate3d(0.5vmin, -0.5vmin, 0);
  transform: translate3d(0.5vmin, -0.5vmin, 0);
  -webkit-transition: all 100ms linear;
  transition: all 100ms linear;
}

.button:hover {
  -webkit-transform: translate3d(1vmin, -1vmin, 0);
  transform: translate3d(1vmin, -1vmin, 0);
  box-shadow: -1vmin 1vmin 0 rgba(255, 255, 255, 0.5);
  background: white;
  color: black;
}

.button:active {
  -webkit-transform: translate3d(0px, 0px, 0);
  transform: translate3d(0px, 0px, 0);
  box-shadow: 0px 0px 0 rgba(255, 255, 255, 0.5);
}
</style>
</head>

<body>
<div class="carousel">
  <div class="carousel__slides">
    <div class="carousel__slide">
      <div class="carousel__slideBg"></div>
      <div class="carousel__slideContent"> <span>ERP Lite</span> <span style="font-size: 50px;">Make profit by efficient purchases.</span> <a class="button" href="loginForm" target="/black">Let's Start</a> </div>
    </div>
    <div class="carousel__slide">
      <div class="carousel__slideBg"></div>
      <div class="carousel__slideContent"> <span>ERP Lite</span> <span style="font-size: 50px;">Improve productivity by analyzing information.</span> <a class="button" href="loginForm" target="/black">Let's Start</a> </div>
    </div>
    <div class="carousel__slide">
      <div class="carousel__slideBg"></div>
      <div class="carousel__slideContent"> <span>ERP Lite</span> <span style="font-size: 50px;">Improve the quality of logistics management.</span> <a class="button" href="loginForm" target="/black">Let's Start</a> </div>
    </div>
    <div class="carousel__slide">
      <div class="carousel__slideBg"></div>
      <div class="carousel__slideContent"> <span>ERP Lite</span> <span style="font-size: 50px;">Improve customer satisfaction with optimal management.</span> <a class="button" href="loginForm" target="/black">Let's Start</a> </div>
    </div>
  </div>
  <div class="carousel__shutters"></div>
</div>
</body>
</html>
