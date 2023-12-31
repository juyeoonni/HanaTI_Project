package com.spring.SpringbootRecord.customer.service;

import com.spring.SpringbootRecord.customer.model.DAO.CustomerDAO;
import com.spring.SpringbootRecord.customer.model.DTO.CustomerDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CustomerService {
    @Autowired
    CustomerDAO customerDAO;

    public List<CustomerDTO> selectAllCustomerList(){
        return customerDAO.selectAllCustomerList();
    }
    public CustomerDTO login(HashMap<String, String> loginData) {
        return customerDAO.login(loginData);
    }

    // 고객 정보 조회 및 수정 (세션의 id 값으로)
    public CustomerDTO selectIdOfCustomer(String id){
        return customerDAO.selectIdOfCustomer(id);
    }

    public void updateCustomer(CustomerDTO customer) {
        customerDAO.updateCustomer(customer);
    }
}

