$(document).ready(function() {
  $('#typeIt').typeIt({
     speed: 50,
     autoStart: false
})
.tiPause(1500)
.tiDelete()
.tiType('<h3>Lawbyte is a comprehensive Legal Practice Management system, available in 2 versions to cater for different practice needs.</h3>')
.tiType('<strong>Sales and Support: (01253) 290 300</Strong>')
});