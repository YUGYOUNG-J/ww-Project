package com.kh.walkwork.project.task.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.walkwork.community.model.vo.Reply;
import com.kh.walkwork.project.common.model.vo.Project;
import com.kh.walkwork.project.task.model.vo.Task;

@Repository
public class TaskDao {
	
	//업무생성
	public int insertTask(SqlSessionTemplate sqlSession, Task t) {
		return sqlSession.insert("taskMapper.insertTask", t);
	}
	
	//업무 : 댓글 작성하기
	public int insertReplyList(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("taskMapper.insertReplyList", r);
	}

	//업무 : 댓글 가져오기
	public List<Reply> getTaskReplyList(SqlSessionTemplate sqlSession, Task t) {
		return sqlSession.selectList("taskMapper.getTaskReplyList", t);
	}

	//업무 : 댓글 삭제하기
	public int deleteTaskReplyList(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.delete("taskMapper.deleteTaskReplyList", r);
	}
	
	//업무 상세보기
	public Task getTaskDetail(SqlSessionTemplate sqlSession, Task t) {
		return sqlSession.selectOne("taskMapper.getTaskDetail", t);
	}
	
	//업무 리스트가져오기
	public List<Task> getTaskList(SqlSessionTemplate sqlSession, Project p) {
		return sqlSession.selectList("taskMapper.getTaskList", p);
	}

	//업무 필터 보기
	public List<Task> getTaskListByFilter(SqlSessionTemplate sqlSession, Task t) {
		return sqlSession.selectList("taskMapper.getTaskListByFilter", t);
	}
	
	//업무수정
	public int updateTask(SqlSessionTemplate sqlSession, Task t) {
		return sqlSession.update("taskMapper.updateTask", t);
	}
	
	//업무 차트
	public int taskStateList(SqlSessionTemplate sqlSession, Task t) throws Exception{
		Integer value = sqlSession.selectOne("taskMapper.taskStateList", t);
		if (value == null) {
			return 0;
		} else {
			return value;
		}
	}
	



}
