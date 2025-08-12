// import bootstrap
import 'bootstrap';

// import Swiper JS
import Swiper from 'swiper';
import { Navigation, Pagination, Autoplay } from 'swiper/modules';

// import Swiper styles
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';

document.addEventListener('DOMContentLoaded', function() {

    // Initialize Testimonials Slider
    const testimonialsSlider = new Swiper('.testimonials-swiper', {
        modules: [Navigation, Pagination],
        slidesPerView: 1,
        spaceBetween: 30,
        loop: false,
        autoplay: false,
        
        // Responsive breakpoints
        breakpoints: {
            768: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
            1024: {
                slidesPerView: 3,
                spaceBetween: 40,
            }
        },
        
        // Navigation
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        
        // Pagination
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
            dynamicBullets: false,
        },
        
        // Accessibility
        a11y: {
            prevSlideMessage: 'Previous testimonial',
            nextSlideMessage: 'Next testimonial',
            firstSlideMessage: 'This is the first testimonial',
            lastSlideMessage: 'This is the last testimonial',
        }
    });

});

