proc error_proc {msg} {
    puts stderr "ERROR: $msg"
    exit 1
}

proc myproc {arg} {
    if {$arg == ""} {
        error_proc "Argument cannot be empty"
    }
    puts "Argument: $arg"
}

myproc ""