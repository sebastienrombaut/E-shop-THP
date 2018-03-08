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
 
