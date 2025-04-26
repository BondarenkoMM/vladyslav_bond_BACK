package com.bot.vladyslav_bond_back.place;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

@RestController
@RequestMapping("/interesting-place")
public class PlaceController {

    private final PlaceService placeService;

    public PlaceController(PlaceService placeService) {
        this.placeService = placeService;
    }

    //http://localhost:8087/interesting-place/getAll
    @GetMapping("/getAll")
    private List<Place> gelAllPlaces() {
        return placeService.findAllPlaces();
    }

    //http://localhost:8087/interesting-place/{id}
    @GetMapping("/{id}")
    private Place gelPlaceById(@PathVariable Long id) {
        return placeService.findPlaceById(id);
    }

    //http://localhost:8087/interesting-place/redirect-{id}
    @PostMapping("/redirect-{id}")
    private ResponseEntity<?> redirect(@PathVariable Long id) throws URISyntaxException {
        URI uri = new URI(placeService.findPlaceById(id).getDescriptionLink());
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(uri);
        return new ResponseEntity<>(headers, HttpStatus.MOVED_PERMANENTLY);
    }
}
