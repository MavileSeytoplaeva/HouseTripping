package com.example.HouseTripping.services;

import com.example.HouseTripping.models.House;
import com.example.HouseTripping.models.Image;
import com.example.HouseTripping.models.User;
import com.example.HouseTripping.repositories.HouseRepository;
import com.example.HouseTripping.repositories.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.text.AttributedCharacterIterator;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
//@Transactional
public class HouseService {
    private final HouseRepository houseRepository;
    private final UserRepository userRepository;

    public List<House> listHouses(String country) {
    if (country != null) {
        return houseRepository.findAllByCountry(country);
    }
     return houseRepository.findAll();
    }

    public void saveHouse(Principal principal, House house, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        house.setUser(getUserByPrincipal(principal));
        Image image1;
        Image image2;
        Image image3;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            house.addImageToPost(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            house.addImageToPost(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            house.addImageToPost(image3);
        }
        log.info("Saving new House. County: {}; Author email: {}", house.getCountry(), house.getUser().getEmail());
        House houseFromDb = houseRepository.save(house);
        houseFromDb.setPreviewImageId(houseFromDb.getImages().get(0).getId());
        houseRepository.save(house);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteHouse(Long id) {
        houseRepository.deleteById(id);
    }

    public House getHouseById(Long id) {
        return houseRepository.findById(id).orElse(null);
    }

}


