// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  $(".selectpicker").select2();

  var clock;

  clock = $('.clock').FlipClock({
    autoStart: false,
    callbacks: {
      stop: function() {
        $('.message').html('The clock has stopped!');
      }
    }
  });

  $('#start_reading').on('click', function(){
    clock.start(function(){

    });
    $('#start_reading').hide();
    $('#finish_reading').show();

  });

  $('#finish_reading').on('click', function(){
    clock.stop(function(){
    });
    clock_time = clock.getTime();
    $('#question_row').show();
    $('#time_input').val(clock_time);


  });
});


