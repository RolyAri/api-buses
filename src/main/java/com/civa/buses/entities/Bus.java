package com.civa.buses.entities;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
public class Bus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String numeroDeBus;
    private String placa;
    private LocalDateTime fechaCreacion;
    private String caracteristicas;
    private boolean activo;

    @ManyToOne
    //@JoinColumn(name = "marca_id")
    private Marca marca;
}
