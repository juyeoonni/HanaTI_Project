package com.spring.SpringbootRecord.card.service;

import com.spring.SpringbootRecord.card.model.DAO.CardDAO;
import com.spring.SpringbootRecord.card.model.DTO.CardDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CardService {

    @Autowired
    CardDAO cardDAO;


    public List<CardDTO> selectCardList() {
        return  cardDAO.selectCardList();
    }

    public CardDTO selectCardDetailByCardNumber(String cardNumber) {
        return  cardDAO.selectCardDetailByCardNumber(cardNumber);
    }
}
