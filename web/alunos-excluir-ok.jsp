<%@page import="dao.AlunoDAO"%>
<%@page import="modelo.Aluno"%>
<%@include file="cabecalho.jsp"%>
<%
    
String matricula = request.getParameter("matricula");
AlunoDAO dao = new AlunoDAO();

Aluno obj = dao.buscarPorChavePrimaria(matricula);
//Exclui o aluno buscado
dao.excluir(obj);
%>
         <h1 class="centro">Exclus�o de Alunos</h1>
            
         <div>
             O Aluno <%=matricula%> foi exclu�do com sucesso.<br />
             <a href="alunos.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
