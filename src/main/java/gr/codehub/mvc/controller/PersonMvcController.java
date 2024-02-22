package gr.codehub.mvc.controller;

import gr.codehub.mvc.model.Person;
import org.aspectj.weaver.patterns.PerObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

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

    @GetMapping("s04calculate")
    public String s04calculate(Model model) {
        Person person = new Person();
        model.addAttribute("name", person.getName());
        model.addAttribute("age", person.getAge());
        Person person2 = new Person();
        model.addAttribute("secondPerson", person2);
        return "s04calculate";
    }

    @GetMapping("s05loops")
    public String s05loops(Model model) {
        model.addAttribute("person1", new Person());
        model.addAttribute("person2", new Person());
        model.addAttribute("person3", new Person());
        model.addAttribute("person4", new Person());
        model.addAttribute("person5", new Person());
        model.addAttribute("person6", new Person());
        return "s05loops";
    }

    @GetMapping("s06collections")
    public String s06collections(Model model) {
        List<Person> personsList = new ArrayList<>();
        for (int i = 0; i < 6; i++)
            personsList.add(new Person());
        model.addAttribute("persons", personsList);

        Map<Integer, String> jerseysMap = Map.of(
                1, "one S",
                22, "twenty two M",
                37, "thrity seven XL",
                50, "fifty M"
        );
        model.addAttribute("jerseys", jerseysMap);
        return "s06collections";
    }

    @GetMapping("s09init")
    public String s09choose(Model model) {
        return "s09choose";
    }

    @PostMapping("s10chose")
    public String s10showchoice(Model model){
        return "s10showchoice";
    }

    @GetMapping("s11init")
    public String s11choose(Model model, @RequestParam(value="user", defaultValue = "noone") String userName) {
        model.addAttribute("userName", userName);
        return "s11choose";
    }

    @PostMapping("s12chose")
    public String s12showchoice(Model model,
                                @RequestParam("choice") String choice,
                                @RequestParam("user_name_from_s11") String userName3) {
        model.addAttribute("choice2", choice);
        model.addAttribute("un_from_s12", userName3);
        return "s12showchoice";
    }

    @GetMapping("s13init")
    public String s13choose(Model model, @RequestParam(value="user", defaultValue = "nobody") String userName){
        model.addAttribute("userName", userName);
        return "s13choose";
    }


}
