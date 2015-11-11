<%@page import="dao.AlunoDAO"%>
<%@page import="modelo.Aluno"%>
<%@include file="cabecalho.jsp"%>
<%
String nome = request.getParameter("txtnome");
String matr = request.getParameter("txtmatricula");

    if(request.getParameter("txtnome")== null || request.getParameter("txtmatricula")== null)
    {
        response.sendRedirect("alunos.jsp");
    }
  //  String nome = request.getParameter("txtnome");
    //Criar meu objeto modelo
    Aluno aluno1 = new Aluno();
    //Adiciono os valores enviados
    aluno1.setNome(nome);
   // aluno1.setMatricula(matricula);
    
    
    //Instanciar a minha classe de acesso a dados
    AlunoDAO dao = new AlunoDAO();
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
