# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  filterOrders = (status) ->
    $(".order[data-status!='#{status}']").hide()
    $(".order[data-status='#{status}']").show()

  # $("#time-slots td").on "click", ->
    # date = $(@).data("day")
    # time = $(@).data("time").split("-")

    # $("#order_pickup_time").val "#{date} #{time[0]}"
    # $("#order_return_time").val "#{date} #{time[1]}"

  $("#order-status-selection input[type='radio']").on "change", ->
    status = $(@).data("status")
    console.log "you clicked on #{status}"
    filterOrders(status) 

  filterOrders("pending") 




    # GET /orders/status/(archived)

    # # $.get '/orders/status/#{status}/', callback, 'json'
    # $.ajax
    #   url: "/orders/status/#{status}"
    #   type: 'GET'
    #   dataType: "json"
    #   error: (jqXHR, textStatus, errorThrown) ->
    #     console.log(errorThrown)
    #   success: (data, status, response) ->
    #     console.log(data)
    #     # CALL YOUR FUNCTION HERE
    #     # data is the object that contains all info returned
      
    # # Function which takes data as an argument
    # # Do something, e.g. find element, replace it's html with something
    # # _.each(data) - THIS IS UNDERSCORE
    # # <h1>data.title</h1>

