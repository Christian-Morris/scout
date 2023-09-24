import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {
  connect() {
    window.scrollTo(0, 0);
  }

  scroll () {
    window.scrollTo(0,document.body.scrollHeight);
  }

  cancelScroll (event) {
    event.preventDefault();
  }
}
