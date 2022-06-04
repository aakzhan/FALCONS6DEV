public class AnimalsCallouts {
    public static void fetchAnimals() {
        //1 prepare request
        HttpRequest request = new HttpRequest();
        request.setEndPoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2 prepare Http
        Http http = new Http();

        //3 send request, which returns response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4 process the response
        if(response.getStatusCode() == 200){
            string animalsJSON = response.getBody();
            System.debug(animalsJSON);
        } else {
            //NOT SUCCESS
            System.debug('sthm went wrong');
        }

    }
}
