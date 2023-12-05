package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();

    public static ProductRepository getInstance(){
	return instance;
    }

    
    public ProductRepository(){
        Product Dunk = new Product("P1","Dunk low",130000);
        Dunk.setDescription("80년대 분위기의 레트로 농구화");
		Dunk.setCategory("Sneakers");
		Dunk.setManufacturer("NIKE");
		Dunk.setUnitsInStock(1000);
        Dunk.setCondition("New");
        Dunk.setFilename("P1.jpg");

        
        Product Airporce = new Product("P2","Air Porce 1'07",139000);
        Airporce.setDescription("NIKE의 대표 OG 농구화");
		Airporce.setCategory("Sneakers");
		Airporce.setManufacturer("NIKE");
		Airporce.setUnitsInStock(9000);
		Airporce.setCondition("New");
        Airporce.setFilename("P2.jpg");
        
        Product Vapor = new Product("P3","Vapor-fly",299000);
        Vapor.setDescription("엘리트 러너부터 초보 레이서까지 누구나 활용 가능한 로드 레이싱화");
		Vapor.setCategory("Running");
		Vapor.setManufacturer("NIKE");
		Vapor.setUnitsInStock(3000);
		Vapor.setCondition("New");
        Vapor.setFilename("P3.jpg");
        
        Product Zion = new Product("P4","Zion 3 PF",169000);
        Vapor.setDescription("최고의 경기력을 보여주는 농구화");
		Vapor.setCategory("Basketball shoes");
		Vapor.setManufacturer("NIKE");
		Vapor.setUnitsInStock(1500);
		Vapor.setCondition("New");
        Vapor.setFilename("P4.jpg");
        
        Product Airjordan1 = new Product("P5","Air jordan1 low",139000);
        Vapor.setDescription("전설적인 조던 스니커즈");
		Vapor.setCategory("Sneakers");
		Vapor.setManufacturer("NIKE");
		Vapor.setUnitsInStock(500);
		Vapor.setCondition("New");
        Vapor.setFilename("P5.jpg");
        
        Product Zoom = new Product("P6","Zoom vomero 5",219000);
        Vapor.setDescription("줌 보메로 5를 신고 나만을 위한 새롭고 빠른 길을 개척하세요");
		Vapor.setCategory("Running");
		Vapor.setManufacturer("NIKE");
		Vapor.setUnitsInStock(2000);
		Vapor.setCondition("New");
        Vapor.setFilename("P6.jpg");
        
        Product Airmax = new Product("P7","Air max pulse",209000);
        Vapor.setDescription("로드 에어 쿠셔닝이 믿을 수 있는 편안함을 선사합니다");
		Vapor.setCategory("Running");
		Vapor.setManufacturer("NIKE");
		Vapor.setUnitsInStock(8500);
		Vapor.setCondition("New");
        Vapor.setFilename("P7.jpg");
        
        Product Cortex = new Product("P8","Cortex",119000);
        Vapor.setDescription("스타일링이 쉬운 컬러와 빈티지한 분위기로 완성된 디자인을 만나보세요");
		Vapor.setCategory("Sneakers");
		Vapor.setManufacturer("NIKE");
		Vapor.setUnitsInStock(10000);
		Vapor.setCondition("New");
        Vapor.setFilename("P8.jpg");
        
        listOfProducts.add(Dunk);
		listOfProducts.add(Airporce);
		listOfProducts.add(Vapor);
        listOfProducts.add(Zion);
        listOfProducts.add(Airjordan1);
        listOfProducts.add(Zoom);
        listOfProducts.add(Airmax);
        listOfProducts.add(Cortex);
        
		// listOfProducts.add(상품명);
	}
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}


	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public void addProduct(Product product) {
	listOfProducts.add(product);
   }


        
}
