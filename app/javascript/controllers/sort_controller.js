import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sort"
export default class extends Controller {
  connect() {
    console.log("Hiya from sort controller")
  }

  static targets = []

  sort(event) {
    const sortBy = event.target.value
    const url = new URL(window.location.href)
    url.searchParams.set("sort", sortBy)
    window.location.href = url.toString()
  }

}
