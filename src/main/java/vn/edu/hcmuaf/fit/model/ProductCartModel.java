package vn.edu.hcmuaf.fit.model;

public class ProductCartModel {
    private int quantity;
    private ProductModel productModel;

    public ProductCartModel(int quantity, ProductModel productModel) {
        this.quantity = quantity;
        this.productModel = productModel;
    }

    public void increaseQuantity() {
        this.quantity++;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public ProductModel getProductModel() {
        return productModel;
    }

    public void setProductModel(ProductModel productModel) {
        this.productModel = productModel;
    }
}
