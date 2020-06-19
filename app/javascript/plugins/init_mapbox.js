import mapboxgl from "mapbox-gl";

const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};
const addMapMarkers = (map, markers) => {
    markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

        if (marker.lng)
            new mapboxgl.Marker()
            .setLngLat([marker.lng, marker.lat])
            .setPopup(popup) // add this
            .addTo(map);
    });
};

const initMapbox = () => {
    const mapElement = document.getElementById('grid-map');

    if (mapElement) { // only build a map if there's a div#map to inject into
        mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
        const map = new mapboxgl.Map({
            container: 'grid-map',
            style: 'mapbox://styles/mapbox/streets-v10'
        });

        const markers = JSON.parse(mapElement.dataset.markers);
        addMapMarkers(map, markers);
        fitMapToMarkers(map, markers);
    }
};
export { initMapbox };