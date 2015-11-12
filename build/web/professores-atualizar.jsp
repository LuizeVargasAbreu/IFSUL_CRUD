<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
  //Pegar a chave Primaria
    String siape = request.getParameter("siape");
    //Busco o registro pela chave no BANCO DE DADOS
    ProfessorDAO dao = new ProfessorDAO();
    //Para chamar pela chave primaria usaremos o método criado
    //que retornará TODAS as informações do professor
    Professor obj = dao.buscarPorChavePrimaria(siape);
%>
    
        <div>
            <h1 class="centro">Atualização de Professores</h1>
            
            <div>
                
                <form action="professores-atualizar-ok.jsp">
                    <label>Siape:</label><input type="text" value="<%=obj.getSiape()%>" name="txtSiape" readonly=""/><br />
                     <label>Nome:</label><input type="text" value="<%=obj.getNome()%>" name="txtNome"/><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>



    </body>
</html>
