#!/bin/bash
trap "echo 'Receive SIGUSR1'" SIGUSR1 # kill -USR1
# user-defined signal 1
trap "echo 'Receive SIGINT'" SIGINT # ctrl+c
# terminates a process
trap "echo 'Receive SIGTERM'" SIGTERM # kill -TERM
# terminate immediately, cannot be ignored  
trap "echo 'Receive SIGSTP'" SIGSTP # ctrl+z
# suspend a process
trap "echo 'Receive SIGKILL'" SIGKILL # kill -KILL
# terminate immediately, cannot be ignored
trap "echo 'Receive SIGSTOP'" SIGSTOP # kill -STOP
# stop process
trap "echo 'Receive SIGFPE'" SIGFPE # kill -FPE
# floating point exception, such as divide by zero
trap "echo 'Receive SIGCHLD'" SIGCHLD # kill -CHLD
# child process terminated, stopped, or continued
trap "echo 'Receive SIGCONT'" SIGCONT # kill -CONT
# continue a stopped process
trap "echo 'Receive SIGTSTP'" SIGTSTP # kill -TSTP
# stop typed at terminal
trap "echo 'Receive SIGQUIT'" SIGQUIT # ctrl+\
# terminate and generate a core dump

while true; 
do
    echo $$
   sleep 1
done