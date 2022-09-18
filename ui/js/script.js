function closeMain() {
	$("body").css("display", "none");
}
function openMain() {
	$("body").css("display", "block");
}


$(".closetypemenu").click(function(){
    $.post('http://royal_eatshop/closetypeselect', JSON.stringify({}));
});

window.addEventListener('message', function (event) {

	var item = event.data;
	
	if (item.message == "showmenuRoyalrequestreceiever") {
		$('#menuRoyalrequester').hide();
		$('#menuRoyaled').hide();
		$('#menuRoyaltype').hide();
		$('#menuRoyalreceiever').show();
		openMain();
	}	
	
	if (item.message == "showmenuRoyalrequestrequester") {
		$('#menuRoyalreceiever').hide();
		$('#menuRoyaled').hide();
		$('#menuRoyaltype').hide();
		$('#menuRoyalrequester').show();
		document.getElementById("secondsremainingrequest").innerHTML = item.remainingseconds;
		openMain();
	}		
	
	if (item.message == "showmenuRoyaled") {
		$('#menuRoyalreceiever').hide();
		$('#menuRoyalrequester').hide();
		$('#menuRoyaltype').hide();
		$('#menuRoyaled').show();
		openMain();
	}	

	if (item.message == "showtypes") {
		$('#menuRoyalreceiever').hide();
		$('#menuRoyalrequester').hide();
		$('#menuRoyaled').hide();
		$('#menuRoyaltype').show();
		openMain();
	}			
	
	if (item.message == "hide") {
		closeMain();
		$('#menuRoyalreceiever').hide();
		$('#menuRoyalrequester').hide();
		$('#menuRoyaltype').hide();
		$('#menuRoyaled').hide();
	}
});

$(".cuadrado-buy-1").click(function () {
	closeMain();
	$('#menuRoyalreceiever').hide();
	$('#menuRoyalrequester').hide();
	$('#menuRoyaled').hide();
	$('#menuRoyaltype').hide();
	$.post('http://royal_eatshop/selecttype', JSON.stringify({
		menuRoyaltype: "type1"
	}));
});

$(".cuadrado-buy-2").click(function () {
	closeMain();
	$('#menuRoyalreceiever').hide();
	$('#menuRoyalrequester').hide();
	$('#menuRoyaled').hide();
	$('#menuRoyaltype').hide();
	$.post('http://royal_eatshop/selecttype', JSON.stringify({
		menuRoyaltype: "type2"
	}));
});

$(".cuadrado-buy-3").click(function () {
	closeMain();
	$('#menuRoyalreceiever').hide();
	$('#menuRoyalrequester').hide();
	$('#menuRoyaled').hide();
	$('#menuRoyaltype').hide();
	$.post('http://royal_eatshop/selecttype', JSON.stringify({
		menuRoyaltype: "type3"
	}));
});

$(".cuadrado-buy-4").click(function () {
	closeMain();
	$('#menuRoyalreceiever').hide();
	$('#menuRoyalrequester').hide();
	$('#menuRoyaled').hide();
	$('#menuRoyaltype').hide();
	$.post('http://royal_eatshop/selecttype', JSON.stringify({
		menuRoyaltype: "type4"
	}));
});

$(".cuadrado-buy-5").click(function () {
	closeMain();
	$('#menuRoyalreceiever').hide();
	$('#menuRoyalrequester').hide();
	$('#menuRoyaled').hide();
	$('#menuRoyaltype').hide();
	$.post('http://royal_eatshop/selecttype', JSON.stringify({
		menuRoyaltype: "type5"
	}));
});

$(".cuadrado-buy-6").click(function () {
	closeMain();
	$('#menuRoyalreceiever').hide();
	$('#menuRoyalrequester').hide();
	$('#menuRoyaled').hide();
	$('#menuRoyaltype').hide();
	$.post('http://royal_eatshop/selecttype', JSON.stringify({
		menuRoyaltype: "type6"
	}));
});