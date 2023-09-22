import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {
  // connect() {
  //   console.log("home controller connected :D")
  // }

  scroll () {
    window.scrollTo(0,document.body.scrollHeight);
  }
}
