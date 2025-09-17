package p1.p1.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import p1.p1.dto.GroupDTO;
import p1.p1.dto.MemberDTO;
import p1.p1.mapper.MemberMapper;

@Repository
@RequiredArgsConstructor
public class MemberDAO {
    private final MemberMapper memberMapper;

    public GroupDTO loginProcess(GroupDTO loginGroup){
        return memberMapper.loginProcess(loginGroup);
    }

    public List<MemberDTO> getMemberList(int group_idx){
        return memberMapper.getMemberList(group_idx);
    }
}
