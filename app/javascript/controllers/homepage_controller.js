import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="homepage"
export default class extends Controller {
  static targets = ["griddisplay"]
  connect() {
  }
  display() {
    this.griddisplayTarget.classList.remove("d-none")
    this.griddisplayTarget.scrollIntoView()
  }
}
