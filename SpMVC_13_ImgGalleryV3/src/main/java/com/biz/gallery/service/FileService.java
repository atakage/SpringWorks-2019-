package com.biz.gallery.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


@Service
public class FileService {
	
	
	
	private final String filePath;
	
	
	
	
	
	@Autowired
	public FileService(String filePath) {
		super();
		this.filePath = filePath;
	}






	public String file_up(MultipartFile mFile) {
			
		if(mFile == null) {
			
			return null;
			
		}
		
		// 폴더 정보 생성
		File dir = new File(filePath);
		
		if(!dir.exists()) {
			
			//c:/bizwork/files
			//bizwork 폴더가 있고, files 폴더만 없을 때
			dir.mkdir();
			
			//bizwork 폴더도 없고, files 폴더를 찾을 수 없을 때, 모든 경로를 생성
			dir.mkdirs();
			
			
		}
		
		String strUUID = UUID.randomUUID().toString();
		String originalName = mFile.getOriginalFilename();
		String upLoadFileName = strUUID + originalName;
		
		//업로드할 파일 객체 생성
		File upLoadFile = new File(filePath, upLoadFileName);
		
		try {
			mFile.transferTo(upLoadFile);
			
			return upLoadFileName;
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}






	public void file_delete(String img_file) {
		// TODO Auto-generated method stub
		
		//filePath : /bizwork/files/
		//img_file : aaa.jpg
		//결과값: /bizwork/files/aaa.jpg
		File file = new File(filePath, img_file);
		if(file.exists()) {
			file.delete();
		}
		
	}




/*
 *  서버에 파일이 저장된 path와 파일일믕르 결합하여 download가 가능한 file객체를 생성하여 return
 */

	public File file_down(String downFileName) {
		// TODO Auto-generated method stub
		
		File file = new File(filePath, downFileName);
		
		if(!file.exists()) return null;
		
		return file;
	}

}
