package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.contatoDAO.LoginDAO;



public class ValidaTeste {
	public static void main(String[] args) {
		LoginDAO dao = new LoginDAO();
		System.out.println(dao.valida("user", "admin1"));
	}
}
