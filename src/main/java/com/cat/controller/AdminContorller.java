package com.cat.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cat.model.Criteria2;
import com.cat.model.GoodsVO;
import com.cat.model.OrderCancelDTO;
import com.cat.model.OrderDTO;
import com.cat.model.pageDTO;
import com.cat.service.AdminService;
import com.cat.service.OrderService;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/admin")
@Log4j
public class AdminContorller {
	
	@Autowired
	private AdminService service;
	
	@Autowired
	private OrderService orderService;

	@GetMapping("/admin-main")
	public void adminPage() {
		
	}
	
	@GetMapping("/goodsManage")
	public void goodsMangeGET(Criteria2 cri,Model model)throws Exception{
		
		List list = service.goodsGetList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		}else {
			model.addAttribute("listCheck", "empty");
			
		}
		
		model.addAttribute("pageMaker", new pageDTO(cri, service.goodsGetTotal(cri)));
		
	}
	
	@GetMapping({"/goodsDetail","/goodsModify"})
	public void goodsInfo(int goods_NO,Criteria2 cri,Model model)throws Exception {
		
		/* 목록 페이지 조건 정보 */
		model.addAttribute("cri", cri);
		
		/* 조회 페이지 정보 */
		model.addAttribute("goodsInfo", service.goodsDetail(goods_NO));
		
		/* 카테고리 리스트 정보 */
		ObjectMapper objm = new ObjectMapper();
		
		List list = service.cateList();
		
		String cateList = objm.writeValueAsString(list);
		
		model.addAttribute("cateList", cateList);
		
		
	}
	

	@PostMapping("/goodsModify")
	public String goodsModifyPOST(GoodsVO vo, RedirectAttributes rttr)throws Exception {
		
		vo.setImg_NM(vo.getUuid()+"_"+vo.getImg_NM());
		
		int result = service.goodsModify(vo);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/admin/goodsManage";		
		
	}
	
	@PostMapping("/goodsDelete")
	public String goodsDelete(int goods_NO,RedirectAttributes rttr) {
		
		int result = service.goodsDelete(goods_NO);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/admin/goodsManage";
		
	}
		
	
	
	@GetMapping("/goodsEnroll")
	public void goodsEnrollGET(Model model)throws Exception{
						
		ObjectMapper objm = new ObjectMapper();
		
		List list = service.cateList();
		
		String cateList = objm.writeValueAsString(list);
		
		model.addAttribute("cateList", cateList);
		
	}
	
	@PostMapping("/goodsEnroll")
	public String goodsEnrollPOST(GoodsVO VO,RedirectAttributes rttr)throws Exception{
		
		VO.setImg_NM(VO.getUuid()+"_"+VO.getImg_NM());
		
		service.goodsEnroll(VO);
		
		rttr.addFlashAttribute("enroll_result", VO.getGoods_NM());
		
		return "redirect:/admin/goodsManage";
		
	}
	
	@PostMapping(value="/uploadAjax", produces = MediaType.APPLICATION_JSON_VALUE)	
	public ResponseEntity<List<GoodsVO>> uploadAjax(MultipartFile[] uploadFile)throws Exception {
		
		/* 이미지 파일 체크 */
		for(int i=0; i<uploadFile.length; i++) {
			
			File fileChk = new File(uploadFile[i].getOriginalFilename());			
			String type = null;
			
			// probeContentType은 파라미터로 전달받은 파일의 MIME TYPE을 문자열(Stirng) 반환해주는 메서드
			type = Files.probeContentType(fileChk.toPath());
			log.info("MIME TYPE : " + type);
			
			if(!type.startsWith("image")) {
				
				List<GoodsVO> list = null;
				return new ResponseEntity<>(list,HttpStatus.BAD_REQUEST);
				
			}
			
		}
		
		String uploadFolder  = "C:\\Spring\\Project\\CatMall\\src\\main\\webapp\\resources\\admin\\img\\";
		
		/* 날짜 폴더 경로 */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date(); 
		
		String str = sdf.format(date);
		
		String date_PATH = str.replace("-", File.separator);
		
		File upload_PATH = new File(uploadFolder, date_PATH);
		
		
		//디렉터리가 존재하는지 유무를 반환하는 exists()
		if(upload_PATH.exists() == false) {
			
			upload_PATH.mkdirs();	//mkdirs 여러개의 폴더 생성
		
		}
		
		List<GoodsVO> list = new ArrayList();
		
		
		for(int i=0; i<uploadFile.length; i++) {
			
			GoodsVO vo = new GoodsVO();
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			
			/* 파일 이름 */
			String img_NM = uploadFile[i].getOriginalFilename();
			vo.setImg_PATH(date_PATH);
		
			
			/* uuid 적용 파일 이름 */
			
			img_NM = uuid + "_" + img_NM;
			
			vo.setImg_NM(img_NM);
			log.info("=======" + img_NM);
			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(upload_PATH, img_NM);
			
			/* 파일 저장 */
			try {
				
				uploadFile[i].transferTo(saveFile);
				
				File thumbnailFile = new File(upload_PATH, "s_" + img_NM);				
				
				BufferedImage bo_image = ImageIO.read(saveFile);
				
				//비율
				double ratio = 3;
				//넓이 높이
				int width = (int)(bo_image.getWidth() / ratio);
				int height = (int)(bo_image.getHeight() / ratio);
				
 								
				Thumbnails.of(saveFile)
				
		        .size(width, height)
		        .toFile(thumbnailFile);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			list.add(vo);
			
		}//for 
		
		
		ResponseEntity<List<GoodsVO>> result = new ResponseEntity<List<GoodsVO>>(list, HttpStatus.OK);
		
		return result;
	}
	
	/*
	 * 반환 타입은 ResponseEntity 객체를 통해 body에 byte [] 데이터를 보내야 하기 때문에
	 * ResponseEntity<byte[]>를 반환 타입으로 작성
	 */
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String img_NM){
		
		log.info("getImage()......... "  +img_NM);
		/*
		c:\img_PATH\가 아닌 c:\\img_PATH\\을 작성한 이유는 `
		특수 문자\을 인식할 수 있도록 이스케이프 문자를 사용
		*/
		File file = new File("C:\\Spring\\Project\\CatMall\\src\\main\\webapp\\resources\\admin\\img\\" + img_NM);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String img_NM){
		
		log.info("deleteFile...." + img_NM);
		
		File file = null;
		
		try {
			
			/* 썸네일 파일 삭제 */
			file = new File("C:\\Spring\\Project\\CatMall\\src\\main\\webapp\\resources\\admin\\img\\" + URLDecoder.decode(img_NM,"UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
			String fileName = file.getAbsolutePath().replace("s_", "");
			
			log.info("fileName : " + fileName);
			
			file = new File(fileName);
			
			file.delete();
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail",HttpStatus.NOT_IMPLEMENTED);
			
		}
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
		
	}
	
	/* 주문 현황 페이지 */
	@GetMapping("/orderList")
	public String orderListGET(Criteria2 cri, Model model) {
		
		List<OrderDTO> list = service.getOrderList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			model.addAttribute("pageMarker", new pageDTO(cri, service.getOrderTotal(cri)));
		} else {
			model.addAttribute("listCheck", "empty");
		}

		
		return "/admin/orderList";
	}
	
	

	/* 주문삭제 */
	@PostMapping("/orderCancel")
	public String orderCanclePOST(OrderCancelDTO dto) {
		
		orderService.orderCancel(dto);
		
		return "redirect:/admin/orderList?keyword=" + dto.getKeyword() + "&amount=" + dto.getAmount() + "&pageNum=" + dto.getPageNum();
	} 
	
	
	
	
}
