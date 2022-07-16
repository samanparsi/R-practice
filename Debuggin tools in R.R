#traceback: prints out the function call stack after an error occurs; does
#nothing if there's no error.good for communicating with others about errors.
#use it right after error
mean(k)
traceback()
lm(k-o)
traceback()


#debug: flags a function for "debug" mode which allows you to step through 
#execution of a function one line at a time.it gives a debug console which only
#the values of function are available.use n and enter to reach the line with 
#the error and problem.
debug(lm)
lm(k-o)ex


#browser: suspends the execution of a function whenever it is called and puts 
#the function in debug mode.

#trace: allows you to insert debugging code into a function a specific places.

#recover:allows you to modify the error behavior so that you can browse the 
#function call stack.give you a menu to check work with.it's good for long 
#stacks and complicated situations.
options(error=recover)
read.csv("asdasd")