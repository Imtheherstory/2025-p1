package p1.p1.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import lombok.RequiredArgsConstructor;
import p1.p1.dto.GroupDTO;
import p1.p1.dto.MemberDTO;
import p1.p1.service.MemberService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import jakarta.servlet.http.HttpSession;


@Controller
@RequiredArgsConstructor
public class PageController {

    private final MemberService memberService;

    @GetMapping("/member/login")
    public String loginForm(@ModelAttribute("loginGroup") GroupDTO loginGroup) {
        return "login";
    }

    @PostMapping("/member/login")
    public String postMethodName(@ModelAttribute("loginGroup") GroupDTO loginGroup, HttpSession session) {
        GroupDTO confirmLogin = memberService.loginProcess(loginGroup);
        if (confirmLogin != null) {
            session.setAttribute("loginGroup", confirmLogin);
            return "index";
        } else {
            return "redirect:/";
        }

    }

    @GetMapping("/member/attendance")
    public String attendanceForm(@SessionAttribute("loginGroup") GroupDTO loginGroupDTO, Model model) {
        List<MemberDTO> memberList = memberService.getMemberList(loginGroupDTO.getGroup_idx());
        model.addAttribute("memberList", memberList);
        return "member/attendance";
    }
    
}
