package com.example.HouseTripping.controllers;

import com.example.HouseTripping.models.House;
//import com.example.HouseTripping.services.HouseService;
import com.example.HouseTripping.services.HouseService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.management.DescriptorRead;
import javax.print.DocFlavor;
import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class HouseTrippingController {
    private final HouseService houseService;

    @GetMapping("/")
    public String HouseTripping(@RequestParam(name = "country", required = false) String country, Principal principal, Model model) {
        model.addAttribute("houses", houseService.listHouses(country));
        model.addAttribute("user", houseService.getUserByPrincipal(principal));
        return "houses";
    }


    @GetMapping("/house/{id}")
    public String houseInfo(@PathVariable Long id, Model model) {
        House house = houseService.getHouseById(id);
        model.addAttribute("house", house);
        model.addAttribute("images", house.getImages());
        return "house-info";
    }

    @PostMapping("/house/create")
    public String createHousePoster(@RequestParam("file1") MultipartFile file1,
                                    @RequestParam("file2") MultipartFile file2,
                                    @RequestParam("file3") MultipartFile file3, House house, Principal principal) throws IOException {
        houseService.saveHouse(principal, house, file1, file2, file3);
        return "redirect:/";
    }
    @PostMapping("/house/delete/{id}")
    public String deleteHousePoster(@PathVariable Long id) {
        houseService.deleteHouse(id);
        return "redirect:/";
    }


}
