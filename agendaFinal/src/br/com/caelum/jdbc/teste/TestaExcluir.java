package br.com.caelum.jdbc.teste;


import java.sql.SQLException;
import java.util.Calendar;

import br.com.caelum.jdbc.contatoDAO.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;





public class TestaExcluir {

	public static void main(String[] args)throws SQLException {
		// TODO Auto-generated method stub

		Contato contato = new Contato();
		
		 ContatoDAO dao = new ContatoDAO();
	     contato.setId(1L);
		 dao.remove(contato);
		 System.out.println("Deletado!");
		}	
	

}
