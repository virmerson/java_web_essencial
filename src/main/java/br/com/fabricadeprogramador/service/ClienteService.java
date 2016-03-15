package br.com.fabricadeprogramador.service;

import java.util.ArrayList;
import java.util.List;

import br.com.fabricadeprogramador.model.Cliente;

public class ClienteService {

	
	private static List<Cliente> lista = new ArrayList<>();
	
	public void cadastrar(Cliente cliente){
		lista.add(cliente);
	}
	
	public List<Cliente> getTodosClientes(){
		return lista;
	}
	
	public void excluir(int indice){
		lista.remove(indice);
	}
}
