<%@page import="java.util.List"%>
<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    ProfessorDAO dao = new ProfessorDAO();
    //Chamando todos os registrosda minha tabela Professor
    //retornados em forma de lista
    List<Professor> profs = dao.listar();
    
%>
        <div>
            <h1 class="centro">Professores</h1>
            
            <div>
                +<a href="professores-cadastrar.jsp">Novo Professor</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Siape</th>
                            <th>Nome</th>
                            
                            <th>Ações</th>
                        </tr>
                        <%
                          for(Professor prof:profs)
                          {    
                        %>
    
    
                        <tr>
                            <td><%=prof.getSiape()%></td>
                            <td><%=prof.getNome()%></td>
                            <td><a href="professores-editar.jsp?siape=<%=prof.getSiape()%>">Editar</a>
                                <a href="professores-excluir-ok.jsp?siape=<%=prof.getSiape()%>">Excluir</a>
                            </td>
                                                                  
                        </tr>
                         <%
                          }    
                        %>
                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>
