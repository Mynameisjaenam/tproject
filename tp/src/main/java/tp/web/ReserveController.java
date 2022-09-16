package tp.web;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.NoArgsConstructor;
import tp.service.ReserveService;
import tp.service.ReserveVO;
import tp.service.UserVO;

@Controller
@NoArgsConstructor
public class ReserveController {

	@Resource(name = "reserveService")
	private ReserveService reserveService;
	
	@RequestMapping(value = "/about.do", method = RequestMethod.GET)
	public String about() {
		return "about";
	}
	
	@RequestMapping(value = "/seatInfoAlpha.do", method = RequestMethod.GET)
	public String seatInfo() {
		System.out.println("알파시티 좌석");
		return "reserve/seatInfoAlpha";
	}
	
	@RequestMapping(value = "/seatInfoMan.do", method = RequestMethod.GET)
	public String seatInfo2() {
		System.out.println("만촌 좌석");
		return "reserve/seatInfoMan";
	}
	
	@RequestMapping(value = "/reserveAlpha4.do", method = RequestMethod.GET)
	public String reserveAlpha4() {
		System.out.println("알파시티 4인 좌석");
		return "reserve/reserveAlpha4";
	}
	
	@RequestMapping(value = "/reserveAlpha6.do", method = RequestMethod.GET)
	public String reserveAlpha6() {
		System.out.println("알파시티 6인 좌석");
		return "reserve/reserveAlpha6";
	}
	
	@RequestMapping(value = "/reserveMan4.do", method = RequestMethod.GET)
	public String reserveMan4() {
		System.out.println("만촌 4인 좌석");
		return "reserve/reserveMan4";
	}
	
	@RequestMapping(value = "/reserveMan6.do", method = RequestMethod.GET)
	public String reserveMan6() {
		System.out.println("만촌 6인 좌석");
		return "reserve/reserveMan6";
	}

	@RequestMapping(value = "/reserve.do", method = RequestMethod.GET)
	public String reserve() {
		System.out.println("리졀브");
		return "reserve/reserve";
	}

	@RequestMapping(value = "/reserveConfirm.do", method = RequestMethod.GET)
	public String reserveConfirm(ReserveVO vo, Model model, HttpSession session, HttpServletRequest request)
			throws Exception {

		String userId = "";
		session = request.getSession();
		userId = (String) session.getAttribute("SessionUserID");

		System.out.println(userId);
		
//		int total = reserveService.selectreserveUserTotal(userId);
//		int totalPage = (int)Math.ceil((double)total/10);
//		int viewPage = vo.getViewPage();
//		int startIndex = (viewPage-1) * 10;		
//		int endIndex = 10;
//		
//		vo.setStartIndex(startIndex);
//		vo.setEndIndex(endIndex);
//		
//		model.addAttribute("total", total);
//		model.addAttribute("viewPage", viewPage);
//		model.addAttribute("totalPage", totalPage);
//		model.addAttribute("startIndex", startIndex);
//		model.addAttribute("endIndex", endIndex);

//		model.addAttribute("reserveList", list);
		
		model.addAttribute("reserveList", reserveService.selectReserveList(userId));
		
		return "reserve/reserveConfirm";
	}

	@RequestMapping(value = "/adminReserveList.do", method = RequestMethod.GET)
	public String adminreserveConfirm(ReserveVO vo, Model model) throws Exception {
		
		int total = reserveService.selectreserveTotal(vo);
		int totalPage = (int)Math.ceil((double)total/10);
		int viewPage = vo.getViewPage();
		int startIndex = (viewPage-1) * 10;
		int endIndex = 10;
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);

		model.addAttribute("total", total);
		model.addAttribute("viewPage", viewPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startIndex", startIndex);
		model.addAttribute("endIndex", endIndex);		
		model.addAttribute("adminReserveList", reserveService.adminReserveList(vo));

		return "reserve/adminReserveConfirm";
	}
	
	@RequestMapping(value = "/admin1ReserveList.do", method = RequestMethod.GET)
	public String admin1reserveConfirm(ReserveVO vo, Model model) throws Exception {

		model.addAttribute("admin1ReserveList", reserveService.admin1ReserveList(vo));

		return "reserve/admin1ReserveConfirm";
	}
	
