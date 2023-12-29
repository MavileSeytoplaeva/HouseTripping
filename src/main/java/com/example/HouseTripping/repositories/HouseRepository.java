package com.example.HouseTripping.repositories;

import com.example.HouseTripping.models.House;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HouseRepository extends JpaRepository<House, Long> {
    List<House> findAllByCountry(String country);
}
