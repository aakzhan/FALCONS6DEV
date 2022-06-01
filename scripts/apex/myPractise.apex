//set value to static variable
//class.variable
MyPractise.SampleStaticString = 'This is a static variable';
system.debug(MyPractise.SampleStaticString);

//
MyPractise obj = new MyPractise();
obj.SampleString = 'This is non static variable';
system.debug(obj.SampleString);

system.debug(MyPractise.SampleStaticString);