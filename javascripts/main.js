// // jQuery exists function
// jQuery.fn.exists = function(){return this.length>0;}
//
// // Carousel autoplay
// $('.carousel').carousel({ interval: 5000 })
//
// // Fetch instagram data from proxy
// $(function(){
//   if ($('#myCarousel').exists()){
//     $.ajax({ 'url': "http://proxy.nicoritschel.com/instagram_recent_urls.json", 'dataType': "jsonp"}).done(function(data) {
//       paginated_instagram = [data.slice(0,4),data.slice(4,8),data.slice(8,12),data.slice(12,16),data.slice(16,20)];
//       paginated_instagram.forEach(function(element, i){
//         console.log(element);
//         $('.carousel-inner').append(
//           '<div class="'+ (i==0 ? "active" : "")+' item"><ul class="instagram-bar">\
//             <li><a href="'+element[0][1]+'"><img src="'+element[0][0]+'" /></a></li>\
//             <li><a href="'+element[1][1]+'"><img src="'+element[1][0]+'" /></a></li>\
//             <li><a href="'+element[2][1]+'"><img src="'+element[2][0]+'" /></a></li>\
//             <li><a href="'+element[3][1]+'"><img src="'+element[3][0]+'" /></a></li>\
//           </ul></div>');
//       });
//     })
//   }
// });
