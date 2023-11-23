package re.netology.homework831new.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import re.netology.homework831new.repository.MyRepository;

import java.util.List;

@AllArgsConstructor
@RestController
public class Controller {

    private final MyRepository myRepository;
    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam String name) {
        List<String> result = myRepository.getProductName(name);
        return result;
    }
}
