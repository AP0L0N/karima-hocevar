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
    const testimonialsSliderWrapper = document.querySelector('.testimonials-slider-wrapper');
    const maxTestimonialsPerView = testimonialsSliderWrapper ? 
        parseInt(testimonialsSliderWrapper.getAttribute('data-number-of-testimonials-per-view')) || 4 : 4;
    
    // Create responsive breakpoints that gradually decrease from max to 1
    const createBreakpoints = (max) => {
        const breakpoints = {};
        
        // Mobile: 1 testimonial (default)
        // Small tablets (576px+): 2 testimonials (if max >= 2)
        if (max >= 2) {
            breakpoints[576] = {
                slidesPerView: 2,
                spaceBetween: 20,
            };
        }
        
        // Medium tablets (768px+): 3 testimonials (if max >= 3)
        if (max >= 3) {
            breakpoints[768] = {
                slidesPerView: 3,
                spaceBetween: 30,
            };
        }
        
        // Large tablets/small desktops (992px+): 4 testimonials (if max >= 4)
        if (max >= 4) {
            breakpoints[992] = {
                slidesPerView: 4,
                spaceBetween: 30,
            };
        }
        
        // Large desktops (1200px+): max testimonials
        if (max >= 5) {
            breakpoints[1200] = {
                slidesPerView: max,
                spaceBetween: 40,
            };
        }
        
        return breakpoints;
    };
    
    const testimonialsSlider = new Swiper('.testimonials-swiper', {
        modules: [Navigation, Pagination],
        slidesPerView: 1,
        spaceBetween: 20,
        loop: false,
        autoplay: false,
        
        // Responsive breakpoints based on numberOfTestimonialsPerView
        breakpoints: createBreakpoints(maxTestimonialsPerView),
        
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


    // Handle all external links
    // Add target="_blank" and rel="noopener nofollow" to all external links
    const allLinks = document.querySelectorAll('a[href]');
    allLinks.forEach(link => {
        try {
            const href = link.getAttribute('href');

            // Ignore empty, anchor, javascript, mailto, tel, and relative links
            if (
                !href ||
                href.startsWith('#') ||
                href.startsWith('javascript:') ||
                href.startsWith('mailto:') ||
                href.startsWith('tel:') ||
                href.startsWith('/') ||
                href.startsWith(window.location.origin)
            ) {
                return;
            }

            // If the link is external (different origin)
            const linkUrl = new URL(href, window.location.origin);
            if (linkUrl.origin !== window.location.origin) {
                link.setAttribute('target', '_blank');
                link.setAttribute('rel', 'noopener nofollow');
            }

        } catch (e) {
            // Ignore invalid URLs
        }
    });
});

