package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RedirIndex3 implements Logica {
	@Override
	public String executa(HttpServletRequest request,
			HttpServletResponse response) {
		
		return "/WEB-INF/lista-contatos.jsp";
	
	}
}
