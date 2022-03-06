package com.swlc.gadgetmart.backend.abansAPI.dto;

import java.util.List;

public class productList {
    List<productDto> products;

    public List<productDto> getProducts() {

        return products;
    }

    public void setProducts(List<productDto> products) {

        this.products = products;
    }

    @Override
    public String toString() {
        return "products{" +
                "products=" + products +
                '}';
    }
}
