package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController 
{
	@Autowired
	private ProductDao productDao;

	//index page
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Product> products = productDao.getAllProducts();
		m.addAttribute("products",products);
		return "index";
	}

	//add product form
	@RequestMapping("/add_product")
	public String addProduct(Model m)
	{
		m.addAttribute("title","ADD PRODUCT");
		return "add_product_form";
	}

	//handler to add product form
	//we will redirect the view
	@RequestMapping(value = "/handle-product", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request)
	{
		productDao.createProduct(product);
		System.out.println(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	//handler to delete product
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId , HttpServletRequest request)
	{
		productDao.deleteProduct(productId);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	//handler to update product
	@RequestMapping("/update/{productId}")
	public String updateProduct(@PathVariable("productId") int pid, Model m)
	{
		Product product = this.productDao.getProduct(pid);
		m.addAttribute("product", product);
		return "update_form";
	}





}
