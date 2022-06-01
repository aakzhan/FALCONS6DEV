public class Cat {
    public string name = '';
    public string color = '';
    public Cat() {
        system.debug('constructor called');
    }

    public Cat( String n, string c){
        this.name = n;
        this.color = c;
        sleeping();
    }

    public void sleeping(){
        System.debug(name + ' is sleeping');
    }
        
}
