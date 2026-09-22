package com.commerce.ecom.controllers;

import com.commerce.ecom.dto.ProductDTO;
import com.commerce.ecom.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/products")
class ProductController {
    @Autowired
    private ProductService service;

    @GetMapping
    public Page<ProductDTO> findAll(Pageable pageable) {
        return service.findAll(pageable);
    }

    @GetMapping("/{id}")
    public ProductDTO findById(@PathVariable UUID id) {
        return service.findById(id);
    }
}
