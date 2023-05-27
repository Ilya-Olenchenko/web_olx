package com.example.buysell.repositories;

import com.example.buysell.models.Image;
import com.example.buysell.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ImageRepository extends JpaRepository<Image, Long> {
    void deleteByProductId(Long productId);
}
