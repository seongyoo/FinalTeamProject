package com.example.board;

import com.example.board.BoardVO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


@Repository
public class BoardDAO {

    private final String BOARD_INSERT = "insert into drama(rank1,title,platform,type1,character1,expl,eps,rate) values (?,?,?,?,?,?,?,?)";
    private final String BOARD_UPDATE = "update drama set rank1=?, title=?, platform=?, type1=?, character1=?, expl=?, eps=?, rate=? where seq=?";
    private final String BOARD_DELETE = "delete from drama  where seq=?";
    private final String BOARD_GET = "select * from drama  where seq=?";
    private final String BOARD_LIST = "select * from drama order by seq desc";

    @Autowired
    SqlSession sqlSession;
    public int insertBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int seq) {
        int result = sqlSession.delete("Board.deleteBoard", seq);
        return result;
    }

    public int updateBoard(BoardVO vo) {
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }

    public BoardVO getBoard(int seq){
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }

    public List<BoardVO> getBoardList() {
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }

}