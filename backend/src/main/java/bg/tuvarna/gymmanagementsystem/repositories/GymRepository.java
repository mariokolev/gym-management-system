package bg.tuvarna.gymmanagementsystem.repositories;

import bg.tuvarna.gymmanagementsystem.entities.Gym;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GymRepository extends JpaRepository<Gym, Long> {
}
