# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
 $("a.fancybox").fancybox({
    #maxWidth : 1000,
    #maxHeight : 1500,
    maxWidth : 300,
    maxHeight: 300;
    scrolling : no,
    #fitToView : true,
    fitToView : false,
    autoSize : true,
    closeClick : true
})