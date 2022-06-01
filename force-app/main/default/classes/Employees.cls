public class Employees {
    public static void namesList() {
        List<String>names = new List<String>();

        names.add('Tony');
        names.add('Lulu');
        names.add('Katy');
        names.add('Lora');

        names.sort();
        
        System.debug('All the names: '+ names);
    }
}
