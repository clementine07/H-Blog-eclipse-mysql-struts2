package actions;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class uploadAction extends ActionSupport {
	
	private File image;	//上传的文件
	private String imageFileName; //文件名称
	private String imageContentType; //文件类型
	
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
		//找到项目部署的目录，指定其下面的images目录存放图片
		//C:\apache-tomcat-6.0.33\webapps
		String realpath = ServletActionContext.getServletContext().getRealPath("/images");
		System.out.println("realpath:"+realpath);
		if(image !=null)
		{
			File savefile = new File(new File(realpath), imageFileName);
			if(!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			//调用commons-io-***.jar包中的方法上传文件
			try {
				FileUtils.copyFile(image, savefile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			ActionContext.getContext().put("message","文件上传成功");			
		}
		return "success";
	}
}
