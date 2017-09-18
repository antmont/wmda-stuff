/* Enable Bootstrap popovers */
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();
});

/* Manual code to collapse/un-collapse blocks with alternating chevrons
   Used with filters in list pages */
$(document).on('click', '.panel-heading span.clickable', function(e){
   var $this = $(this);
	if(!$this.hasClass('panel-collapsed')) {
		$this.parents('.panel').find('.panel-body').slideUp();
		$this.addClass('panel-collapsed');
		$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
	} else {
		$this.parents('.panel').find('.panel-body').slideDown();
		$this.removeClass('panel-collapsed');
		$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
	}
})
