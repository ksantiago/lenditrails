var app = app || {};

$(document).ready(function() {

  // toggleClass
  // $(".show-more").click(function() {
  //     console.log('yayyyyy');
  //       if($(".current-speaker-bio").hasClass("show-more-height")) {
  //           $(this).text("Show Less");
  //       } else {
  //           $(this).text("Show More");
  //       }

  //       $(".current-speaker-bio").toggleClass("show-more-height");
  //   });

  // $('.current-speaker-bio').readmore({
  //   maxHeight: 120,
  //   moreLink: '<a href="#">Read more</a>',
  //   lessLink: '<a href="#">Close</a>'
  // });


  // shorten.js
  // $('.past-speaker-bio').shorten({
  //   moreText: 'Read More',
  //   lessText: 'Read Less',
  //   showChars: '210',
  // });


  // colorbox for current speakers
  $('.current-speaker').colorbox({inline:true, rel:'current-speaker', innerWidth:"780px", innerHeight:"430px",});

  // colorbox for the past speakers
  $('.past-speaker').colorbox({inline:true, innerWidth:"780px", innerHeight:"430px", rel:'past-speaker'});


});
