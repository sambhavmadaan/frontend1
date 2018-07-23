package com.niit.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;

@Controller
public class CartController {

	
	@Autowired
	ProductDAO productDAO;

	@Autowired
	CartDAO cartDAO;

	@RequestMapping(value="/cart/addToCart/{prodId}")
	public String addCartItem(@RequestParam("quantity") int quantity,@PathVariable("prodId") int prodId,HttpServletRequest request,Model m){
	
	//String username=(String)request.getUserPrincipal().getName();
	/*	if((String)request.getUserPrincipal().getName()==null) {
			return "login1";
		}*/
		String page;
		if((String)request.getUserPrincipal().getName()!=null) {
		Product product=productDAO.getProduct(prodId);
		System.out.println(product.getPrice());
		System.out.println(product.getCategoryId());
		System.out.println(product.getProdDesc());
		System.out.println(product.getProdId());

		System.out.println(product.getProdName());

		System.out.println(product.getStock());
		System.out.println(quantity);

		String username=(String)request.getUserPrincipal().getName();
		System.out.println(username);
		CartItem cartItem=new CartItem();
		cartItem.setProdId(product.getProdId());
		cartItem.setPrice(product.getPrice());
		cartItem.setProdName(product.getProdName());
		cartItem.setQuantity(quantity);
		cartItem.setUserName(username);
		cartItem.setStatus("NA");
		System.out.println("we are in addcartitem");

		cartDAO.addCartItem(cartItem);
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems",cartItems);
		m.addAttribute("totalPurchaseAmount",this.calcTotalPurchaseAmount(cartItems));
		/*if(username=="null") {
			return "login1";
		}
		else
*/		page="Cart";
		}
		else if((String)request.getUserPrincipal().getName()==null){
			page="login1";
		}
		return "page";
	}
	
	@RequestMapping(value="/updateCartItem/{cartItemId}")
	public String updateCartItem(@RequestParam("quantity") int quantity,@PathVariable("cartItemId") int cartItemId,HttpServletRequest request,Model m)
	{
		CartItem cartItem=cartDAO.getCartItem(cartItemId);
		String username=(String)request.getUserPrincipal().getName();
		cartItem.setQuantity(quantity);
		cartDAO.updateCartItem(cartItem);
		
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems",cartItems);
		m.addAttribute("totalPurchaseAmount",this.calcTotalPurchaseAmount(cartItems));
		return "Cart";
	}
	@RequestMapping(value="/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId") int cartItemId,HttpServletRequest request,Model m)
	{
		CartItem cartItem=cartDAO.getCartItem(cartItemId);
		String username=(String)request.getUserPrincipal().getName();

		cartDAO.deleteCartItem(cartItem);
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems",cartItems);
		m.addAttribute("totalPurchaseAmount",this.calcTotalPurchaseAmount(cartItems));

		return "Cart";
	}
	@RequestMapping(value="/continueShopping")
	public String continueShopping(Model m) {
		
		m.addAttribute("productList",productDAO.listprod());
		return "index";
	}

	
	
	public int calcTotalPurchaseAmount(List<CartItem> cartItems) {
		int totalPurchaseAmount=0;
		int count=0;
		while(count<cartItems.size()) {
			CartItem cartItem=cartItems.get(count);
			totalPurchaseAmount=totalPurchaseAmount+cartItem.getQuantity()*cartItem.getPrice();
			count++;
		}
		return totalPurchaseAmount;
	
	
	}
}
