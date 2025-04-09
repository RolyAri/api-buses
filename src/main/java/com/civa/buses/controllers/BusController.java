package com.civa.buses.controllers;

import com.civa.buses.entities.Bus;
import com.civa.buses.services.BusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/bus")
//@CrossOrigin("*")
@CrossOrigin(origins = "http://localhost:5173", allowCredentials = "true")
public class BusController {
    @Autowired
    BusService busService;
    @GetMapping
    public ResponseEntity<Page<Bus>> getAllBuses(Pageable pageable){
        Page<Bus> buses = busService.getAllBuses(pageable);
        return ResponseEntity.ok().body(buses);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Bus> getBusById(@PathVariable Long id){
        Optional<Bus> bus = busService.getBusById(id);
        if(bus.isPresent()){
            return ResponseEntity.ok(bus.get());
        }
        return ResponseEntity.notFound().build();
    }
}
