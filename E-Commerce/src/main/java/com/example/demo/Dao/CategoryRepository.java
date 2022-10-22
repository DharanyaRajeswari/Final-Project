package com.example.demo.Dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.example.demo.Entity.Category;

@RepositoryRestResource(path="category")
@CrossOrigin("http://localhost:4200/")
public interface CategoryRepository extends JpaRepository<Category,Integer> {

}
