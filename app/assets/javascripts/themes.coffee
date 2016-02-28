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

  if $("header .navbar").hasClass("navbar-light bg-faded")
    $(".js-navbar-toggle[data-classes='navbar-light bg-faded']").addClass("active")
  else if $("header .navbar").hasClass("navbar-dark bg-inverse")
    $(".js-navbar-toggle[data-classes='navbar-dark bg-inverse']").addClass("active")
  else if $("header .navbar").hasClass("bg-primary")
    $(".js-navbar-toggle[data-classes='navbar-dark bg-primary']").addClass("active")

  $(".js-navbar-toggle").click ->
    $("header .navbar").removeClass("navbar-light navbar-dark bg-primary bg-inverse bg-faded")
    $("header .navbar").addClass($(this).data("classes"))
