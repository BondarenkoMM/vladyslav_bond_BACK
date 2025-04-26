import axios from 'axios';

const BASE_URL = 'http://localhost:8087/interesting-place';

export async function getAllPlaces() {
    const response = await axios.get(`${BASE_URL}/getAll`);
    return response.data;
}

export async function redirectToPlace(id) {
    return await axios.post(`${BASE_URL}/redirect-${id}`);
}
