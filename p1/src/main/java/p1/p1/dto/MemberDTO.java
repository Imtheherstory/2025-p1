package p1.p1.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
    private int member_idx;
    private String member_name;
    private String gender;
    private String member_birth;
    private String member_phone;
    private int group_idx;
    private int member_age;
}
