package actions.abstractAction;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class AbstractAction extends ActionSupport implements SessionAware
{
	private static final long serialVersionUID = 1L;
	//forward pour rediriger vers la bonne page
	protected String forward;
	//variable de session
	protected Map<String, Object> session;
	//pattern de vérification d'un email
	protected static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	//nom du groupe enseignant 
	protected static final String GROUP_NAME_TEACHER="Enseignant";
	//valeurs de forward
	protected static final String FORWARD_SUCCESS = "SUCCESS";
	protected static final String FORWARD_ERROR = "ERROR";
	protected static final String FORWARD_INPUT = "input";
	
	
	public String execute()
	{
		forward=FORWARD_SUCCESS;
		return forward;
	}


	public void validate()
	{

	}
	
	/**
	 * Permet de valider un email selon la regex officiel
	 * @param email
	 * @return
	 */
	protected boolean emailValidator(String email) 
	{
		Pattern pattern = Pattern.compile(EMAIL_PATTERN);
		Matcher matcher = pattern.matcher(email);
		return matcher.matches();
	}
	
	
	/**
	 * Objet de session
	 */
	@Override
	public void setSession(Map<String, Object> session) 
	{
		this.session=session;
	}

	public Map<String, Object> getSession() 
	{
		return session;
	}
}
