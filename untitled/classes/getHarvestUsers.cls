public class getHarvestUsers {
    
    @future(callout=true)
    public static void harvestUserCallOut(){
    
        String userEndPoint = 'https://api.harvestapp.com/v2/users';  
    
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(userEndpoint);
        request.setMethod('GET');
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('Accept', 'application/json');
        request.setHeader('User-Agent', 'MyApp (ivan@exah.co.za)');
        request.setHeader('Authorization', 'Bearer 1848717.pt.QDXsfn5UNvNEkjFmgAiSJ6yxfUN2iF39Q47eAeEM9MByz47jwqvrH725wcDQzqcYiM-_Uh4g6BQ_fzv58EIUvw');
        request.setHeader('Harvest-Account-Id','1055284');
    
        httpResponse hR = http.send(request);
        system.debug(hR);
        string yes = hr.getBody();
        system.debug(yes);
        map<string, object> results = (map<string,object>)json.deserializeUntyped(yes);
        integer pages = integer.valueOf(results.get('page'));
        system.debug('the pages they are '+pages);
        integer pleb = 5;
        
        if(pleb==5){
            system.debug(pleb);
            
            for(integer i = 2; i<=pleb; i++){
                    
                string newEndPoint = userEndPoint+'?'+'page'+'='+i;
                system.debug(newEndpoint);
                
        } 
       }          
      }
     }