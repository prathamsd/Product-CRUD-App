package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Product;

@Component
public class ProductDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//to save product data into db
	@Transactional
	public void createProduct(Product product)
	{
		//save = when Id not in table
		//update = when Id is present in table
		//we'll use both, so -> saveorUpdate();
		this.hibernateTemplate.saveOrUpdate(product);
		
		//this.hibernateTemplate.save(product);
	}
	
	//to get single product
	public Product getProduct(int pid)
	{
		Product p = this.hibernateTemplate.load(Product.class, pid);
		return p;
	}
		
	//to get all products data
	public List<Product> getAllProducts()
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//to delete product
	@Transactional
	public void deleteProduct(int pid)
	{
		Product p = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	
	
	
	
	
	
	
	

}
