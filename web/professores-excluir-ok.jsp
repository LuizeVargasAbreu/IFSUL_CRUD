<%@include file="cabecalho.jsp"%>
<%
String siape = request.getParameter("siape");
%>
         <h1 class="centro">Exclusão de Professores</h1>
            
         <div>
             O Registro <%=siape%> foi excluído com sucesso.<br />
             <a href="Professores.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
