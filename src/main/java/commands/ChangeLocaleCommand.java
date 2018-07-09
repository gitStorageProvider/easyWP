package commands;

import resources.ConfigurationManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

public class ChangeLocaleCommand implements ICommand{

    public static final String PARAM_LANGUAGE = "language";

    public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        String page;
        page = ConfigurationManager.getProperty("path.page.login");

        String currentLocale = req.getParameter(PARAM_LANGUAGE);

        Locale.setDefault(new Locale(currentLocale));

        return page;
    }
}
