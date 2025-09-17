package p1.p1.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import p1.p1.dao.MemberDAO;
import p1.p1.dto.GroupDTO;
import p1.p1.dto.MemberDTO;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberDAO memberDAO;

    public GroupDTO loginProcess(GroupDTO loginGroup) {
        return memberDAO.loginProcess(loginGroup);
    }

    public List<MemberDTO> getMemberList(int group_idx){
        return memberDAO.getMemberList(group_idx);
    }
}
