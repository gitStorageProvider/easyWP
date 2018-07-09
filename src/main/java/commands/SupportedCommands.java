package commands;

public enum SupportedCommands {
    LOGIN("login"){{
        this.command = new LoginCommand();
    }},
    CHANGE_LOCALE("changeLocale"){{
        this.command = new ChangeLocaleCommand();
    }};

    private SupportedCommands(String commandName){
        this.commandName = commandName;
    }

    private String commandName;
    ICommand command;

    public String getCommandName(){
        return commandName;
    }

    public ICommand getCommand() {
        return command;
    }
}

