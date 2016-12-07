package controller;

import java.io.File;  
import java.io.FileInputStream;  
import java.io.FileOutputStream;  
import java.io.InputStream;  
import java.io.OutputStream;  
  
import org.apache.struts2.ServletActionContext;  
public class StrutsUpload {
	private static final String SUCCESS = null;
	private String usename ;  
    private File file1 ; //具体上传文件的 引用 , 指向临时目录中的临时文件  
    private String file1FileName ;  // 上传文件的名字 ,FileName 固定的写法  
    private String file1ContentType ; //上传文件的类型， ContentType 固定的写法  
      
    public String getUsename() {  
        return usename;  
    }  
    public void setUsename(String usename) {  
        this.usename = usename;  
    }  
    public File getFile1() {  
        return file1;  
    }  
    public void setFile1(File file1) {  
        this.file1 = file1;  
    }  
    public String getFile1FileName() {  
        return file1FileName;  
    }  
    public void setFile1FileName(String file1FileName) {  
        this.file1FileName = file1FileName;  
    }  
    public String getFile1ContentType() {  
        return file1ContentType;  
    }  
    public void setFile1ContentType(String file1ContentType) {  
        this.file1ContentType = file1ContentType;  
    }  
      
    public String execute() throws Exception {  
        //获取文件存储路径  
        String path = ServletActionContext.getRequest().getRealPath("/h/upload");  
        //输出流  
        OutputStream os = new FileOutputStream(new File(path,file1FileName));  
        //输入流  
        InputStream is = new FileInputStream(file1);  
          
        byte[] buf = new byte[1024];  
        int length = 0 ;  
          
        while(-1 != (length = is.read(buf) ) )  
        {  
            os.write(buf, 0, length) ;  
        }  
        is.close();  
        os.close();  
          
        return SUCCESS;  
    }  

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
