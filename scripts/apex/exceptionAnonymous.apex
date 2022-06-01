try{
    account a = new Account();
    insert a;
} catch (DMLException dex){
    System.debug('DML went wrong');
}

catch(Exception ex){
    System.debug('something went wrong buddy');
}

System.debug('APEX is simple');



