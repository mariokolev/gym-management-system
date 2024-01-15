package bg.tuvarna.gymmanagementsystem.controllers;

import bg.tuvarna.gymmanagementsystem.services.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController("/api/v1/gyms")
public class GymController {
    private final GymService gymService;

    @Autowired
    public GymController(GymService gymService) {
        this.gymService = gymService;
    }
}
