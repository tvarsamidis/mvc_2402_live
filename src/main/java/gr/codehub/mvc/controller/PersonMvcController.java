package gr.codehub.mvc.controller;

import gr.codehub.mvc.model.Person;
import org.aspectj.weaver.patterns.PerObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PersonMvcController {
    @GetMapping("s01hello")
    public String s01hello() {
        return "s01hello"; // return Freemarker template 's01hello.ftl'
    }

    @GetMapping("s02random1")
    public String s02random1(Model model) {
        Person person = new Person();
        model.addAttribute("name", person.getName());
        model.addAttribute("age", person.getAge());
        return "s02random1";
    }

    @GetMapping("s03random2")
    public String s03random2(Model model) {
        Person person = new Person();
        model.addAttribute("name", person.getName());
        model.addAttribute("age", person.getAge());
        Person person2 = new Person();
        model.addAttribute("secondPerson", person2);
        return "s03random2";
    }
}
