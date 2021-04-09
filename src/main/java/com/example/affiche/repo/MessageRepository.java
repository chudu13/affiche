package com.example.affiche.repo;

import com.example.affiche.models.Message;
import org.springframework.data.repository.CrudRepository;
import java.util.List;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete
public interface MessageRepository extends CrudRepository<Message, Integer>  {
    List<Message> findByTag(String tag);
}