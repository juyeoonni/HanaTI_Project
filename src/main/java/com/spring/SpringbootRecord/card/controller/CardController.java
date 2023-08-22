package com.spring.SpringbootRecord.card.controller;

import com.spring.SpringbootRecord.card.model.DTO.CardDTO;
import com.spring.SpringbootRecord.card.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CardController {

    private final CardService cardService;

    @Autowired
    public CardController(CardService cardService) {
        this.cardService = cardService;
    }

    // 네브바에서 마이카드 선택 요청시 오는 컨트롤러
    @GetMapping("/card/selectCardList")
    public String selectCardList(HttpServletRequest request) {
        List<CardDTO> list = cardService.selectCardList();

        // 디버그용 출력 코드는 삭제하거나 주석 처리해도 좋습니다.
        for (CardDTO card : list) {
            System.out.println(card.getCardNumber());
            System.out.println(card.getCardId());
            System.out.println(card.getCardName());
            System.out.println(card.getAccNumber());
            System.out.println(card.getBankCode());
            System.out.println(card.getValidityPeriod());
            System.out.println(card.getJoinDate());
            System.out.println(card.getCardStatus());
            System.out.println(card.getCardImg());
        }

        // 데이터를 JSP 페이지에 전달
        request.setAttribute("cardList", list); // 'list' 대신 'cardList'를 사용하면 JSP에서 의미가 명확해집니다.

        return "card/selectCardList";
    }


    @GetMapping("/card/selectCardDetail")
    public String selectCardDetailByCardNumber(HttpServletRequest request, @RequestParam String cardNumber) {
        CardDTO card = cardService.selectCardDetailByCardNumber(cardNumber);
        request.setAttribute("card", card);
        return "card/selectCardDetail";
    }

}



