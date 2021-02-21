public inherited sharing class AccountTriggerHandler {
    public AccountTriggerHandler() {

    }
    Public void BeforeInsert(List<Account> acclist){
        for(Account acc :acclist ){
            system.debug('Inside AccountTriggerHandler BeforeInsert acc'+acc);
            if(acc.NumberOfEmployees==NULL ){
                acc.NumberOfEmployees =1;
            }
            system.debug('Inside AccountTriggerHandler BeforeInsert after acc'+acc);
        }
    }
    public void AfterInsert(list<Account> acclist){
        list<contact> contactlist = new list<contact>();
        for(account acc : acclist){
            system.debug('Inside AccountTriggerHandler AfterInsert acc'+acc);
            for(integer i=0;i<acc.NumberOfEmployees;i++){
                contact con = new contact();
                con.AccountId = acc.id;
                con.lastName = acc.name+'i';
                contactlist.add(con);
            }

        }
        system.debug('Inside AccountTriggerHandler AfterInsert contactlist'+contactlist);
        if(contactlist.size()>0){
            insert contactlist;
        }
    }
}
