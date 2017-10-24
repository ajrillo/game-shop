$(document).ready(function() {                                                       
outtoConfirm = function() {

$('body').css('background-color','#804000');

$('h1').after('<center> <h2> Check all data. Make changes if necessary. Then hit the <b>"Submit"</b> button </h2></center>')

var namein, infoin, linktogamein;
namein = $('#game_name').val();
infoin = $('#game_info').val();
linktogamein= $('#game_linkToGame').val();

$('#game_name').css('background-color', 'yellow');
$('#game_name').val(namein);

$('#game_info').css('background-color', 'yellow');
$('#game_info').val(infoin);

$('#game_linkToGame').css('background-color', 'yellow');
$('#game_linkToGame').val(linktogamein);
$('#game_linkToGame').after('<p><input name="submitButton" type="submit" id="submission" value="Submit Confirmed Data" length = 20> </p>');

$('#confirmButton').remove()
$('#submission').hover(function()
{ 
$(this).css('background-color', 'tan') 
});
};

$('#confirmButton').click(outtoConfirm); 
});