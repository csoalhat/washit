# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#time-slots td").on "click", ->
    date = $(@).data("day")
    time = $(@).data("time").split("-")

    $("#order_pickup_time").val "#{date} #{time[0]}"
    $("#order_return_time").val "#{date} #{time[1]}"