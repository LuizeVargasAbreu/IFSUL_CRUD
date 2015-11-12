<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
   String siape = request.getParameter("txtSiape");
   String nome = request.getParameter("txtNome");
   
   //Buscar por chave primaria
   ProfessorDAO dao = new ProfessorDAO();
   Professor obj = dao.buscarPorChavePrimaria(siape);
   //Atualizo as informações
   obj.setNome(nome);
   
   //chamo o atualizar
   dao.alterar(obj);
%>

         <h1 class="centro">Atualização de Professores</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="professores.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
