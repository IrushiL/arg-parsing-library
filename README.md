# CLI Argument Parsing Library for Ballerina

## Specification

### Argument
* **An argument is a single part of a command line, delimited by blanks.**
* An argument can be an option or a parameter.
* There can be variable numbers of arguments.

### Option
* **An option is a particular type of argument (or a part of an argument) that can modify the behavior of the command line.**
* An option can be a flag (no value) or it can carry a string value.
* A single option can have only one value separated by a space delimiter.
* Options are pre-defined.

### Parameter
* **A parameter is a particular type of argument that provides additional information to the command line.**
* Parameters should reside at the end of the argument list.
* Parameters should be a list of space delimited string values.
* Parameters are not pre-defined.

## Test Scenarios

### Positive Tests

* Single flag option.
* Single value option.
* Single parameter.
---
* Multiple flag options.
* Multiple value options.
* Multiple parameters.
---
* A flag option and a value option.
* A value option and a flag option.
* A flag option, a value option and a parameter.
* A value option, a flag option and a parameter.
---
* Flag options, value options and parameters.
* Value options, flag options and parameters.
* A random mix of value options and flag options, followed by parameters.

### Negative Tests
* Invalid single flag option (undefined flag option).
* Invalid single value option (undefined value option).
---
* Invalid multiple flag options (one undefined flag option).
* Invalid multiple value options (two undefined value options).
---
* Parameter, flag options, value options and parameters (parameter value given before the options).
* Value options, parameters and flag options (parameter values given before all the options).
