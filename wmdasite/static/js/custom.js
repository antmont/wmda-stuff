$(document).ready(function(){
    /* Enable Bootstrap popovers */
    $('[data-toggle="popover"]').popover();

    /* Update chevrons on filter panel-heading to shown up/down
       as filter panel opens/closes
       Uses filter-collapse for the Bootstrap collapse ID
       Uses filter-label as a custom ID on the span that holds the chevron
     */
    $("#filter-collapse").on("hide.bs.collapse", function(){
      $("#filter-label").html('<i class="glyphicon glyphicon-chevron-down"></i>');
    });
    $("#filter-collapse").on("show.bs.collapse", function(){
      $("#filter-label").html('<i class="glyphicon glyphicon-chevron-up"></i>');
    });

});
