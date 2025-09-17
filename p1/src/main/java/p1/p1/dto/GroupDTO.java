package p1.p1.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GroupDTO {
    private int group_idx;
    private String group_name;
    private String group_pass;
    private String description;
    private int leader_idx;
}
