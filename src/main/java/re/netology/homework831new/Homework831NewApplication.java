package re.netology.homework831new;

import lombok.AllArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import re.netology.homework831new.repository.MyRepository;

import java.sql.SQLException;

@AllArgsConstructor
@SpringBootApplication
public class Homework831NewApplication implements CommandLineRunner {

    private final MyRepository myRepository;

    public static void main(String[] args) {
        SpringApplication.run(Homework831NewApplication.class, args);
    }

    @Override
    public void run(String... args) throws SQLException {
        getByCityAndPrint("vova");
    }

    public void getByCityAndPrint(String name) {
        var result = myRepository.getProductName(name);
        System.out.println(result);
    }
}
