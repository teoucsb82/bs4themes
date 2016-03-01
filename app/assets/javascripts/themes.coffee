# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Set themes side navbar affix height
  if $("#navbar").length
    height = document.getElementById("navbar").offsetHeight
    height = height - 110;
    ScrollPosStyler(document, window, height);
  if $("#blogs").length
    height = $("h1").get(0).offsetHeight
    height = height + 250;
    ScrollPosStyler(document, window, height);

  # Start Bootstrap js 
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()

  # Handle navbar toggler
  if $("header .navbar").hasClass("navbar-light bg-faded")
    $(".js-navbar-toggle[data-classes='navbar-light bg-faded']").addClass("active")
  else if $("header .navbar").hasClass("navbar-dark bg-inverse")
    $(".js-navbar-toggle[data-classes='navbar-dark bg-inverse']").addClass("active")
  else if $("header .navbar").hasClass("bg-primary")
    $(".js-navbar-toggle[data-classes='navbar-dark bg-primary']").addClass("active")

  $(".js-navbar-toggle").click ->
    $("header .navbar").removeClass("navbar-light navbar-dark bg-primary bg-inverse bg-faded")
    $("header .navbar").addClass($(this).data("classes"))

  # Footer toggler
  window.onscroll = (ev) ->
    if window.innerHeight + window.scrollY >= document.body.offsetHeight
      $("footer.footer").addClass("visible")
    else
      $("footer.footer").removeClass("visible")
    return

  # google ads
  (adsbygoogle = window.adsbygoogle || []).push({});
