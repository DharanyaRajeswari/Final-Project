package com.example.demo.Dao;




import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;


import com.example.demo.Entity.Product;


    @RepositoryRestResource(path="product")
    @CrossOrigin("http://localhost:4200/")
public interface ProductRepository extends JpaRepository<Product, Integer> {
    	
}
