package com.health.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.health.vo.ProductCategoryVO;
import com.health.vo.ProductVO;

@Mapper
public interface ProductMapper {
	public List<ProductVO> selectProductList(Integer num);
	public List<ProductCategoryVO> selectproductCategory();
}
