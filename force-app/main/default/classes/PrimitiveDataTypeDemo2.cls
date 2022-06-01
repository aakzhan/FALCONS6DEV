public  class PrimitiveDataTypeDemo2 {
 public void printNewDate() {
    system.debug('create new Date instance');
    //create date
    //datatype      //dateclassmethod
    date newDate = Date.newInstance(2000,12,3);
    system.debug('new date : '+newDate);

    date newDate2 = Date.newInstance(2021, 4, 8);
    system.debug('new date2 '+ newDate2);

    //todays date
    date todayDate = date.today();
    system.debug('today date is '+ todayDate);

    }

public void printNewTime() {
    //datatype     //timeclass method
    time myTime = Time.newInstance(18,20,5,30);
    system.debug('my time : ' + myTime);
    time meTime = Time.newInstance(6,4,8,0);
    system.debug('my time : ' + meTime);
    }
public void printNewDateTime() {

//todays date
date newDate = date.today();
//new time
time newTime = time.newInstance(9,8,1,4);
time tryTime = time.newInstance(23,23,23,23);
system.debug(tryTime);

//1 create new datetime from DATE and TIME
datetime dt1 = datetime.newInstance(newDate,newTime);
system.debug('dt is  ' + dt1);

//2 create datetime usimng YEAR,MONTH,DAY ==> Time will be midnight (00000)
datetime dt2 = datetime.newInstance(2025,1,9);
system.debug('dt 2 is '+ dt2);

//3 create datetime using YEAR,MONTH,DAY,HOUR,MINUTE,SECOND
datetime dt3 = datetime.newInstance(2021,10,9,10,10,10);
system.debug('dt 3 is '+ dt3);

// current datetime
datetime currentDT = datetime.now();
system.debug('current DT : '+ currentDT);

// 5. GMT time  

datetime dt5 = datetime.newInstance(2022,02,20,15,15,15);
system.debug('dt5 = '+ dt5);

//4 create newInstance from millisecinds


    Datetime dt6 = Datetime.newInstance(0);
    system.debug('dt6 = '+ dt6);

    Datetime dt6_1 = datetime.newInstance(5000L);
    System.debug('dt6_1 = '+ dt6_1);

    long longtime = 13487519837456L;
    Datetime dt7 = Datetime.newInstance(longtime);
    System.debug('dt7 = '+dt7);

    
    }


}
