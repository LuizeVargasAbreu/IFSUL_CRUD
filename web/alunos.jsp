<%@page import="java.util.List"%>
<%@page import="modelo.Aluno"%>
<%@page import="dao.AlunoDAO"%>
<%@include file="cabecalho.jsp"%>
<%
     AlunoDAO dao = new AlunoDAO();
     
     List<Aluno> aluno1 = dao.listar();
%>
    
        <div>
            <h1 class="centro">Alunos</h1>
            
            <div>
                <a href="alunos-cadastrar.jsp">+ Novo Aluno</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Matrícula</th>
                            <th>Nome</th>
                            <th>Disciplinas</th>
                            <th>Matriculado</th>
                            <th>Ações</th>
                        </tr>
                        <%
                          for(Aluno alunos:aluno1)
                        {    
                        %>
       
                        <tr>
                            <td><%=alunos.getMatricula()%></td>
                            <td><%=alunos.getNome()%></td>
                            <td><%=alunos.getDisciplinas()%></td>
                            <td><%=alunos.getMatricula()%></td>
                            <td><a href="alunos-atualizar.jsp?matricula=<%=alunos.getMatricula()%>">Editar</a>
                                <a href="alunos-excluir-ok.jsp?matricula=<%=alunos.getMatricula()%>">Excluir</a>
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
