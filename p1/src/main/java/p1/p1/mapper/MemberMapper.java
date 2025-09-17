package p1.p1.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import p1.p1.dto.GroupDTO;
import p1.p1.dto.MemberDTO;

@Mapper
public interface MemberMapper {

    @Select("select group_idx, group_name, description, leader_idx from groupTbl where group_name = #{group_name} and group_pass = #{group_pass}")
    GroupDTO loginProcess(GroupDTO loginGroup);

    @Select("select * from members where group_idx = #{group_idx}")
    List<MemberDTO> getMemberList(@Param("group_idx") int group_idx);
}
