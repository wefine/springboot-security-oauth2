package com.wefine.oauth2.service;

import com.wefine.oauth2.model.Fruit;

import java.util.List;


public interface FruitService {

    List<Fruit> getAll(int offset, int count);

    Fruit findById(int id);

    Fruit findByName(String name);

    void create(Fruit user);

    void update(Fruit user);

    void delete(int id);

    boolean exists(Fruit user);
}
