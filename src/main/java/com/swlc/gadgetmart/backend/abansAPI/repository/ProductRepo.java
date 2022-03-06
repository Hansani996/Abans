package com.swlc.gadgetmart.backend.abansAPI.repository;


import com.swlc.gadgetmart.backend.abansAPI.dto.productDto;

import java.util.List;


public interface ProductRepo {
    List<productDto> getAllProducts() throws Exception;
}
