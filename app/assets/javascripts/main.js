
jQuery(document).ready(function($) {
    
    //initialize foundation alerts
    //Reflow will make Foundation check the DOM for any elements and re-apply any listeners to them.
    $(document).foundation('alert', 'reflow');
    

    /* commenting out scrollspy as we're using foundation's top nav instead  
        leaving here for now in case we need to re do nav. - sebastian
     */
    
    /* ======= Scrollspy ======= */
    //$('body').scrollspy({ target: '#header', offset: 400});
    
    /* ======= Fixed header when scrolled ======= */
    
    // $(window).bind('scroll', function() {
    //      if ($(window).scrollTop() > 50) {
    //          $('#header').addClass('navbar-fixed-top');
    //      }
    //      else {
    //          $('#header').removeClass('navbar-fixed-top');
    //      }
    // });
   
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


