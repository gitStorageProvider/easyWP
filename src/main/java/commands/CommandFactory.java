package commands;

import resources.MessageManager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandFactory {

    public ICommand defineCommand(HttpServletRequest req, HttpServletResponse resp) {
        ICommand resultCommand = new DefaultCommand();

        String commandString = req.getParameter("command");

        if (commandString == null || commandString.isEmpty()) {
            return resultCommand;
        }

        try {
            for (SupportedCommands temp : SupportedCommands.values()) {
                if (temp.getCommandName().toUpperCase().equals(commandString.toUpperCase())) {
                    resultCommand = temp.getCommand();
                    break;
                }
            }
        } catch (IllegalArgumentException e) {
            req.setAttribute("wrongCommand", commandString +
                    MessageManager.getProperty("message.wrongCommand"));
        }
        return resultCommand;
    }
}
