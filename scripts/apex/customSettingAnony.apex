Map<string, country_code__c > mapCC = Country_code__c.getAll();
system.debug('map if country code = '+ mapCC);

for (string eachCountry : mapCC.keySet()){
    System.debug('Country = '+ eachCountry + ', code = '+ mapCC.get(eachCountry).country_code__c);
}

//21:11:25:179 USER_DEBUG [2]|DEBUG|map if country code = {Canada=Country_Code__c:{LastModifiedDate=2022-05-28 02:01:42, IsDeleted=false, CreatedById=0058c0000071dpJAAQ, CreatedDate=2022-05-28 02:01:42, Country_Code__c=CAN, Id=a028c00000WuSnTAAV, LastModifiedById=0058c0000071dpJAAQ, SetupOwnerId=00D8c000006feZnEAI, Name=Canada, SystemModstamp=2022-05-28 02:01:42}, India=Country_Code__c:{LastModifiedDate=2022-05-28 02:02:07, IsDeleted=false, CreatedById=0058c0000071dpJAAQ, CreatedDate=2022-05-28 02:02:07, Country_Code__c=IND, Id=a028