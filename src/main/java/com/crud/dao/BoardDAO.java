package com.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.crud.bean.BoardVO;
import com.crud.common.JDBCUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

//    @Autowired
//    JdbcTemplate jdbcTemplate;

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template){
        this.template = template;
    }

    private final String BOARD_INSERT = "insert into drama (rank, title, platform, type, character, expl, eps, rate) values (?,?,?,?,?,?,?,?)";
    private final String BOARD_UPDATE = "update drama set rank=?, title=?, platform=?, type=?, character=?, expl=?, eps=?, rate=?, where seq=?";
    private final String BOARD_DELETE = "delete from drama  where seq=?";
    private final String BOARD_GET = "select * from drama  where seq=?";
    private final String BOARD_LIST = "select * from drama order by seq desc";

    public int insertBoard(BoardVO vo) {
        return template.update(BOARD_INSERT, new
                Object[]{vo.getRank(), vo.getTitle(), vo.getPlatform(), vo.getType(), vo.getCharacter(), vo.getExpl(), vo.getEps(), vo.getRate()});
    }

    // 글 삭제
    public int deleteBoard(int id){
        return template.update(BOARD_DELETE,
                new Object[]{id});
    }

    public int updateBoard(BoardVO vo) {
        return template.update(BOARD_UPDATE,
                new Object[]{vo.getRank(), vo.getTitle(), vo.getPlatform(), vo.getType(), vo.getCharacter(), vo.getExpl(), vo.getEps(), vo.getRate(), vo.getSeq()});
    }

    public BoardVO getBoard(int seq) {
        return template.queryForObject(BOARD_GET,
                new Object[] {seq},
                new BeanPropertyRowMapper<BoardVO>(BoardVO.class));
    }

//    public List<BoardVO> getBoardList() {
//        return template.query(BOARD_LIST, new RowMapper<BoardVO>() {
//            @Override
//            public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//                return null;
//            }
//        });
//    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = new ArrayList<BoardVO>();
        System.out.println("===> JDBC로 getBoardList() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_LIST);
            rs = stmt.executeQuery();
            while(rs.next()) {
                BoardVO one = new BoardVO();
                one.setSeq(rs.getInt("seq"));
                one.setRank(rs.getString("rank"));
                one.setTitle(rs.getString("title"));
                one.setPlatform(rs.getString("platform"));
                one.setType(rs.getString("type"));
                one.setCharacter(rs.getString("character"));
                one.setExpl(rs.getString("expl"));
                one.setEps(rs.getString("eps"));
                one.setRate(rs.getString("rate"));
                one.setCnt(rs.getInt("cnt"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}