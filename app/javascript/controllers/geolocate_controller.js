import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="geolocate"
export default class extends Controller {
  static targets = [ "origin" ]

  getGeoLocationCoords() {
    navigator.geolocation.getCurrentPosition((position) => {
      const { latitude, longitude } = position.coords
      this.originTarget.value = `${latitude}, ${longitude}`
    })
  }

}
