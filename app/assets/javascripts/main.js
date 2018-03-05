// initialize and configuration for wow js - animations
wow = new WOW(
  {
    animateClass: 'animated',
    offset:       150,
    mobile:       false, 
    live:         true, 
    callback:     function(box) {
     // console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
    }
  }
);
wow.init();

// initialize tooltips and popovers
$(function () {
$('[data-toggle="tooltip"]').tooltip();
$('[data-toggle=popover]').popover();
})

   var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        slidesPerView: 4,
        spaceBetween: 30,
              nextButton: '.swiper-button-next2',
        prevButton: '.swiper-button-prev2',
        breakpoints: {
            1024: {
                slidesPerView: 3,
                spaceBetween: 40
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            640: {
                slidesPerView: 2,
                spaceBetween: 20
            },
            480: {
                slidesPerView: 1,
                spaceBetween: 10
            }
        }
    });

   var swiper = new Swiper('.home-slider', {
        pagination: '.home-slider-pagination',
        paginationClickable: true,
        nextButton: '.home-slider-next',
        prevButton: '.home-slider-prev'
    });

//testimonials slider
var swiper = new Swiper('.testimonials-slider', {
    pagination: '.testimonials-pagination',
    paginationClickable: true,
    slidesPerView: 1,
    spaceBetween: 30,
    nextButton: '.testimonials-slider-next',
    prevButton: '.testimonials-slider-prev'
});

//brands slider
var swiper = new Swiper('.brands-slider', {
    slidesPerView: 6,
    slidesPerColumn: 1,
    pagination: '.brands-pagination',
    paginationClickable: true,
    nextButton: '.brands-slider-next',
    prevButton: '.brands-slider-prev',
    spaceBetween: 30,
    breakpoints: {
        1024: {
            slidesPerView: 4,
            spaceBetween: 30
        },
        768: {
            slidesPerView: 3,
            spaceBetween: 30
        },
        640: {
            slidesPerView: 2,
            spaceBetween: 20
        },
        320: {
            slidesPerView: 1,
            spaceBetween: 10
        }
    }
});
 
$(window).scroll(function(){
    if ($(window).scrollTop() >= $(window).height()) {
       $('.header').addClass('fixed-header');
    }
    else {
       $('.header').removeClass('fixed-header');
    }
});

// COUNTDOWN
$('#countdown').countdown('2018/03/10', function(event) {
  var $this = $(this).html(event.strftime(''
//+ '<li><span>%w</span> weeks</li> '
    + '<li><span>%D</span> days</li> '
    + '<li><span>%H</span> hr</li> '
    + '<li><span>%M</span> min</li> '
    + '<li><span>%S</span> sec</li>'));
});

// js counters
$('#about-counter').bind('inview', function(event, visible, visiblePartX, visiblePartY) {
    if (visible) {
        $(this).find('.timer').each(function() {
            var $this = $(this);
            $({
                Counter: 0
            }).animate({
                Counter: $this.text()
            }, {
                duration: 2000,
                easing: 'swing',
                step: function() {
                    $this.text(Math.ceil(this.Counter));
                }
            });
        });
        $(this).unbind('inview');
    }
});

// cart widget toggle
$(function() {
    $("#items-counter").click(function() {
        $("body").toggleClass("cart-widget-open");
    });
    $("#cart-widget-close").click(function() {
        $("body").toggleClass("cart-widget-open");
    });

        $(".cart-widget-close-overlay").click(function() {
        $("body").toggleClass("cart-widget-open");
    });

});
 

// swiper config for each product slider (listings, product page etc)
var swiper = new Swiper('.product-slider', {          
        spaceBetween: 0
});

// allow to multiple instances of swiper one the one page / product listing
$(".product-slider").each(function(index, element){
    var $this = $(this);
    $this.addClass("instance-" + index);
    $this.find(".product-pagination-prev").addClass("btn-prev-" + index);
    $this.find(".product-pagination-next").addClass("btn-next-" + index);
    var swiper = new Swiper(".instance-" + index, {
        // your settings ...
         spaceBetween: 30,
        nextButton: ".btn-next-" + index,
        prevButton: ".btn-prev-" + index,
    });
});

// featured list slider
var swiper = new Swiper('.featured-slider', {
    pagination: '.featured-pagination',
    nextButton: '.featured-slider-next',
    prevButton: '.featured-slider-prev',
    paginationClickable: true,
    slidesPerView: 4,
    spaceBetween: 0,
    breakpoints: {
        1024: {
            slidesPerView: 3,
            spaceBetween: 0
        },
        768: {
            slidesPerView: 3,
            spaceBetween: 0
        },
        640: {
            slidesPerView: 1,
            spaceBetween: 0
        },
        320: {
            slidesPerView: 1,
            spaceBetween: 0
        }
    }
});

