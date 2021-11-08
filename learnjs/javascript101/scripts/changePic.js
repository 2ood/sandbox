let myImage = document.querySelector('img');

myImage.onclick = function() {
	let mySrc2= myImage.getAttribute('src');
	
	if(mySrc2 === 'img/javascript1.png') myImage.setAttribute('src','img/javascript2.png');
	else myImage.setAttribute('src','img/javascript1.png');
}