	@RequestMapping(value = "/admin2ReserveList.do", method = RequestMethod.GET)
	public String admin2reserveConfirm(ReserveVO vo, Model model) throws Exception {

		model.addAttribute("admin2ReserveList", reserveService.admin2ReserveList(vo));

		return "reserve/admin2ReserveConfirm";
	}

	@ResponseBody
	@RequestMapping(value = "/insertreserve.do", method = RequestMethod.POST)
	public String insertReserve(ReserveVO vo, UserVO userVO, Model model, @RequestParam(name = "reserveDate") Date reserveDate,
			@RequestParam(name = "roomNo") int roomNo, @RequestParam(name = "branchNo") int branchNo,
			@RequestParam(name = "reserveSTime") String reserveSTime,
			@RequestParam(name = "reserveETime") String reserveETime, 
			@RequestParam(name = "userBirth") String userBirth, HttpSession session, HttpServletRequest request)
			throws Exception {

		String data = "";

		int price = 0;
		String s = vo.getReserveSTime();
		String e = vo.getReserveETime();
		String birth = userVO.getUserBirth();
		int stime = Integer.parseInt(s);
		int etime = Integer.parseInt(e);
		int ubirth = Integer.parseInt(birth);
		
		System.out.println("나이2=" + ubirth);

		//유저가 10대 미만이면 20프로 할인 원가 3000,4000원
		if(ubirth < 20) {
			if (vo.getRoomNo() == 1) {
				price = (etime - stime) * 2400;
			} else if (vo.getRoomNo() == 2) {
				price = (etime - stime) * 2400;
			} else if (vo.getRoomNo() == 3) {
				price = (etime - stime) * 3200;
			} else if (vo.getRoomNo() == 4) {
				price = (etime - stime) * 3200;
			}			
		//유저가20대 이상이면 10프로 할인 원가 3000,4000원
		} else if(ubirth >= 20) {
			if (vo.getRoomNo() == 1) {
				price = (etime - stime) * 2700;
			} else if (vo.getRoomNo() == 2) {
				price = (etime - stime) * 2700;
			} else if (vo.getRoomNo() == 3) {
				price = (etime - stime) * 3600;
			} else if (vo.getRoomNo() == 4) {
				price = (etime - stime) * 3600;
			}
		}

		vo.setPrice(price);

		/*----------------------------------------*/

		vo.setReserveDate(reserveDate);
		vo.setRoomNo(roomNo);
		vo.setBranchNo(branchNo);
		vo.setReserveSTime(reserveSTime);
		vo.setReserveETime(reserveETime);

		int count = reserveService.reserveCheck(vo);

		if (count >= 1) {
			data = "fail";
		} else if (stime > etime || stime == etime) {
			data = "over";
		} else if (count == 0) {
			data = "ok";
			reserveService.insertReserve(vo);
		}

		System.out.println("count=" + count);

		return data;
	}

	
	@RequestMapping(value = "/reserveDelete.do", method = RequestMethod.GET)
	public String reserveDelete() throws Exception {			
		return "reserve/reserveDelete";
	}
	
	@ResponseBody
	@RequestMapping(value = "/reserveDelete.do", method = RequestMethod.POST)
	public String reserveDelete(HttpSession session, HttpServletRequest request) throws Exception {
		
		String data = "";
		
		int reserveNo = (int) session.getAttribute("SessionreserveNo");
		
		if(reserveNo != 0) {
			System.out.println("리졀브=>" + reserveNo);		
			reserveService.reserveDelete(reserveNo);
			session.removeAttribute("SessionreserveNo");
			data = "ok";
		}
				
		return data;
	}
	
	@RequestMapping(value = "/reserveDeleteConfirm.do", method = RequestMethod.GET)
	public String reserveDeleteConfirm() throws Exception {				
		return "main";
	}
	
	@ResponseBody
	@RequestMapping(value = "/reserveDeleteConfirm.do", method = RequestMethod.POST)
	public String reserveDeleteConfirm(@RequestParam(name = "reserveNo") int reserveNo, Model model, 
			HttpSession session, HttpServletRequest request) throws Exception {
		
		String data = "";
		
		if (reserveNo != 0) {
			System.out.println("예약번호" + reserveNo);
			session.setAttribute("SessionreserveNo", reserveNo);
			data = "success";
		}
		
		return data;
	}


}
