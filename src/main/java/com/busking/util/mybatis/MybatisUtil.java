package com.busking.util.mybatis;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {
	
	// 마이바티스 세션팩토리 생성, 설정파일의 위치 등을 지정
	private static SqlSessionFactory sqlSessionFactory;

	static {

		try {
			// 마이바티스 설정 파일의 위치.
			String resource = "mybatis/config/mybatis-config.xml"; 
			
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

			//System.out.println("실행성공:" + sqlSessionFactory);
		} catch (Exception e) {
			e.printStackTrace();
			//System.out.println("실행오류");
		}
	}
	//GETTER
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}
