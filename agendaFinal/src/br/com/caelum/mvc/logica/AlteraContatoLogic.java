package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.contatoDAO.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class AlteraContatoLogic {
	
	  
	    public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
	        // TODO Auto-generated method stub
	        Contato contacto = new Contato();

	        if (req.getParameterMap().containsKey("id")) {
	            long id = Long.parseLong(req.getParameter("id"));
	            contacto.setId(id);
	            ContatoDAO dao = new ContatoDAO();
	        
	        }

	        req.setAttribute("contacto", contacto);

	        return "${pageContext.request.contextPath}/altera-contato.jsp";
	    }
	
	 
}
