package br.com.caelum.jdbc.teste;

import java.sql.SQLException;
import java.util.Calendar;

import br.com.caelum.jdbc.contatoDAO.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaAtualizar {
	public static void main(String[] args) throws SQLException {
		 
		Contato contato = new Contato();
		contato.setId(2L);
		 contato.setNome("wes");
		 contato.setEmail("wes@caelum.com.br");
		 contato.setEndereco("AV. Vergueiro 3185 cj57");
		 contato.setDataNascimento(Calendar.getInstance());
		 
		 // grave nessa conexão!!!
		 ContatoDAO dao = new ContatoDAO();
		 
		 // método elegante
		 dao.altera(contato);
		 System.out.println("Atualizado!");


	
		
		
	}
	
}
