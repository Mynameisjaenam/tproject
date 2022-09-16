package tp.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ReserveVO {

	private int reserveNo;
	private String userId;
	private String userName;
	private String userPhone;
	private Date reserveDate;
	private String reserveSTime;
	private String reserveETime;
	private int roomNo;
	private int branchNo;
	private int price;
	
	private int viewPage = 1;
	private int startIndex = 1;
	private int endIndex = 10;
	
}
