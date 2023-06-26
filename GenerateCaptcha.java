package captchagenerator;

import java.util.Random;
public class GenerateCaptcha {
	public String create() {
		char data[]= "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ012345789".toCharArray();
		char index[]=new char[5];
		Random r=new Random();	
		/*The below code generates the captch randomly*/
		for(int i=0;i<index.length;i++) {
			int ran=r.nextInt(data.length);
			index[i]=data[ran];
		}
		return new String(index) ;
	}
	}

