import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit"
export default class extends Controller {
  static targets = ["button", "spinner"]

  handleSubmit() {
    this.buttonTarget.disabled = true
    this.spinnerTarget.classList.remove("d-none")
  }
}