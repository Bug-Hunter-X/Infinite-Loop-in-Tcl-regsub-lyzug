proc count_occurrences {haystack needle} {
    set count 0
    while {[regexp $needle $haystack]} {
        incr count
        # Correct use of regsub
        regsub $needle $haystack {} haystack
    }
    return $count
}

puts [count_occurrences "abcabcabc" "abc"]