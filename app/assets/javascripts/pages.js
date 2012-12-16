function slideAndScroll(identifier) {
    object = $(identifier);
    object.slideToggle("fast", function () {
	if (!object.is(':visible')) {
	    $.scrollTo(object, "fast");
	}
    });
    return false;
}
