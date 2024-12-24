proc error_proc {msg} {
    puts stderr "ERROR: $msg"
    exit 1
}

proc myproc {arg} {
    if {$arg == ""} {
        error_proc "Argument cannot be empty"
    } elseif {[catch {string is integer $arg} error_msg] {  ;#Check if the argument is an integer
        error_proc "Invalid argument: $error_msg"
    } else {
        puts "Argument: $arg"
    }
}

myproc ""
myproc 123
myproc abc