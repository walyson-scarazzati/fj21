package br.com.caelum.jdbc.teste;

import java.sql.SQLException;
import java.util.List;

import br.com.caelum.jdbc.contatoDAO.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaLista {
	public static void main(String[] args) throws SQLException {
		
		ContatoDAO dao = new ContatoDAO();
		
		List<Contato> contatos = dao.getLista();

		for (Contato contato : contatos) {
		  System.out.println("Nome: " + contato.getNome());
		  System.out.println("Email: " + contato.getEmail());
		  System.out.println("Endereço: " + contato.getEndereco());
		  System.out.println("Data de Nascimento: " + 
		              contato.getDataNascimento().getTime() + "\n");
		}
		
		System.out.println("Fim de Lista!");
		
		}
}
