package com.around.admin.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.around.admin.model.Board;
import com.around.admin.model.Notice;
import com.around.admin.model.Question;
import com.around.admin.repository.BoardRepository;
import com.around.admin.repository.NoticeRepository;
import com.around.admin.repository.QuestionRepository;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	BoardRepository boardRepository;

	@Autowired
	QuestionRepository questionRepository;

	@Autowired
	NoticeRepository noticeRepository;
	
	@GetMapping("/")
	public String home() {
		return "admin";
	}

	@GetMapping("/report/find")
	public @ResponseBody List<Board> reportFind(Model model) {
		List<Board> boards = boardRepository.findByReportCountNotOrderByBoardCreateDateDesc(1);
		model.addAttribute("reportList", boards);
		return boards;
	}

	@GetMapping("/question/findall")
	public @ResponseBody List<Question> questionFind(Model model) {
		List<Question> questions = questionRepository.findAll();
		return questions;
	}

	@PostMapping("/notice/save")
	public Notice save(@RequestBody Notice notice) {
		return noticeRepository.save(notice);
	}

	@GetMapping("/notice/findall")
	public List<Notice> findAll() {
		return noticeRepository.findAll();
	}

	@GetMapping("/notice/findby/{num}")
	public Notice findByID(@PathVariable int num) {

		Optional<Notice> opR = noticeRepository.findById(num);
		if (opR.isPresent()) {
			Notice notice = opR.get();
			return notice;
		}
		return null;
	}

	@PostMapping("/notice/update")
	public Notice update(Notice notice) {
		return noticeRepository.save(notice);
	}

	@PostMapping("/notice/delete/{num}")
	public String delete(@PathVariable int num) {

		noticeRepository.deleteById(num);

		return " \"delete\" : " + num;
	}

}
