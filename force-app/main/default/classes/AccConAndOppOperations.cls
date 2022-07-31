public class AccConAndOppOperations {
    public static List<Account> fetchAllAccounts() {
    List<Account> accList = [select name, annualRevenue, Type, AccountSource from Account];   
     System.debug(accList);
return accList;
    }
   public static void fetchOpp(string stg, string ld) {
    List<Opportunity> oppList = new List<Opportunity>();
    oppList = [select name, amount from Opportunity where LeadSource = : ld and StageName = : stg];
    System.debug(oppList);
   } 

   public static void fetchAnnualRevenue() {
    List<Account> accList2 = [select name, annualRevenue, (select name, amount from Opportunities where StageName = 'Closed Won') from Account where Type ='Customer - Direct'];
    for (Account acc : accList2) {
        System.debug(acc.Name + '   ' + acc.AnnualRevenue);
    for (Opportunity opp : acc.Opportunities){
        System.debug(opp);

    }    
    }
   }
   public static Account createAccount (string name, decimal annualRevenue, string type) {
    Account acc = new Account();
    if(name == null){
        System.debug('Account cannot be created');
    }else{
        acc.Name = name;
        acc.AnnualRevenue = annualRevenue;
        acc.Type = type;
        insert acc;
        System.debug(acc);

    }
    return acc;

    
   }
}
