/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Aluno;

/**
 *
 * @author aluno
 */
public class AlunoDAO {
    public AlunoDAO() {
        
    }
    
    public EntityManager getEm() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        return emf.createEntityManager();
    }
    
    public void incluir(Aluno aluno) throws Exception {
        EntityManager em = getEm();
//        cliente = em.getReference(Cliente.class,cliente.getId()); 
        try {
            em.getTransaction().begin();
            em.persist(aluno);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
            
        }
        
    }
    
    public List<Aluno> listar() throws Exception {
        return getEm().createNamedQuery("Aluno.findAll").getResultList();
    }
    
    public void alterar(Aluno obj) throws Exception {
        EntityManager em = getEm();
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public void excluir(Aluno obj) throws Exception {
        EntityManager em = getEm();
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
    
    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

            
}
