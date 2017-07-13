package com.wefine.oauth2.dao;

import com.wefine.oauth2.model.Fruit;

import java.util.List;


public interface FruitDAO {

	public List<Fruit> getAll();

	public Fruit findById(int id);

    public Fruit findByName(String name);

    public void create(Fruit fruit);

    public void update(Fruit fruit);

    public void delete(int id);

    public boolean exists(Fruit fruit) ;

}
