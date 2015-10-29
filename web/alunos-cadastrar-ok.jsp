<%@include file="cabecalho.jsp"%>
<%
String nome = request.getParameter("txtnome");
String matr = request.getParameter("txtmatricula");
%>
         <h1 class="centro">Cadastro de Alunos</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             <%=nome%><br />
             <%=matr%><br />
             <a href="alunos.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
