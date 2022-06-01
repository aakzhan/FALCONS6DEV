public class ListOfOdds {
    
    public ListOfOdds(){
        System.debug('Welcome');
    }

    public void getNumber (integer num){
        List<integer> oddList = new List<integer>();
        for (integer i=1; i<=num; i+=2);
        oddList.add(i);
        System.debug('odd : '+ oddList);
    }

    // for (Integer i=0; i<=num; i++) {
    //     //oddList.add(i);
    //     if (Math.mod(i, 2)!=0) {
    //     oddList.add(i);
    //     }
    // }


}