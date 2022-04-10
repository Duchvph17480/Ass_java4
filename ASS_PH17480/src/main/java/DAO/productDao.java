package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entities.Product;
import utils.jpaUtils;

public class productDao {
	private EntityManager em;
	public productDao() {
		this.em = jpaUtils.getEntityManager();
	}
	
	public List<Product> all(){
		String jpql = "SELECT p FROM Product p";
		TypedQuery<Product> query = this.em.createQuery(jpql,Product.class);
		return query.getResultList();
	}

}
