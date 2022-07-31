public  class curlSOCodeAndExchangeRateMap {
    public static void currExch() {
        map<string,Decimal> curlSOCodeAndExchangeRateMap = new map<string, Decimal>();
        curlSOCodeAndExchangeRateMap.put('AUD', 0.73);
        curlSOCodeAndExchangeRateMap.put('CAD', 0.78);
        curlSOCodeAndExchangeRateMap.put('EUR', 1.13);
        curlSOCodeAndExchangeRateMap.put('NZD', 0.68);
        curlSOCodeAndExchangeRateMap.put('INR', 0.013);
       Decimal res1 = curlSOCodeAndExchangeRateMap.get('CAD');
        system.debug(curlSOCodeAndExchangeRateMap.get('CAD'));
        system.debug(res1);
      Boolean res2 =  curlSOCodeAndExchangeRateMap.containsKey('SAD');
        System.debug(res2);
        set<string> GreaterOne = new set<string>();
        set<string> LessOne = new set<string>();
        for (string ISOCode : curlSOCodeAndExchangeRateMap.keySet()) {
         if(curlSOCodeAndExchangeRateMap.get(ISOCode) >=1){
          GreaterOne.add(ISOCode);  
         }  else {
            LessOne.add(ISOCode);
         }
        }
        System.debug('Greater than 1 or equal =   '+ GreaterOne);
        System.debug('Less than 1 =   ' + LessOne );
 }
 List<Opportunity> oppList = [select StageName,amount from Opportunity where StageName ='Closed Won' AND Amount >= 35000 ];
 List<Contact> contList = [select account.Name, LastName from Contact ORDER BY lastname DESC];
 List<Account> accList = [select name, (select StageName from Opportunities WHERE StageName != 'Closed Lost') from Account];
 List<Opportunity> oppTenList = [select amount from opportunity ORDER BY amount limit 10];
 List<Opportunity> oppTwentyList = [select amount from Opportunity ORDER BY amount limit 20 where StageName !='Closed Won' and StageName != 'Closed Lost']

}
