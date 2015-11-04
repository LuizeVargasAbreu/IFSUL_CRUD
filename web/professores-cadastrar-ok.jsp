<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>

<%
    if(request.getParameter("txtNome")== null || request.getParameter("txtSiape")== null)
    {
        //Retorna para a listagem através do método sendRedirect
        response.sendRedirect("professores.jsp");
    }
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
    // dao.incluir(prof);
    //TENTA inserir, se der erro vai gerar uma exceção
    //nesse caso trataremos a mensagem que será exibida para o usuário

    //Através de uma variável mensagem
    String mensagem;
    try
    {
     dao.incluir(prof);
     mensagem = "Registro cadastrado com sucesso";
    }
    catch (Exception e)
    {
     mensagem = "Não foi possível realizar a operação";           
    }
%>
         <h1 class="centro">Cadastro de Professores</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             <a href="professores.jsp">Voltar para Listagem</a>
             
         </div>
    </body>
</html>
