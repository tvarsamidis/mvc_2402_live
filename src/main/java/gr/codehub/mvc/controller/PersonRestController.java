package gr.codehub.mvc.controller;

import gr.codehub.mvc.model.Person;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonRestController {
    @PostMapping("/s14submitasync")
    public Person s14submitasync(@RequestBody Person person){
        person.setAge(person.getAge() * 2);
        person.setName(person.getName() + "!!!!!!!!!!!!!!!!!!!!!!");
        return person;
    }
}
