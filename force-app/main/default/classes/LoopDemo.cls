public class LoopDemo {
    public void print_int_while() {
        integer count = 1;
        while( count <=25) {
            system.debug(count);
            count++;
        }
    }


    public void print_N_numbers(integer n){
        //for initialize condition increment
        for (integer i=0; i < n; i++){
            //print i
            system.debug(i);
        }
    }

    // public void print_N_numbers(integer n){
    //     //for initialize condition increment
    //     for (integer i=0; i < n; i++){
    //         //print i
            
            
    //         s += string.valueOf(i) + ' , ';
    //         system.debug('inside for loop, s = ' + s);
    //     }
    //      system.debug('print 1 to N: ' + s);
    // }


    public void print_sum_n_numbers(integer n){
        integer sum=0;
        for(integer i=1; i<=n; i++){
            sum +=i;
            //system.debug( sum );
        }
        system.debug( sum );
        //return sum;
    }

    public void print_N_odd_numbers(integer startInt, integer endInt){

        //inside loop
        for (integer i = startInt; i <=endInt; i++){
            integer modI = math.mod(i, 2);
            if (modI == 1) system.debug(i);
        }
    }
   
}
