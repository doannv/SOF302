package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoggerInter extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse respone, Object handler) throws Exception {
		System.out.println("Loger.preHandle");
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse respone, Object handler,
			ModelAndView modelandview) throws Exception {
		System.out.println("Loger.postHandle");
	}
	
	public void afterConpletion(HttpServletRequest request, HttpServletResponse respone, Object handler, Exception e)
			throws Exception {
		System.out.println("Loger.afterHandle");
	}
}
