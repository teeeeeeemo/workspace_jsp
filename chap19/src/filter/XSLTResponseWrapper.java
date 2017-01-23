package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class XSLTResponseWrapper extends HttpServletResponseWrapper {
	private ResponseBufferWriter buffer = null;
	
	public XSLTResponseWrapper(HttpServletResponse response) {
		super(response);
		buffer = new ResponseBufferWriter();
	}
	
	@Override
	public PrintWriter getWriter() throws IOException {
		return buffer;
	}
	
	public void setContentType(String contentType) {
		//do nothing
	}
	
	public String getBufferedString() {
		return buffer.toString();
	}

}
