//create a class
public  class PrimitiveDataTypeDemo {
    //create a method
    public void printBasicDataType(){
    
        //method body

    //datatype/variablename/value    
    string batchName = 'Falcons 6';
    integer totalCandidates = 120;
    boolean isAdminCompleted = true;
    //print all of them using --> system.debug
        system.debug ('batch name is' + batchName);
        system.debug ('total # of candidates : ' + totalCandidates);
        system.debug ('admin completed?' + isAdminCompleted);

        //decimal value 
        Decimal decValue = 27.01;
        system.debug ('Decimal: '+ decValue ); //Decimal

        //long value has 'L' in it
        Long longValue = 2147483648L;
        system.debug ('Long: '+ longValue);

        //creating variables with object data type
        Object obj = 'This is a string';
        Object obj2 = 10;

        system.debug (Obj);
        system.debug (Obj2);

        //ID represents salesforce ID.
        ID id1 = '0018c00002EwghzAAB';
        system.debug (id1);
}      




}