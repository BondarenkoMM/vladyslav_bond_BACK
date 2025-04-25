package com.bot.vladyslav_bond_back.place;

import com.bot.vladyslav_bond_back.exceptions.NotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceService {

    private final PlaceRepository placeRepository;

    public PlaceService(PlaceRepository placeRepository) {
        this.placeRepository = placeRepository;
    }

    public List<Place> findAllPlaces() {
        return placeRepository.findAll();
    }

    public Place findPlaceById(Long id) {
        return placeRepository.findById(id).orElseThrow(NotFoundException::new);
    }
}
