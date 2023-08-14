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

    public CustomerDTO selectIdOfCustomer(String id){
        return customerDAO.selectIdOfCustomer(id);
    }
}

