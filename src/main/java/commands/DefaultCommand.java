package commands;

import resources.ConfigurationManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DefaultCommand implements ICommand {
    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        String page = ConfigurationManager.getProperty("path.page.login");
        return page;
    }
}
