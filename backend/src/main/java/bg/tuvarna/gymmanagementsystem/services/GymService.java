package bg.tuvarna.gymmanagementsystem.services;

import bg.tuvarna.gymmanagementsystem.entities.Gym;
import bg.tuvarna.gymmanagementsystem.repositories.GymRepository;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Log4j2
public class GymService {
    private final GymRepository gymRepository;

    @Autowired
    public GymService(GymRepository gymRepository) {
        this.gymRepository = gymRepository;
    }
}
