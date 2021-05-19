package com.health.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.mapper.ProductMapper;
import com.health.vo.ProductCategoryVO;
import com.health.vo.ProductVO;

@Service
public class ProductService {
	@Autowired
	ProductMapper mapper;
	
	public List<ProductVO> selectProductList(Integer num) {
		return mapper.selectProductList(num);
	}
	public List<ProductCategoryVO> selectproductCategory() {
		return mapper.selectproductCategory();
	}
}
