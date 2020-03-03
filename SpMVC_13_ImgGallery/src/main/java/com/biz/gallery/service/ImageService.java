package com.biz.gallery.service;

import java.util.ArrayList;
import java.util.List;

import javax.swing.plaf.multi.MultiFileChooserUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz.gallery.domain.ImageFilesVO;
import com.biz.gallery.domain.ImageVO;
import com.biz.gallery.repository.ImageDao;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ImageService {

	
	/*
	 * 기존방법:setter 주입방식
	 * @Autowired
	 * 클래스 객체
	 * 
	 */
	
	
	private final ImageDao imDao;
	private final FileService fService;
	private final ImageFileService ifService;
	/*
	 * 
	 * 생성자에서 객체 주입
	 * 사용하는 객체를 final로 선언하여 보호할 수 있고
	 * 혹시 모를 해킹에 의한 데이터 변조를 막을 수 있음
	 * 클래스의 교차참조를 컴파일러 차원에서 방지할 수 있음
	 * 코드가 다소 번잡스러울 수 있지만 setter주입보다는 constructor(생성자)주입 방식을 사용
	 * 인텔리제이(intelij)에서는 setter 주입방식을 사용하면 ide가 심각한 경고를 보임
	 * 
	 */
	@Autowired
	public ImageService(ImageDao imDao, FileService fService, ImageFileService ifService) {
		super();
		this.imDao = imDao;
		this.fService = fService;
		this.ifService = ifService;
	}


	public List<ImageVO> selectAll(){
		
		return imDao.selectAll();
		
	}
	
	/*
	 * 일반적으로 dao.insert(vo)를 호출했을 때 vo에 담아서 전달한 값은 insert가  수행된 후에 볼 수 있으나 seq처럼 SQL에서 생성된 값은 확인 불가능
	 * 
	 *  
	 *  
	 *  이 값을 insert()후에 사용해야할 경우가 잇음 이때는 dao, mapper, selectkey를 사용하여 값을 생성하면 insert()후에 그 값ㅇ들 사용할 수 잇음
	 */
	public int insert(ImageVO imageVO) {
		
		
		List<String> fileList = imageVO.getImg_files();
		
		if(fileList != null && fileList.size() > 0) {
			imageVO.setImg_file(imageVO.getImg_files().get(0));// 여러개의 파일 중 0번째 파일을 대표 파일로 업로드
		}
		
		
		//1. tbl_gallery에 데이터 insert
		int ret = imDao.insert(imageVO);
		
		
		// 2. 파일 이름들을 ImageFilesVO의 리스트에 생성 
		// ImageFilesVO에 img_file_p_code 컬럼에 tbl_gallery의 seq값을 추가해 리스트 새엉
		 List<ImageFilesVO> files = new ArrayList<ImageFilesVO>();
		
		 
		 if(fileList != null) {
			 
			 for(String fileName : fileList) {
					files.add(
					ImageFilesVO.builder().img_file_upload_name(fileName).img_file_p_code(imageVO.getImg_seq()).build());
					
				}
			 
			 ifService.imageFileInsert(files);	// 3. 파일 정보를 tbl_images에 insert
			 
		 }
		
	
		
		
		log.debug(imageVO.toString());
		return ret;
	}


	public ImageVO findBySeq(String img_seq) {
		// TODO Auto-generated method stub
		
		ImageVO imgVO = imDao.findBySeq(img_seq);
		log.debug(imgVO.toString());
		return imgVO;
	}


	//혹시 파일이 변경되면 기존파일을 먼저 제거하고 새로운 파일로 등록
	public int update(ImageVO imageVO) {
		// TODO Auto-generated method stub
		
		
		 ImageVO oldImageVO = imDao.findBySeq(imageVO.getImg_seq()+"");
		 //새로 업데이트된 파일이름이 기존 테이블에 저장된 파일이름과 다르면 먼저 파일을 삭제함
		 
		 if(oldImageVO.getImg_file() != null && imageVO.getImg_file() != null) {
			 if(!oldImageVO.getImg_file().equals(imageVO.getImg_file())) {
				 fService.file_delete(oldImageVO.getImg_file());
			 }
		 }
		 
		 
		 
		 int ret = imDao.update(imageVO);
		 
		return ret;
	}


	public int delete(String img_seq) {
		// TODO Auto-generated method stub
		
		ImageVO imgVO = imDao.findBySeq(img_seq);
		
		if(imgVO.getImg_file() != null) {
			fService.file_delete(imgVO.getImg_file());
		}
		
		return imDao.delete(img_seq);
	}
	
	public List<String> files_up(MultipartHttpServletRequest mFiles){
		
		List<String> fileNames = new ArrayList<String>();
		
		
		for(MultipartFile file: mFiles.getFiles("files")) {
			
			//1개의 파일을 업로드하고
			// 저장한 파일이름을 return
			fileNames.add(fService.file_up(file));
			
		}
		
		//list를 return
		return fileNames;
	}
	
	
	
}
