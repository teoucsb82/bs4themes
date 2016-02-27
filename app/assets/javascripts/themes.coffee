# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Set navbar height
  height = document.getElementById("buttons").offsetHeight;
  ScrollPosStyler(document, window, height);

  # Bootstrap js 
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
