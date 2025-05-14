package com.BenjaminDiaz.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.BenjaminDiaz.modelos.Cancion;

@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long>{
	
	List<Cancion> findAll();
	
	void deleteById(Long id);
	
}
