import AOS from "aos";
import "aos/dist/aos.css"; // You can also use <link> for styles

// javascript on scroll animations
AOS.init();

import { backToTop } from "./back_to_top"
import { beerScrolling } from "./beer_scrolling"

if (document.getElementById("back-to-top-anchor")) {
    backToTop();
}
if (document.querySelector(".cup")) {
    beerScrolling();
}