import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {
  static targets = ["selectedPlayers"]
  static values = { players: Number }

  connect() {
    window.scrollTo(0, 0);
  }

  scroll () {
    window.scrollTo(0,document.body.scrollHeight);
  }

  cancelScroll (event) {
    event.preventDefault();
  }

  show(event) {
    const playersValue = event.target.getAttribute("data-players");
    this.selected_players = parseInt(playersValue, 10);
  }

  start (event) {
    const selectedDifficulty = event.target.getAttribute("data-difficulty");
    const linkPath = `/game?difficulty=${selectedDifficulty}&players=${this.selected_players}`

    // Create a hidden link and trigger it
    const link = document.createElement("a");
    link.href = linkPath;
    link.style.display = "none";
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  }
}
