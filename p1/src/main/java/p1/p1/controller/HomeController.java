package p1.p1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

    @GetMapping("/")
    public String Home(HttpSession session) {
        Object user = session.getAttribute("user");
        if (user == null) {
            return "member/login"; // 로그인 안 했으면 다시 로그인 페이지로
        }
        return "index"; // templatㅊes/index.html
    }
}
