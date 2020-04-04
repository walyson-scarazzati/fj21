package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.contatoDAO.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

@SuppressWarnings("serial")
public class AdicionaContatoServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		 
		 String nome = request.getParameter("nome");
		 String endereco = request.getParameter("endereco");
		 String email = request.getParameter("email");
		 String dataEmTexto = request.getParameter("dataNascimento");
		 Calendar dataNascimento = null;
		 
		 try{
			 Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			 dataNascimento = Calendar.getInstance();
			 dataNascimento.setTime(date);
		 } catch(ParseException e) {
			 out.println("Erro na convers�o de data");
			 return;		// como a exception foi "pega" volta para o fluxo(exibir a msg acima), sen�o o thread morre.
		 }
	 
		 Contato contato = new Contato();
		 contato.setNome(nome);
		 contato.setEndereco(endereco);
		 contato.setEmail(email);
		 contato.setDataNascimento(dataNascimento);
		 
		 ContatoDAO dao = new ContatoDAO();
		 dao.adiciona(contato);
		 
		/* RequestDispatcher rd = request.getRequestDispatcher("/contato-adicionado.jsp");*/
		 RequestDispatcher rd = request.getRequestDispatcher("/lista-contatos.jsp");
		 rd.forward(request, response);
		 
	 }
	
	}

