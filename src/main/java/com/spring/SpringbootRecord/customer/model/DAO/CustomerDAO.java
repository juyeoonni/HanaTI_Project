package com.spring.SpringbootRecord.customer.model.DAO;

import com.spring.SpringbootRecord.customer.model.DTO.CustomerDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Mapper
public interface CustomerDAO {
    public List<CustomerDTO> selectAllCustomerList();

    public CustomerDTO login(HashMap<String, String> loginData);

    public CustomerDTO selectIdOfCustomer(String id);
}

