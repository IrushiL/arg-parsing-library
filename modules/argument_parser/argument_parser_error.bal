public const ARGUMENT_PARSER_ERROR = "ArgumentParserError";

type ArgumentParserErrorData record {
    string message;
};

# The error that is returned when the arguments parsed at runtime encounters an issue.  
public type ArgumentParserError distinct error<ArgumentParserErrorData>;