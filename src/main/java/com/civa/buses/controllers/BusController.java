package com.civa.buses.controllers;

import com.civa.buses.entities.Bus;
import com.civa.buses.services.BusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/bus")
public class BusController {
    @Autowired
    BusService busService;
    @GetMapping
    public ResponseEntity<List<Bus>> getAllBuses(){
        List<Bus> buses = busService.getAllBuses();
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
