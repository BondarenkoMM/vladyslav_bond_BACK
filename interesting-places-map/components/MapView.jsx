import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet';
import { useEffect, useState } from 'react';
import { getAllPlaces } from '../services/placeService.js';
import L from 'leaflet';
import markerIcon2x from 'leaflet/dist/images/marker-icon-2x.png';
import markerIcon from 'leaflet/dist/images/marker-icon.png';
import markerShadow from 'leaflet/dist/images/marker-shadow.png';

delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
    iconRetinaUrl: markerIcon2x,
    iconUrl: markerIcon,
    shadowUrl: markerShadow,
});

function MapView() {
    const [places, setPlaces] = useState([]);
    const [activeMarkerId, setActiveMarkerId] = useState(null);

    useEffect(() => {
        const fetchPlaces = async () => {
            try {
                const data = await getAllPlaces();
                setPlaces(data);
            } catch (error) {
                console.error('Failed to load places', error);
            }
        };

        fetchPlaces();
    }, []);

    function handleRedirect(mapLink) {
        try {
            window.open(mapLink, '_blank');
        } catch (error) {
            console.error('Failed to redirect', error);
        }
    }

    const handleMarkerClick = (placeId) => {
        setActiveMarkerId(placeId);
    };

    const handlePopupClose = () => {
        setActiveMarkerId(null);
    };

    return (
        <MapContainer center={[52.2297, 21.0122]} zoom={6} style={{ height: '100%', width: '100%' }}>
            <TileLayer
                attribution='&copy; <a href="https://osm.org/copyright">OpenStreetMap</a>'
                url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            />
            {places.map((place) => (
                place.lat && place.lon ? (
                    <Marker
                        key={place.id}
                        position={[place.lat, place.lon]}
                        eventHandlers={{
                            click: () => handleMarkerClick(place.id),
                        }}
                    >
                        {activeMarkerId === place.id && (
                            <Popup onClose={handlePopupClose}>
                                <div>
                                    <h3>{place.name}</h3>
                                    <p style={{ fontSize: '0.9em', color: 'lightgray', marginBottom: '5px' }}>
                                        {place.mapLink}
                                    </p>
                                    <p style={{ marginTop: '10px' }}>{place.shortDescription}</p>
                                    <button
                                        style={{
                                            padding: '6px 12px',
                                            backgroundColor: '#4F46E5',
                                            color: 'white',
                                            border: 'none',
                                            borderRadius: '5px',
                                            cursor: 'pointer',
                                        }}
                                        onClick={() => handleRedirect(place.descriptionLink)}
                                    >
                                        Więcej
                                    </button>
                                </div>
                            </Popup>
                        )}
                    </Marker>
                ) : null
            ))}
        </MapContainer>
    );
}

export default MapView;
