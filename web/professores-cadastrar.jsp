<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Professores</h1>
            
            <div>
                
                <form action="professores-cadastrar-ok.jsp" method="post">
                    <label>Nome:</label><input type="text" name="txtNome" /><br />
                    <label>Siape:</label><input type="text" name="txtSiape" /><br />
                   
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
