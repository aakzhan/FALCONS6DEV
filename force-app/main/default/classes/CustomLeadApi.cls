@RestResource(urlMapping = '/CustomLead/*')
global class CustomLeadApi {
    //return contact and account name
    @httpGet
    global static Lead getLeadId() {
        System.debug('custom clead api call success');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI: '+ request.requestURI);
        //Fetch lead ID from URI
        integer idStartIndex = uri.lastIndexof('/')+1;
        System.debug('idStartIndex: ' +idStartIndex);
        string LeadId = uri.substring(idStartIndex);
        System.debug('leadId: '+ LeadId);
        //Fetch lead details from lead ID
        lead ld = [Select Name,ID, company 
                    from Lead
                    where id = : leadId];
        return ld;
    }

    @HttpPost
    global static Id createLead(
        string Name, string LName, string Comp, string Stat
    ){
        Lead ld = new Lead();
        ld.FirstName = Name;
        ld.LastName = LName;
        ld.Company = Comp;
        ld.Status = Stat;
        
        insert ld;
        return ld.id;
    }

    @httpDelete
    global static String deleteLead() {
        system.debug('custom lead api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch lead ID from URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string leadId = uri.substring(idStartIndex);
        system.debug('leadId: ' + leadId);
        //Fetch lead details from contact ID
        // lead ld = new Lead();
        // ld.Id = leadId;
        Lead ld = [select id from Lead where id=: leadId];
        delete ld;
        return 'Lead deleted with id: ' +leadId;
    }

    @httpPatch
    global static String updateLead(
        string fName,String Comp, string Stat
    ) {
        system.debug('custom lead api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch lead ID from URI
        
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string leadId = uri.substring(idStartIndex);
        system.debug('contactId: ' + leadId);
        
        lead ld = new lead();
        ld.id = leadId;
        ld.FirstName = fName;
        ld.Company = Comp;
        ld.Status = Stat;
        update ld;
        return 'Lead update with id: ' + leadId;
    }

    @HttpPut
    global static list<id> upsertLead(list<lead> led){
        upsert led;
        list<Id> ids = new list<id>();
        for (lead l: led){
            ids.add(l.id);
        }
        return Ids;
    }

}