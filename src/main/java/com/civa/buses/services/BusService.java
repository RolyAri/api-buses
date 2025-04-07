package com.civa.buses.services;

import com.civa.buses.entities.Bus;
import com.civa.buses.repositories.BusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BusService {
    @Autowired
    BusRepository busRepository;
    public List<Bus> getAllBuses(){
        return busRepository.findAll();
    }
    public Optional<Bus> getBusById(Long id){
        return busRepository.findById(id);
    }
}
