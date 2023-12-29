package com.example.HouseTripping.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "houses")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class House {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String country;
    private String city;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    private String restrictions;
//    @Column(name = "author_name")
//    private String authorName;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "house")
    private List<Image> images = new ArrayList<>();
    private Long previewImageId;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
    private LocalDateTime date;

    @PrePersist
    private void init() {
        date = LocalDateTime.now();
    }

    public void addImageToPost(Image image) {
        image.setHouse(this);
        images.add(image);

    }
}
