package com.commerce.ecom.services;

import com.commerce.ecom.dto.ProductDTO;
import com.commerce.ecom.entities.Product;
import com.commerce.ecom.repositories.IProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
public class ProductService {
    @Autowired
    private IProductRepository repository;

    @Transactional(readOnly = true)
    public Page<ProductDTO> findAll(Pageable pageable) {
        Page<Product> result = repository.findAll(pageable);
        return result.map(ProductDTO::new);
    }

    @Transactional(readOnly = true)
    public ProductDTO findById(UUID id) {
        Product product = repository.findById(id).get();
        return new ProductDTO(product);
    }
}
