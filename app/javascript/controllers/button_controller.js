import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="button"
export default class extends Controller {

  connect() {
    console.log("Hello from button controller.js")
  }

}
