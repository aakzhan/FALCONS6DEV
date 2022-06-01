public class MyTestClass {
   public void myTestMethod () {

  string batchName  = 'Falcons6';
  integer totalStudents = 10;
  boolean isAvailable = true;

  system.debug('batchName is ' + batchName);
  system.debug('total number of students = ' + totalStudents);
  system.debug('is class available? ' + isAvailable);
  system.debug('batchName is ' + batchName+' . ' + 'total number of students = ' + totalStudents + ' . '+ 'is class available? ' + isAvailable+ ' . ');

  decimal decValue = 22.2;
  system.debug('length of the string is '+ decValue);

  long longValue = 923849283L;
  system.debug(longValue);
  
  object obj1 = 'my string object';
  object obj2 = 20;
  system.debug(obj1);
  system.debug(obj2);
    }
}
