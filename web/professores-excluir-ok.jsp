<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
String siape = request.getParameter("siape");
ProfessorDAO dao = new ProfessorDAO();
//Buscar o professor com o siape clicado
Professor obj = dao.buscarPorChavePrimaria(siape);
//Exclui o professor buscado
dao.excluir(obj);
%>
         <h1 class="centro">Exclusão de Professores</h1>
            
         <div>
             O Registro <%=siape%> foi excluído com sucesso.<br />
              <a href="professores.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
