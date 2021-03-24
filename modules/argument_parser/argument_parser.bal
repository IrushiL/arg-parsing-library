import ballerina/io;
# The records that stores details on a specific option defined by the command line.
#
# + optionName - Name of the option argument.
# + aliases - Other alias names of the option argument.
# + value - Stores if the option has a value or not.
# + helpText - Help text of the option argument, if any.
public type OptionDetails record {|
    readonly string optionName;
    string[] aliases?;
    boolean value = false;
    string helpText?;
|};

# Table to store all the option details pertaining to the command line.  
public type OptionTable table<OptionDetails> key(optionName);

# Class that can be used for parsing command line arguments.  
public class ArgumentParser {
    string[] argList = [];
    OptionTable optionTable = table [];

    public function addOption(OptionDetails option) {
        self.optionTable.add(option);
    }

    public function parse(string... args) {
        self.argList = args;
    }

    public function getOptions() returns OptionTable {
        return self.optionTable;
    }

    public function printOptions() {
        self.optionTable.forEach(function (OptionDetails option) {
            io:println(option);
        });
    }
}
