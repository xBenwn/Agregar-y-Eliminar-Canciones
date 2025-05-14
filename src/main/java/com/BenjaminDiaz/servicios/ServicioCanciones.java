package com.BenjaminDiaz.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.BenjaminDiaz.modelos.Cancion;
import com.BenjaminDiaz.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {
	
	@Autowired
	private final RepositorioCanciones repositorioCanciones;

	public ServicioCanciones(RepositorioCanciones repositorioCanciones) {
		this.repositorioCanciones = repositorioCanciones;
	}
	
	public List<Cancion> obtenerTodasLasCanciones() {
		return this.repositorioCanciones.findAll();
	}
	
	public Cancion obtenerCancionPorId(Long id) {
		return this.repositorioCanciones.findById(id).orElse(null);
	}
	
	public Cancion agregarCancion(Cancion cancionNueva) {
		return this.repositorioCanciones.save(cancionNueva);
	}
	
	public Cancion actualizaCancion(Cancion editarCancion) {
		return this.repositorioCanciones.save(editarCancion);
	}
	
	public void eliminarCancion(Long idCancion) {
		this.repositorioCanciones.deleteById(idCancion);
	}
	
}
