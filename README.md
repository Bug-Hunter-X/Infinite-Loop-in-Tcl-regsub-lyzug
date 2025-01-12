# Tcl regsub Bug
This repository contains a simple Tcl procedure that demonstrates a common error when using the `regsub` command. The procedure `count_occurrences` attempts to count the number of occurrences of a needle in a haystack string. However, due to an incorrect second argument to the `regsub` command, it enters an infinite loop.

## Bug Description
The bug lies within the `count_occurrences` procedure. The `regsub` command is used to replace all occurrences of the `needle` in the `haystack` with an empty string.  However, the code incorrectly uses the original `haystack` as the second argument. This means that after each replacement, `regsub` operates on the original `haystack`, and never modifies its input, resulting in an infinite loop.