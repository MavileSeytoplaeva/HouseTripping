package com.example.HouseTripping.repositories;

import com.example.HouseTripping.models.House;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface HouseRepository extends JpaRepository<House, Long> {
    @Transactional // чтобы не было ошибок "unabled access to lob" или "Большие объекты не могут использоваться в режиме авто-подтверждения (auto-commit)"
    List<House> findAllByCountryIgnoreCase(String country);
}
