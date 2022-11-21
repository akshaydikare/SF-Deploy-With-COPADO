public class AccountsRelContatcs {
    @auraEnabled
    public static Account fetchAccount(String searchAccount){
        Account Acc = [select Id, name, Industry, Website, Phone, Rating from account where Name = :searchAccount];
        
        return Acc;
    }
    
      @auraEnabled
    public static list<contact> getContact(id accid){
        list<contact> conList= new list<contact>();
        conList=[select lastname, firstName, Phone, Email from contact where accountid =:accid];
        return conList;
    }
    
    @auraEnabled
    public static list<opportunity> getopportunity(id accid){
        list<opportunity> opList = new list<opportunity>();
        opList = [select name, CloseDate, StageName, Amount from opportunity where accountid =: accid];
        return opList;
    }
}