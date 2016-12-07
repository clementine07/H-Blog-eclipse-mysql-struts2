package actions;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class uploadAction extends ActionSupport {
	
	private File image;	//�ϴ����ļ�
	private String imageFileName; //�ļ�����
	private String imageContentType; //�ļ�����
	
	public File getImage() {
		return image;
	}
	public void setImage(File image) {
		this.image = image;
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
	public String getImageContentType() {
		return imageContentType;
	}
	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
	
	public String execute()
	{
		//�ҵ���Ŀ�����Ŀ¼��ָ���������imagesĿ¼���ͼƬ
		//C:\apache-tomcat-6.0.33\webapps
		String realpath = ServletActionContext.getServletContext().getRealPath("/images");
		System.out.println("realpath:"+realpath);
		if(image !=null)
		{
			File savefile = new File(new File(realpath), imageFileName);
			if(!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			//����commons-io-***.jar���еķ����ϴ��ļ�
			try {
				FileUtils.copyFile(image, savefile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			ActionContext.getContext().put("message","�ļ��ϴ��ɹ�");			
		}
		return "success";
	}
}
