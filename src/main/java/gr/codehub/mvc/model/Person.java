package gr.codehub.mvc.model;

import com.thedeanda.lorem.LoremIpsum;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
public class Person {
    private int age;
    private String name;

    public Person() {
       age = (int)(Math.random() * 70) + 18;
       name = LoremIpsum.getInstance().getName();
    }
}
