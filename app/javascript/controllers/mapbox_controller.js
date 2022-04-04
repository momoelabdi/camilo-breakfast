import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"


export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

  //   const map = new mapboxgl.Map({
  //   container: 'map',
  // });

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    // Afficher la barre de recherche dans la map index
    this.map.addControl(new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }));


      // Add the control to the map.
      const geocoder = new MapboxGeocoder({
        accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl
      });
      document.getElementById('geocoder').appendChild(geocoder.onAdd(map));

  }

  #addMarkersToMap() {
    console.log(this.markersValue)
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window) // add this
      new mapboxgl.Marker({
        color: "#BF9270"
      })
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup) // add this
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
