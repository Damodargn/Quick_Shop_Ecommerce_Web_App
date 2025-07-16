package Buy;

public class cartitem {
	private String itemName;
    private double price;
    private String imageUrl;
    
	public cartitem(String itemName, double price, String imageUrl) {
		super();
		this.itemName = itemName;
		this.price = price;
		this.imageUrl = imageUrl;
	}
	
	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public cartitem() {
		// TODO Auto-generated constructor stub
	}
	@Override
    public String toString() {
        return "CartItem: "+ itemName +" "+ price +" "+ imageUrl + "]";
    }



}
