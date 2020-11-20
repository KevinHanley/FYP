package servlet;

import dal.ImageHash;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HashServlet")
public class HashServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{


        String myname = request.getParameter("myname");

        ImageHash ih = new ImageHash();
        String output = ih.doHash();

        request.getSession(true).setAttribute("INPUT", myname);
        request.getSession(true).setAttribute("OUTPUT", output);



//        Image image = new ImageIcon(this.getClass().getResource("/images/test.jpg")).getImage();
//
//        String isFound = "0";
//
//        if(image == null){
//            isFound = "1";
//        }else{
//            isFound = "2";
//        }
//        request.getSession(true).setAttribute("ISFOUND", isFound);


        RequestDispatcher rd = request.getRequestDispatcher("/secondPage.jsp");
        rd.forward(request, response);
    }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
