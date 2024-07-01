import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Servlet1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servlet1</title>");            
            out.println("</head>");
            out.println("<body>");
            HttpSession hs = request.getSession(true);
            if(hs.isNew()){
                out.println("<body bgcolor=pink>");
                String name = request.getParameter("uname");
                hs.setAttribute("uname",name);
                hs.setAttribute("visit","1");
                out.println("<h1> Welcome First Time </h1>"+name);
            }
            else{
                out.println("<h1> Welcome Again </h1>"+hs.getAttribute("uname"));
                int visit = Integer.parseInt((String) hs.getAttribute("visit"))+1;
                out.println("<h1> You visited " + visit + " Times</h1>");
                hs.setAttribute("visit",""+visit);        
            }
            
            out.println("<h1> Your session Id: "+hs.getId()+ "</h1>");
            out.println("<h1> You Logged in at : " + new java.util.Date(hs.getCreationTime())+"</h1>");
            out.println("<a href='Servlet2'> Click to Visit Page 2 </a>");
            out.println("<br>");
            out.println("<a href='Servlet3'> Click to Visit Page 3 </a>");
            out.println("<br>");
            out.println("<a href='Servlet4'> Click to Visit Page 4 </a>");
            out.println("<br>");
            out.println("<a href='logout'> Click to Terminate Solution </a>");
            out.println("<br>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
