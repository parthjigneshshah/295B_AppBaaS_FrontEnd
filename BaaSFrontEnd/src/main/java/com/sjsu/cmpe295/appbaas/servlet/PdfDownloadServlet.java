package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PdfDownloadServlet
 */
public class PdfDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PdfDownloadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */private static final int BYTES_DOWNLOAD = 1024;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in DO Get");
		// reads input file from an absolute path
				response.setContentType("text/plain");
				response.setHeader("Content-Disposition",
			                     "attachment;filename=AppBaasClient.jar");
				ServletContext ctx = getServletContext();
				InputStream is = ctx.getResourceAsStream("/AppBaasClient.jar");
			 
				int read=0;
				byte[] bytes = new byte[BYTES_DOWNLOAD];
				OutputStream os = response.getOutputStream();
			 
				while((read = is.read(bytes))!= -1){
					os.write(bytes, 0, read);
				}
				os.flush();
				os.close();	
			}

		
	}


