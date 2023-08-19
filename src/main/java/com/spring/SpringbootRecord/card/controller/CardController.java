package com.spring.SpringbootRecord.card.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CardController {
    @GetMapping("/card/selectCard")
    public String showSelectCard() {
        return "card/selectCard";
    }

    @GetMapping("/card/selectCardDetail")
    public String selectCardDetail() {
        return "card/selectCardDetail";
    }

}


