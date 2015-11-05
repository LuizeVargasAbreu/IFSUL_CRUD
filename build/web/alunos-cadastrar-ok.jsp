<%@page import="dao.AlunoDAO"%>
<%@page import="modelo.Aluno"%>
<%@include file="cabecalho.jsp"%>
<%
String nome = request.getParameter("txtnome");
String matr = request.getParameter("txtmatricula");

    if(request.getParameter("txtnome")== null || request.getParameter("txtmatricula")== null
            || request.getParameter("txt")== null || request.getParameter("checkbox")== null)
    {
        //Retorna para a listagem através do método sendRedirect
        response.sendRedirect("alunos.jsp");
    }
    //Buscar as informações do formulário
    String nome = request.getParameter("txtnome");
    String matricula = request.getParameter("txtmatricula");
    
    //Criar meu objeto modelo
    Aluno aluno1 = new Aluno();
    //Adiciono os valores enviados
    aluno1.setNome(nome);
    aluno1.setMatricula(matricula);
    
    
    //Instanciar a minha classe de acesso a dados
    AlunoDAO dao = new AlunoDAO();
    // dao.incluir(prof);
    //TENTA inserir, se der erro vai gerar uma exceção
    //nesse caso trataremos a mensagem que será exibida para o usuário

    //Através de uma variável mensagem
    String mensagem;
    try
    {
     dao.incluir(aluno1);
     mensagem = "Registro cadastrado com sucesso";
    }
    catch (Exception e)
    {
     mensagem = "Não foi possível realizar a operação";           
    }

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
