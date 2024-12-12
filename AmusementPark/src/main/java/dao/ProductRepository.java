package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product regularTicket = new Product("T1234", "일반 티켓", 50000);
		regularTicket.setDescription("놀이공원을 이용할 수 있는 티켓");
		regularTicket.setCategory("regular ticket");
		regularTicket.setUnitsInStock(1000);
		regularTicket.setCondition("일반");
		
		Product freePassTicket = new Product("T1235", "프리 패스 티켓", 70000);
		freePassTicket.setDescription("놀이기구를 빨리 탈 수 있는 티켓");
		freePassTicket.setCategory("free pass ticket");
		freePassTicket.setUnitsInStock(1000);
		freePassTicket.setCondition("프리패스");
		
		Product VIPTicket = new Product("T1236", "VIP 티켓", 90000);
		VIPTicket.setDescription("음식 할인, 놀이기구 빨리 타기 등 여러 혜택이 있는 티켓");
		VIPTicket.setCategory("VIP ticket");
		VIPTicket.setUnitsInStock(1000);
		VIPTicket.setCondition("VIP");
		
		listOfProducts.add(regularTicket);
		listOfProducts.add(freePassTicket);
		listOfProducts.add(VIPTicket);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i =0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
