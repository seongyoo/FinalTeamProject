package com;


import com.example.board.BoardVO;
import com.example.board.BoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.*;

@Controller
public class Home {
    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("classList")
    public String classList(Model model){
        List<String> list = new ArrayList<String>();
        list.add("실전프로젝트1");
        list.add("컴퓨터구조");
        list.add("컴퓨터비전");
        list.add("이산수학");
        model.addAttribute("classList", list);
        String msg = "2학년 2학기 교과목 리스트";
        model.addAttribute("title", msg);
        return "board/list";
    }

    @Autowired
    BoardDAO boardDAO;

    @RequestMapping(value = "/board/list", method = RequestMethod.GET)
    public String boatdlist(Model model){
        model.addAttribute("list", boardDAO.getBoardList());
        return "posts";
    }

    @RequestMapping(value = "/board/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value = "/board/addok", method = RequestMethod.POST)
    public String addPostOk(BoardVO vo){
        int i = boardDAO.insertBoard(vo);
        if(i == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

}
