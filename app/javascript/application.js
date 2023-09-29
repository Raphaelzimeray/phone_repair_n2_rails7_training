// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"


// selectionner les li avec queryselectorall

// iterer

// changer le innertext ou innerHTML

const li = document.querySelectorAll(".abba");

console.log(li);

li.forEach((element) => {

  element.innerText = "Hello";

});
