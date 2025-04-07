package com.civa.buses.entities;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Marca {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    private String descripcion;
    @OneToMany(mappedBy = "marca")
    private List<Bus> buses;
    private boolean activo;
}
