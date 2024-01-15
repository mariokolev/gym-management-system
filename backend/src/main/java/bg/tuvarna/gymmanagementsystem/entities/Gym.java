package bg.tuvarna.gymmanagementsystem.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "gyms")
@Getter
@Setter
public class Gym extends BaseEntity {
    @Column(name = "name")
    private String name;
}
