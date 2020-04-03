/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fileManager;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Administrator
 */
public class FileUpServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private final String fileNameExtractorRegex="filename=\".+\"";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
    }
 private String getFileName(Part part){
        String cotentDesc=part.getHeader("content-disposition");
        String fileName=null;
        Pattern pattern=Pattern.compile(fileNameExtractorRegex);
        Matcher matcher=pattern.matcher(cotentDesc);
        if(matcher.find()){
            fileName=matcher.group();
            fileName=fileName.substring(10,fileName.length()-1);
            fileName=fileName.substring(fileName.lastIndexOf("\\"),fileName.length());
            fileName=fileName.substring(1,fileName.length());
        }
        return fileName;
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        InputStream in=request.getInputStream();
            OutputStream outflow=null;
            OutputStream fout=null;
            String path =this.getServletContext().getRealPath("upload.jsp");
            path=path.substring(0, path.lastIndexOf("\\"));
            String filePath=path+"\\tddownload\\";
            path=path+"\\tddownload\\temp.txt";

            outflow=new FileOutputStream(path);
            int c=0;
            while((c=in.read())!=-1){
            outflow.write(c);
            outflow.flush();
            }
            String fileName = null;
            RandomAccessFile raf=new RandomAccessFile(path,"r");
            this.log(raf.readLine());
            String []tempName=raf.readLine().split(";");
            for(String s:tempName){
            if(s.contains("filename")){
            String[] ss=s.split("=");
            fileName=ss[ss.length-1];
            }
            }
            this.log(raf.readLine());
            this.log(raf.readLine());
            fileName=fileName.substring(fileName.lastIndexOf("\\"), fileName.length());
            fout=new FileOutputStream(filePath+fileName.replace("\"", ""));
            int d=0;
            while((d=raf.read())!=-1){
            fout.write(d);
            fout.flush();
            }
            fout.close();
            in.close();
            outflow.close();
            raf.close();
            File file=new File(filePath+"temp.txt".replace("\"", ""));
            if(file.exists()){
            if(file.delete()){
            this.log("finished");
            }
        }
            response.sendRedirect("http://localhost:8080/JRMS/fileManager/fileUp.jsp");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
