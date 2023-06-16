// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
const request = new XMLHttpRequest();
const sendReq = () => {
  console.log('bang i sent');
  const id = <%= product.id %>
    console.log(`the id = ${id}`)
  request.open("POST", `/lineitems?product_id=${id}`)
  request.setRequestHeader("X-CSRF-Token", csrf_token());
  request.send();
}
request.onload = () => {
  console.log('gotcha');
  const data = request.responceText;
  const cart = document.querySelector('#cart');
  cart.innerHtml = data;
}
