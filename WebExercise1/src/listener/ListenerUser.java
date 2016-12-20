package listener;

import java.util.Set;
import java.util.TreeSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionIdListener;

/**
 * Application Lifecycle Listener implementation class ListenerUser
 *
 */
/*@WebListener*/
public class ListenerUser implements HttpSessionAttributeListener, HttpSessionIdListener, ServletContextListener {
	private ServletContext app = null;
    /**
     * Default constructor. 
     */
    public ListenerUser() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionIdListener#sessionIdChanged(HttpSessionEvent, String)
     */
    public void sessionIdChanged(HttpSessionEvent arg0, String arg1)  { 
         // TODO Auto-generated method stub
    	Set all =(Set) this.app.getAttribute("online");
    	all.remove(arg0.getSession().getAttribute("username"));
    	this.app.setAttribute("online", all);
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent arg0)  { 
         // TODO Auto-generated method stub
    	Set all =(Set) this.app.getAttribute("online");
    	all.add(arg0.getValue());
    	this.app.setAttribute("online", all);
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent arg0)  { 
         // TODO Auto-generated method stub
    	Set all =(Set) this.app.getAttribute("online");
    	all.remove(arg0.getValue());
    	this.app.setAttribute("online", all);
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	this.app = arg0.getServletContext();
    	this.app.setAttribute("online", new TreeSet());
    			
    }
	
}
