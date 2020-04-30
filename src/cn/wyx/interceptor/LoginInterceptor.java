package cn.wyx.interceptor;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.wyx.controller.BaseAction;
import cn.wyx.model.Admin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor
{
	private static final long serialVersionUID = 1L;

	@Override
	protected String doIntercept(ActionInvocation ai) throws Exception
	{
		String result = null;
		// 获得Action的容器
		ActionContext context = ai.getInvocationContext();
		// 获得session
		Map<String, Object> session = context.getSession();
		
		// 获得session中的用户
		Admin user = (Admin) session.get("admin");
		
		if(JudgeIsMoblie() == true)
		{
			return result = BaseAction.ERROR;
		}
		
		if (user != null)
		{
			// 让拦截器继续向下走
			result = ai.invoke();
		} 
		else
		{
			result = BaseAction.NONE;
		}
		return result;
	}
	
	public boolean JudgeIsMoblie() 
	{
		boolean isMoblie = false;
		HttpServletRequest request = ServletActionContext.getRequest();
		String[] mobileAgents = 
		{ 	
			"iphone", "android","ipad", "phone", "mobile", "wap", "netfront", "java", "opera mobi",
			"opera mini", "ucweb", "windows ce", "symbian", "series", "webos", "sony", "blackberry", "dopod",
			"nokia", "samsung", "palmsource", "xda", "pieplus", "meizu", "midp", "cldc", "motorola", "foma",
			"docomo", "up.browser", "up.link", "blazer", "helio", "hosin", "huawei", "novarra", "coolpad", "webos",
			"techfaith", "palmsource", "alcatel", "amoi", "ktouch", "nexian", "ericsson", "philips", "sagem",
			"wellcom", "bunjalloo", "maui", "smartphone", "iemobile", "spice", "bird", "zte-", "longcos",
			"pantech", "gionee", "portalmmm", "jig browser", "hiptop", "benq", "haier", "^lct", "320x320",
			"240x320", "176x220", "w3c ", "acs-", "alav", "alca", "amoi", "audi", "avan", "benq", "bird", "blac",
			"blaz", "brew", "cell", "cldc", "cmd-", "dang", "doco", "eric", "hipt", "inno", "ipaq", "java", "jigs",
			"kddi", "keji", "leno", "lg-c", "lg-d", "lg-g", "lge-", "maui", "maxo", "midp", "mits", "mmef", "mobi",
			"mot-", "moto", "mwbp", "nec-", "newt", "noki", "oper", "palm", "pana", "pant", "phil", "play", "port",
			"prox", "qwap", "sage", "sams", "sany", "sch-", "sec-", "send", "seri", "sgh-", "shar", "sie-", "siem",
			"smal", "smar", "sony", "sph-", "symb", "t-mo", "teli", "tim-", "tosh", "tsm-", "upg1", "upsi", "vk-v",
			"voda", "wap-", "wapa", "wapi", "wapp", "wapr", "webc", "winw", "winw", "xda", "xda-",
			"Googlebot-Mobile" 
		};
				
		if (request.getHeader("User-Agent") != null) 
		{
			String agent=request.getHeader("User-Agent");
			for (String mobileAgent : mobileAgents) 
			{
				if (agent.toLowerCase().indexOf(mobileAgent) >= 0&&agent.toLowerCase().indexOf("windows nt")<=0 &&agent.toLowerCase().indexOf("macintosh")<=0) 
				{
					isMoblie = true;
					break;
				}
			}
		}
		return isMoblie;
	}
}
