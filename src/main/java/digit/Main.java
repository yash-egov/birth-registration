package digit;


import jakarta.annotation.PostConstruct;
import org.egov.tracer.config.TracerConfiguration;
import org.flywaydb.core.Flyway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;

import java.util.Arrays;

@Import({ TracerConfiguration.class })
@SpringBootApplication
@ComponentScan(basePackages = { "digit", "digit.web.controllers" , "digit.config"})
public class Main {
    @Autowired
    private Flyway flyway;

    @PostConstruct
    public void checkFlywayConfig() {
        System.out.println("Flyway locations: " + Arrays.toString(flyway.getConfiguration().getLocations()));
    }
    public static void main(String[] args) throws Exception {
        SpringApplication.run(Main.class, args);
        System.out.println(
                "Birth Registration.........."
        );
    }
}
