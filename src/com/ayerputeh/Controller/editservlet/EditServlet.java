/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ayerputeh.Controller.editservlet;

/**
 *
 * @author Hp
 */

import com.ayerputeh.Model.empdao.EmpDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ayerputeh.Controller.emp.Emp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/EditServlet")  
public class EditServlet extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)   
           throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
       // out.println("<h1>Update Employee</h1>");  
        //String sid=request.getParameter("id");  
        //int id=Integer.parseInt(sid);  //id bg subjek
          
       // Emp e=EmpDao.getEmployeeById(id); //by kelas id 
          
        
       // out.print("<tr><td></td><td><input type='hidden' name='id' value='"+e.getId()+"'/></td></tr>");  
        //out.print("<tr><td>Name:</td><td><input type='text' name='name' value='"+e.getName()+"'/></td></tr>");  
        //out.print("<tr><td>Password:</td><td><input type='password' name='password' value='"+e.getPassword()+"'/></td></tr>");  
        //out.print("<tr><td>Email:</td><td><input type='email' name='email' value='"+e.getEmail()+"'/></td></tr>");  
        //out.print("<tr><td>Country:</td><td>");  
        //out.print("<select name='country' style='width:150px'>");  
        //out.print("<option>India</option>");  
        //out.print("<option>USA</option>");  
        //out.print("<option>UK</option>");  
        //out.print("<option>Other</option>");  
        //out.print("</select>");  
        //out.print("</td></tr>");  
        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");  
        out.print("</table>");  
        out.print("</form>");  
         out.print("<html xmlns=\"http://www.w3.org/1999/xhtml\">");
out.print("<head>");
out.print("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />");
out.print("<title></title>");
out.print("<meta name=\"keywords\" content=\"\" />");
out.print("<meta name=\"description\" content=\"\" />");
out.print("<link href=\"http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900\" rel=\"stylesheet\" />");
out.print("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />");
out.print("<link href=\"fonts.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />");
out.print("<link rel=\"stylesheet\" href=\"css/sky-forms.css\">");
out.print("<!--[if IE 6]>");
out.print("<link href=\"default_ie6.css\" rel=\"stylesheet\" type=\"text/css\" />");
out.print("<![endif]-->");
out.print("</head>");
out.print("<body>");
out.print("<div id=\"wrapper\">");
out.print("<div id=\"header-wrapper\">");
out.print("<div id=\"header\" class=\"container\" style=\"\">");		
out.print("<div id=\"logo\">");
out.print("<h1><a href=\"#\">SK.Ayer Puteh</a></h1>");
out.print("</div>");			
out.print("<div id=\"social\">");
out.print("<ul class=\"contact\">");		
out.print("<li><a href=\"#\" class=\"icon icon-twitter\"><span>Twitter</span></a></li>");		
out.print("<li><a href=\"#\" class=\"icon icon-facebook\"><span>Facebook</span></a></li>");
out.print("<li><a href=\"#\" class=\"icon icon-dribbble\"><span>Pinterest</span></a></li>");
out.print("<li><a href=\"#\" class=\"icon icon-tumblr\"><span>Google+</span></a></li>");
out.print("<li><a href=\"#\" class=\"icon icon-rss\"><span>Pinterest</span></a></li>");
out.print("</ul>");				
out.print("</div>");
out.print("</div>");
out.print("<div id=\"menu\" class=\"container\">");
out.print("<ul>");			
out.print("<li class=\"current_page_item\"><a href=\"gurumain.jsp\" accesskey=\"1\" title=\"\">Menu Utama</a></li>");
out.print("<li><a href=\"gurudaftarpelajar.jsp\" accesskey=\"1\" title=\"\">Pelajar Baharu</a></li>");
out.print("<li><a href=\"EditServlet\" accesskey=\"2\" title=\"\">Pengisian Markah</a></li>");				
out.print("<li><a href=\"gurukelas.jsp\" accesskey=\"3\" title=\"\">Pelajar Kelas</a></li>");				
out.print("<li><a href=\"aktivit.jsp\" accesskey=\"4\" title=\"\">Aktivit Sekolah</a></li>");				
out.print("<li><a href=\"keluar.jsp\" accesskey=\"5\" title=\"\">Log Keluar</a></li>");
out.print("</ul>");			
out.print("</div>");		
out.print("</div>");
out.print("<div id=\"page\" class=\"container\">"); 
out.print("<div id=\"sidebar\">");
out.print("<div class=\"column1\">");			
out.print("<div class=\"title\">");				
out.print("<h2>nama guru</h2>");					
out.print("</div>");				
out.print("<ul class=\"style2\">");
out.print("	<li><a href=\"senaraipelajar.jsp\">Senarai Pelajar</a></li>");		
out.print("<li><a href=\"senaraiguru.jsp\">Senarai Guru</a></li>");					
out.print("<li><a href=\"aktiviti.jsp\">Aktiviti</a></li>");					
out.print("<li><a href=\"pencapaian.jsp\">Pencapaian Sekolah</a></li>");					
out.print("<li><a href=\"makluman.jsp\">Makluman Sekolah</a></li>");					
out.print("</ul>");					
out.print("		</div>");				
out.print("</div>");	
out.print("	<div id=\"content\">");		
out.print("<form action='EditServlet2' method='post' class=\"sky-form\">");	
out.print("<header>Senarai Pelajar Kelas 1 D</header>");        
out.print("<fieldset>");
out.print("<section>");				
out.print("<label class=\"label\">");				
out.print("<table id=\"d01\" width=\"433\" border=\"1\">");				
out.print("<tbody>");					
out.print("<tr>");                                            
out.print("<td>Nama</td><td>Nilai Markah</td><td>Gred</td><td></td>");
out.print("</tr>");                                              
     
        List<Emp> list= EmpDao.getAllEmployees();
         for(Emp e:list){  
        out.print("<tr><td>"+e.getpelajarnama()+"</td><td><input size=\"5\" type='text' name='name' value=''/></td><td><label type='text' name='name' value='A'/></td></tr>");
        }
  out.print("</section>");  

out.print("</fieldset>");
 
out.print(""); 
out.print("<button type=\"submit\" class=\"button\">Kemaskini</button>");
out.print("<button type=\"button\" class=\"button button-secondary\" onclick=\"window.history.back();\">Kembali</button>\n" +"");
out.print(""); 
out.print(" </form>");
                     
out.print(" </div>");

out.print("</div>");
out.print("</div>");
out.print("<div >");

out.print("</div>");
out.print("</body>");
out.print("</html>");


					
					
				
			
							
				
					
									
         
               
    
	


	



          
        out.close();  
    }  
}  
