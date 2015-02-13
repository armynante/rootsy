
jQuery(document).ready(function($) {
    
    //initialize foundation alerts
    //Reflow will make Foundation check the DOM for any elements and re-apply any listeners to them.
    $(document).foundation('alert', 'reflow');
    $(document).foundation('reveal', 'reflow');
    $(document).foundation('topbar', 'reflow');
    $(document).foundation('equalizer', 'reflow');
    

    /* commenting out scrollspy as we're using foundation's top nav instead  
        leaving here for now in case we need to re do nav or add fancy on-scroll parallax effects- sebastian
     */
    
    /* ======= Scrollspy ======= */
    //$('body').scrollspy({ target: '#header', offset: 400})
    
    /* ======= Fixed header when scrolled ======= */
    
    $(window).bind('scroll', function() {
         if ($(window).scrollTop() > 300) {
             $('#animated_bg').addClass('animate');
         }
         else {
             $('#animated_bg').removeClass('animate');
         }

         console.log('scroll: ' + $(window).scrollTop());
    });
   
    /* ======= ScrollTo ======= */
    // $('a.scrollto').on('click', function(e){
        
    //     //store hash
    //     var target = this.hash;
                
    //     e.preventDefault();
        
    //     $('body').scrollTo(target, 800, {offset: -70, 'axis':'y', easing:'easeOutQuad'});
    //     //Collapse mobile menu after clicking
    //     if ($('.navbar-collapse').hasClass('in')){
    //         $('.navbar-collapse').removeClass('in').addClass('collapse');
    //     }
        
    // });

    

});


