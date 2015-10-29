<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>

<%
    //Buscar as informações do formulário
    String nome = request.getParameter("txtNome");
    String siape = request.getParameter("txtSiape");
    
    //Criar meu objeto modelo
    Professor prof = new Professor();
    //Adiciono os valores enviados
    prof.setNome(nome);
    prof.setSiape(siape);
    
    //Instanciar a minha classe de acesso a dados
    ProfessorDAO dao = new ProfessorDAO();
    
    dao.incluir(prof);
%>
         <h1 class="centro">Cadastro de Professores</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             <a href="professores.jsp">Voltar para Listagem</a>
             
         </div>
    </body>
</html>
