package com.spring.SpringbootRecord.customer.controller;

import com.spring.SpringbootRecord.customer.model.DTO.CustomerDTO;
import com.spring.SpringbootRecord.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    private final CustomerService customerService;

    @Autowired
    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping("/selectAllCustomer")
    public String selectAllCustomer(HttpServletRequest request) {
        List<CustomerDTO> list = customerService.selectAllCustomerList();

        for (CustomerDTO customer : list) {
            System.out.println(customer.getCustomerId());
            System.out.println(customer.getPassword());
            System.out.println(customer.getStatus());
            System.out.println(customer.getName());
            System.out.println(customer.getIdentityNumber());
            System.out.println(customer.getPhoneNumber());
            System.out.println(customer.getEmail());
            System.out.println(customer.getAddress());
            System.out.println(customer.getJoinDate());

            request.setAttribute("list", list);
        }

        return "customer/selectAllCustomer";
    }

    @GetMapping("/customer_login")
    public String customer_login() {
        return "customer/customer_login";
    }

    @GetMapping("/customer_join")
    public String customer_join() {
        return "customer/customer_join";
    }

    @PostMapping("/login-logic")
    public ResponseEntity<String> loginLogic(@RequestBody HashMap<String, String> loginData, HttpServletRequest request) {
        CustomerDTO loginMember = customerService.login(loginData);
        HttpSession session = request.getSession();
        System.out.println(loginData);
        if (loginMember != null) {
            session.setAttribute("name", loginMember.getName());
            session.setAttribute("id", loginMember.getCustomerId());
            return ResponseEntity.ok("로그인 성공");
        } else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("로그인 실패");
        }
    }

//    @RequestMapping(value = "/logout")
//    public ModelAndView deleteGuest(HttpSession session) {
//        String id = (String) session.getAttribute("id");
//        System.out.println(id);
//        ModelAndView mav = new ModelAndView();
//        session.invalidate();
//        mav.addObject("msg", "로그아웃 성공");
//        mav.addObject("loc", "../home");
//        mav.setViewName("message");
//        return mav;
//    }

    @RequestMapping("/customer_myPage")
    public ModelAndView myPage(HttpSession session) {
        String id = (String) session.getAttribute("id");
        CustomerDTO customerInfo = customerService.selectIdOfCustomer(id);

        ModelAndView mav = new ModelAndView();
        mav.addObject("customer",customerInfo);
        mav.setViewName("customer/customer_myPage");
        return mav;
    }


    @RequestMapping("/customer_update")
    public ModelAndView customerUpdate(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        CustomerDTO customerInfo = customerService.selectIdOfCustomer(id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("customer", customerInfo);
        mav.setViewName("customer/customer_update");
        return mav;

    }

}


