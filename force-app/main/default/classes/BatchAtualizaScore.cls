global class BatchAtualizaScore implements Database.Batchable<sObject>{
    
    global Database.QueryLocator start(Database.batchableContext bc){
        return Database.getQueryLocator('SELECT Id, Score__c, AnnualRevenue, NumberOfEmployees,Industry from account WHERE Score__c = null or Score__c = 0');
    }
    
    global void execute(Database.BatchableContext context, List<sObject> Scope){
        List<Account> contas = (List<Account>) scope;
        
        for(Account conta: contas){
           calculaScore.calculaScore(conta);
        }
    }
    
    global void finish(Database.batchableContext bc){
        System.debug('Atualizações dos scopos concluída.');
    }

}