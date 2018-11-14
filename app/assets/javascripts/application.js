// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage

//= require jquery
// = require_tree .
$(function () {
    $('.btn1').on('click', function (e) {
        e.preventDefault();
        console.log( "fghjkl");
        var url = $('input[name=googlemapurl]').val();
        var regex = new RegExp('@(.*),(.*),');
        var lon_lat_match = url.match(regex);
        var lon = lon_lat_match[1];
        var lat = lon_lat_match[2];
        var link = "https://google.com/maps?q=" + lon + "," + lat + "&hl=es$z=14&output=embed"
        $(".link").val(link);
    });
});