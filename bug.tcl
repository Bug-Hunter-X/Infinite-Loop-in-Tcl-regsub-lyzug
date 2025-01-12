proc count_occurrences {haystack needle} {
    set count 0
    while {[regexp $needle $haystack]} {
        incr count
        # this is where the bug is.  The second argument is incorrect
        regsub $needle $haystack {} haystack
    }
    return $count
}

puts [count_occurrences "abcabcabc" "abc"]