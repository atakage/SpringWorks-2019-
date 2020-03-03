package com.biz.ems;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Scanner;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class MakeNaverSec {
	
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		StandardPBEStringEncryptor pbEnc = new StandardPBEStringEncryptor();
		
		//환경변수 가져오기
		Map<String, String> envList = System.getenv();
		
		String saltPass = envList.get("NAVER");
		
		System.out.println("SaltPass" + saltPass);
		System.out.print("Naver ID :");
		String naverId = scanner.nextLine();
		
		System.out.print("Naver Pass:");
		String naverPass = scanner.nextLine();
		
		System.out.print("DB User:");
		String dbUserId = scanner.nextLine();
		
		System.out.print("DB Pass:");
		String dbUserPass = scanner.nextLine();
		
		// 암호화 설정
		pbEnc.setAlgorithm("PBEWithMD5AndDES");
		pbEnc.setPassword(saltPass);
		
		
		String encNaverId = pbEnc.encrypt(naverId);
		String encNaverPass = pbEnc.encrypt(naverPass);
		
		String encdbUserId = pbEnc.encrypt(dbUserId);
		String encdbUserPass = pbEnc.encrypt(dbUserPass);
		
		System.out.printf("Naver: %s, %s\n", naverId, naverPass);
		System.out.printf("encNaver: %s, %s\n", encNaverId, encNaverPass);
		
		String saveNaverId = String.format("naver.username=ENC(%s)", encNaverId);
		String saveNaverPass = String.format("naver.password=ENC(%s)", encNaverPass);
		
		String saveDbUserId = String.format("mysql.user=ENC(%s)", encdbUserId);
		String saveDbPass = String.format("mysql.password=ENC(%s)", encdbUserPass);
		
		String proFileName = "./src/main/webapp/WEB-INF/spring/naver.email.secret.properties";
		
		String WEB_INF = "./src/main/webapp/WEB-INF/spring";
		String spring = "";
		String naver_pro = "naver.email.secret.properties";
		
		
		File proFile = new File(WEB_INF,naver_pro);
		
		
		
		//PrintWriter pw = new PrintWriter(proFileName);
		try {
			
			PrintWriter out = new PrintWriter(proFile);
			out.println(saveNaverId);
			out.println(saveNaverPass);
			
			out.println(saveDbUserId);
			out.println(saveDbPass);
			
			out.flush();
			out.close();
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
