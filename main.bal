import ballerina/io;
import arg_parsing_library.argument_parser as argparser;

public function main(string... args) returns error? {
    argparser:ArgumentParser argParser = new ();
    argParser.addOption({optionName: "-h", aliases: ["--help", "help"], helpText: "View the command help text."});
    argParser.addOption({optionName: "-o", aliases: ["--offline"], helpText: "Execute the command in offline mode."});
    argParser.addOption({optionName: "-p", aliases: ["--path"], value: true, helpText: "Provides an output path for the command."});
    io:println(argParser.printOptions());
}
