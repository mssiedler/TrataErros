package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Usuario;

/**
 *
 * @author marcelosiedler
 */
public class UsuarioDAO {

    EntityManager em;
    
    public UsuarioDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public Boolean incluir(Usuario obj) throws Exception {
        Boolean retorno;
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
            retorno = true;
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            retorno = false;
            throw e;
        } finally {
            //em.close();
            
        }
        return retorno;
        
    }

    public List<Usuario> listar() throws Exception {
        return em.createNamedQuery("Usuario.findAll").getResultList();
    }
    
    public Boolean alterar(Usuario obj) throws Exception {
        Boolean retorno;
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
            retorno = true;
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            retorno = false;
            throw e;
        } finally {
            // em.close();
        }
        return retorno;
    }
    
    public Boolean excluir(Usuario obj) throws Exception {
        Boolean retorno;
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
            retorno = true;
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            retorno = false;
        } finally {
            //em.close();
        }
        return retorno;
    }

    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
    
}
