package br.com.psystems.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.psystems.model.User;

/**
 * Servlet Filter implementation class MainFilter
 */
@WebFilter(filterName="mainfilter", urlPatterns={"/app/*"})
public class MainFilter implements Filter {

    /**
     * Default constructor. 
     */
    public MainFilter() {}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// place your code here
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		
		if (null != ((User) httpRequest.getSession().getAttribute("user"))) {
			
			// pass the request along the filter chain
			chain.doFilter(request, response);
		} else {
			httpResponse.sendRedirect("../index.jsp");
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {}

}