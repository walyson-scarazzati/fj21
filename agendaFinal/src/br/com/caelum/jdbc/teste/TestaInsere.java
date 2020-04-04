package br.com.caelum.jdbc.teste;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Scanner;

import br.com.caelum.jdbc.contatoDAO.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {

	public static void main(String[] args) throws SQLException{
		// TODO Auto-generated method stub
		Contato contato = new Contato();
		 contato.setNome("Caelum");
		 contato.setEmail("contato@caelum.com.br");
		 contato.setEndereco("R. Vergueiro 3185 cj57");
		 contato.setDataNascimento(Calendar.getInstance());
		 
		 // grave nessa conexão!!!
		 ContatoDAO dao = new ContatoDAO();
		 
		 // método elegante
		 dao.adiciona(contato);
		 System.out.println("Gravado!");
	}

}
