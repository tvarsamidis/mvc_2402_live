package gr.codehub.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PersonMvcController {
    @GetMapping("s01hello")
    public String s01hello() {
        return "s01hello"; // return Freemarker template 's01hello.ftl'
    }
}
