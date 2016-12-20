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
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class Us
 *
 */
@WebListener
public class Us implements HttpSessionAttributeListener, HttpSessionListener, ServletContextListener {
	private ServletContext app = null;
    /**
     * Default constructor. 
     */
    public Us() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    

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
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
        // TODO Auto-generated method stub
    	 Set all = (Set) this.app.getAttribute("online");
   	 if (all.size()>0) {
   		 all.remove(arg0.getSession().getAttribute("userid"));
		}
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
