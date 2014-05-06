# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
//= require underscore
//= require gmaps/google

handler = Gmaps.build 'Google'
a = 
 provider: {}
 internal: {id: 'map'}
b = -> 
 markers = handler.addMarkers([
 {
     "lat": 0,
     "lng": 0,
     "picture": {
       "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
       "width":  36,
       "height": 36
     },
     "infowindow": "hello!"
   }
 ])
 handler.bounds.extendWith markers
 handler.fitMapToBounds()

handler.buildMap a, b