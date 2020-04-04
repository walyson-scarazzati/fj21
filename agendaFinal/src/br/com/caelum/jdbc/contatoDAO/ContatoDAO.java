package br.com.caelum.jdbc.contatoDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.caelum.jdbc.ConnectionFactory;
import br.com.caelum.jdbc.modelo.Contato;

public class ContatoDAO {
	
private Connection con;
	
	public ContatoDAO(Connection connection) {
		this.con = connection;
	}

	public ContatoDAO() {
		this.con = new ConnectionFactory().getConnection();
	}


	public ResultSet rs;


	public void adiciona(Contato contato) {
		// Preparando o PreparedStatemend para a inserção
		try {String sql = "INSERT INTO contatos (nome, email, endereco,dataNascimento) "
				+ "VALUES (?,?,?,?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		// Setando os valores
		stmt.setString(1, contato.getNome());
		stmt.setString(2, contato.getEmail());
		stmt.setString(3, contato.getEndereco());
		
		SimpleDateFormat in = new SimpleDateFormat("YYYY-MM-DD");
		SimpleDateFormat out = new SimpleDateFormat("DD-MM-YYYY");
		stmt.setDate(4, new java.sql.Date(contato.getDataNascimento().getTimeInMillis()));
		stmt.execute();
		stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	
	}
	 public List<Contato> getLista() {
	     try {
	         List<Contato> contatos = new ArrayList<Contato>();
	         PreparedStatement stmt = this.con.prepareStatement("select * from contatos");
	         ResultSet rs = stmt.executeQuery();
	 
	         while (rs.next()) {
	             // criando o objeto Contato
	             Contato contato = new Contato();
	             contato.setId(rs.getLong("id"));
	             contato.setNome(rs.getString("nome"));
	             contato.setEmail(rs.getString("email"));
	             contato.setEndereco(rs.getString("endereco"));
	 
	             // montando a data através do Calendar
	             Calendar data = Calendar.getInstance();
	             data.setTime(rs.getDate("dataNascimento"));
	             contato.setDataNascimento(data);
	 
	             // adicionando o objeto à lista
	             contatos.add(contato);
	         }
	         rs.close();
	         stmt.close();
	         return contatos;
	     } catch (SQLException e) {
	         throw new RuntimeException(e);
	     }
	     
	 }
	 
	 public void altera(Contato contato) {
	     String sql = "update contatos set nome=?, email=?, endereco=?," +
	             "dataNascimento=? where id=?";
	     try {
	         PreparedStatement stmt = con.prepareStatement(sql);
	         stmt.setString(1, contato.getNome());
	         stmt.setString(2, contato.getEmail());
	         stmt.setString(3, contato.getEndereco());
	         stmt.setDate(4, new java.sql.Date(contato.getDataNascimento()
	                 .getTimeInMillis()));
	         stmt.setLong(5, contato.getId());
	         stmt.execute();
	         stmt.close();
	     } catch (SQLException e) {
	         throw new RuntimeException(e);
	     }
	 }
	 
	 public void remove(Contato contato) {
	     try {
	         PreparedStatement stmt = con.prepareStatement("delete " +
	                 "from contatos where id=?");
	         stmt.setLong(1, contato.getId());
	         stmt.execute();
	         stmt.close();
	     } catch (SQLException e) {
	         throw new RuntimeException(e);
	     }
	 }
	 
	 public Contato getContato(int id) {
			String sql = "select * from contatos where id = ?";
			try {
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.setInt(1, id);

				ResultSet rs = stmt.executeQuery();
				Contato contato = new Contato();

				while (rs.next()) {
					contato.setId(rs.getLong("id"));
					contato.setNome(rs.getString("nome"));
					contato.setEmail(rs.getString("email"));
					contato.setEndereco(rs.getString("endereco"));

					Calendar data = Calendar.getInstance();
					data.setTime(rs.getDate("dataNascimento"));
					contato.setDataNascimento(data);
				}

				rs.close();
				stmt.close();
				return contato;

			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
	
	
}
