package com.civa.buses.repositories;

import com.civa.buses.entities.Bus;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BusRepository extends JpaRepository<Bus, Long> {
    public Page<Bus> findAll(Pageable pageable);
}
