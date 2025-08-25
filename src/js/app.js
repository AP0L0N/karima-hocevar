// import bootstrap
import 'bootstrap';

// import Swiper JS
import Swiper from 'swiper';
import { Navigation, Pagination, Autoplay, EffectFade } from 'swiper/modules';

// import Swiper styles
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import 'swiper/css/effect-fade';

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

    // Initialize Hero Banner Slider
    const heroBannerSlider = new Swiper('.hero-banner-swiper', {
        modules: [Pagination, Autoplay, EffectFade],
        slidesPerView: 1,
        spaceBetween: 0,
        autoHeight: true,
        loop: true,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
            pauseOnMouseEnter: true,
        },
        
        // Pagination
        pagination: {
            el: '.hero-banner-pagination',
            clickable: true,
            dynamicBullets: false,
        },
        
        // Accessibility
        a11y: {
            prevSlideMessage: 'Previous banner',
            nextSlideMessage: 'Next banner',
            firstSlideMessage: 'This is the first banner',
            lastSlideMessage: 'This is the last banner',
        },
        
        // Smooth transitions
        effect: 'fade',
        fadeEffect: {
            crossFade: true
        },
        
        // Speed
        speed: 800,
    });

});

