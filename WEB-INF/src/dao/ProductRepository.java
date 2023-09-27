package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    
    public ProductRepository(){
        Product Dunk = new Product("P1","Dunk low",130000);
        Dunk.setDescription("80년대 분위기의 레트로 농구화");
		Dunk.setCategory("Sneakers");
		Dunk.setManufacturer("NIKE");
		Dunk.setUnitsInStock(1000);
		Dunk.setCondition("New");
        
        Product Airporce = new Product("P2","Air Porce 1'07",139000);
        Airporce.setDescription("NIKE의 대표 OG 농구화");
		Airporce.setCategory("Sneakers");
		Airporce.setManufacturer("NIKE");
		Airporce.setUnitsInStock(9000);
		Airporce.setCondition("New");
        
        Product Vapor = new Product("P3","Vapor-fly",299000);
        Vapor.setDescription("엘리트 러너부터 초보 레이서까지 누구나 활용 가능한 로드 레이싱화");
		Vapor.setCategory("Running");
		Vapor.setManufacturer("NIKE");
		Vapor.setUnitsInStock(3000);
		Vapor.setCondition("New");
        
        listOfProducts.add(Dunk);
		listOfProducts.add(Airporce);
		listOfProducts.add(Vapor);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

        
}
