package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//모든 명령어 핸들러가 상속받을 CommandHandler 인터페이스
public interface CommandHandler {
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception;

}
