integer sum1 = Calculator.add(15,15);
system.debug(sum1);

integer sum2 = Calculator.add(10,15,25);
System.debug(sum2);




Calculator calc = new Calculator();
//calc.welcomeMessage();
calc.printNewMessage('This is new age calc.');// we are passing string
integer sum1 = calc.add(10,15);
system.debug('sum 1 = ' + sum1);
integer sum2 = calc.add(100,155);
system.debug('sum 2 = '+ sum2);
integer finalSum = calc.add(sum1,sum2);
system.debug('final sum = '+ finalSum);

integer sum22 = calc.add(15,15,15);
system.debug ('sum 22 = '+sum22);



Calculator c1 = new Calculator();
string message = 'This is a new message';// we are still passing string
c1.printNewMessage(message);