package com.around.admin.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.around.admin.model.Board;
import com.around.admin.model.Notice;
import com.around.admin.model.Question;
import com.around.admin.repository.BoardRepository;
import com.around.admin.repository.HeartRepository;
import com.around.admin.repository.NoticeRepository;
import com.around.admin.repository.QuestionRepository;
import com.around.admin.repository.ReportRepository;
import com.around.admin.service.BoardService;
import com.around.admin.util.MyUtils;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	BoardRepository boardRepository;

	@Autowired
	QuestionRepository questionRepository;

	@Autowired
	NoticeRepository noticeRepository;
	
	@Autowired
	ReportRepository reportRepository;
	@Autowired
	HeartRepository heartRepository;
	@Autowired
	BoardService boardService;
	
	@GetMapping("/")
	public String home(Model model) {
		
		List<Board> webpageList =boardService.webPageList(1);
		model.addAttribute("webpagelist", webpageList);
		return "admin";
	}
	

	@GetMapping("/report/find")
	public @ResponseBody List<Board> reportFind(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
		List<Integer> reportList = reportRepository.findReportList();
		List<Board> boards = new ArrayList<Board>();
		for(int i: reportList) {
			
			Optional<Board> boardO = boardRepository.findById(i);
			Board board = new Board();
			if(boardO.isPresent()) {
				board = boardO.get();
				int reportCount= reportRepository.findReportCount(i);
				board.setReportCount(reportCount);
			}
			boards.add(board);
		}
		boards = MyUtils.paging(page, boards);
		model.addAttribute("reportList", boards);
		return boards;
	}

	@GetMapping("/question/findall")
	public @ResponseBody List<Question> questionFind(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
		List<Question> questions = questionRepository.findAll();
		questions = MyUtils.paging(page, questions);
		return questions;
	}

	@PostMapping("/notice/save")
	public Notice save(@RequestBody Notice notice) {
		return noticeRepository.save(notice);
	}

	@GetMapping("/notice/findall")
	public List<Notice> findAll(@RequestParam(value = "page", defaultValue = "1") int page) {
		List<Notice> notices = noticeRepository.findAll();
		notices = MyUtils.paging(page, notices);
		return notices;
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
