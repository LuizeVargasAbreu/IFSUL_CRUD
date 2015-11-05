package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.AlunoDAO;
import modelo.Aluno;

public final class alunos_002dcadastrar_002dok_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/cabecalho.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Gerenciamento de Disciplinas</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"estilo.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Sistema de Controle de Disciplinas</h1>\n");
      out.write("        <div class=\"centro\">Usuário: xxxxx - <a href=\"#\">Sair</a>\n");
      out.write("            <hr />\n");
      out.write("            <div><a href=\"alunos.jsp\">Aluno</a> - <a href=\"professores.jsp\">Professores</a> - <a href=\"disciplinas.jsp\">Disciplina</a></div>\n");
      out.write("        </div>\n");
      out.write('\n');

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


      out.write("\n");
      out.write("         <h1 class=\"centro\">Cadastro de Alunos</h1>\n");
      out.write("            \n");
      out.write("         <div>\n");
      out.write("             Registro cadastrado com sucesso.<br />\n");
      out.write("             ");
      out.print(nome);
      out.write("<br />\n");
      out.write("             ");
      out.print(matr);
      out.write("<br />\n");
      out.write("             <a href=\"alunos.jsp\">Voltar para Listagem</a>\n");
      out.write("         </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
