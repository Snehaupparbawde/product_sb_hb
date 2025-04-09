package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.tka.entity.Product;
import com.tka.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@GetMapping("/")
	public String openHomePage() {
		return "homePage";
	}

	@GetMapping("/get-product/{pid}")
	public String getProduct(@PathVariable int pid, Model model) {
		Product product = productService.getProductById(pid);
		if (product != null) {
			model.addAttribute("productdetails", product);
		} else {
			model.addAttribute("msg", "Product not found");
		}
		return "productDetails";
	}

	@GetMapping("/get-product-list")
	public String getProductList(Model model) {
		List<Product> productList = productService.getAllProducts();
		if (!productList.isEmpty()) {
			model.addAttribute("productList", productList);
		} else {
			model.addAttribute("msg", "No products found");
		}
		return "productListPage";
	}

	@GetMapping("/open-add-product")
	public String openAddProductPage() {
		return "addProductPage";
	}

	@PostMapping("/add-product")
	public String addProduct(@ModelAttribute Product product, Model model) {
		boolean isAdded = productService.addProduct(product); // Use addProduct service method
		if (isAdded) {
			model.addAttribute("msg", "Product added successfully!");
		} else {
			model.addAttribute("msg", "Failed to add product. Product might already exist.");
		}
		return "productListPage";
	}

	@PostMapping("/update-product")
	public String updateProduct(@ModelAttribute Product product, Model model) {
		boolean isUpdated = productService.updateProduct(product);
		if (isUpdated) {
			model.addAttribute("msg", "Product updated successfully!");
		} else {
			model.addAttribute("msg", "Failed to update product. Product not found.");
		}
		return "productListPage";
	}

	@GetMapping("/delete-product/{pid}")
	public String deleteProduct(@PathVariable int pid, Model model) {
		boolean isDeleted = productService.deleteProduct(pid);
		if (isDeleted) {
			model.addAttribute("msg", "Product deleted successfully!");
		} else {
			model.addAttribute("msg", "Failed to delete product");
		}
		return "productListPage";
	}

	@GetMapping("/view-all-products")
	public String viewAllProducts(Model model) {
		List<Product> productList = productService.getAllProducts();
		if (!productList.isEmpty()) {
			model.addAttribute("productList", productList);
		} else {
			model.addAttribute("msg", "No products found.");
		}
		return "productListPage";
	}

}
