// public class IterationExercise {
//     public void getMultiplicationTable( integer num) {
//             system.debug('Input: num = '+ num);
//         for (Integer i = 0; i < 11; i++) {
//             integer result = i * num;
//             System.debug('Output: ' + i + ' x '+ num + ' = '+ result);
//         }
//     }


// public class IterationExercise {
//     public void getPerfectAverage(integer num1, integer num2){

//             integer average = 0; //5+6+7+8+9+10+11;
//             integer count = 0;
        
//         for (Integer i = num1; i <= num2; i++) {
//             average+=i; //5+6+7+8+9+10+11+12+13+14+15;
//             count++; //11
//         }
//         System.debug('Input: num1 = '+ num1);
//         System.debug('Input: num2 = '+ num2);
//         System.debug('Output: '+ average/count); // 110/11=10

// }
// }
public class IterationExercise {
    public void getPerfectAverage(Integer num1, Integer num2) {
        Integer total = 0;
        Integer count = 0;
        Integer outputValue = 0;
        Integer i = 0;
        String output = '';
        // num1 = 5;
        // num2 = 15
        for (i= num1; i<=num2; i++) {
            total+=i; // 5+6+7+8+9+10+11+12+13+14+15 = 110
            count++; //11
        }
        outputValue = total/count;
        System.debug('Expected outcome :');
        System.debug('Input : num1 = ' + num1);
        System.debug('Input : num2 = ' + num2);
        System.debug('Output: ' + outputValue); //110 / 11 = 10
        total = 0;
        count = 0;
        for (i= num1; i<=num2; i++) {
            total+=i; // 5+6+7+8+9+10+11+12+13+14+15 = 110
            count++; //11
            if (i<num2) {
            output += i + '+'; // 5+6+7+8+9+10+11+12+13+14+
            }
            else if (i==num2) {
                output += i + '=' + total; // 5+6+7+8+9+10+11+12+13+14+15=110
            }
        }
        System.debug('Calculation :');
        System.debug(output);
        System.debug('Total:' + count + 'numbers between' + num1 + 'to'+ num2);
        System.debug(total + '/'+ count + '='+ total/count);
//Total 11 numbers between 5 to 15
    }
}