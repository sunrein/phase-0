// DOM Manipulation Challenge


// I worked on this challenge [with: James].


// Add your JavaScript calls to this page:

// Release 0:
var done = document.getElementById("release-0");
done.className = "done";
document.getElementsByClassName("done");


// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:
textChange = document.getElementsByTagName("h1");
textChange[0].innerHTML = "I finished Release 2";



// Release 3:
document.getElementById("release-3");
document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:

var elements = document.getElementsByClassName('release-4');
for (var i = 0; i < elements.length; i++) {
  var element = elements[i];
  element.style.fontSize = "2em";
}


// Release 5:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));
