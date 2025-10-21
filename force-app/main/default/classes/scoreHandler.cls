public class scoreHandler {
    public static void handler(boolean isAfter, boolean isBefore, boolean isInsert, boolean isUpdate, boolean isDelete, boolean isUndelete,
                               List<sobject> newRecords, List<sObject> oldRecord, Map<Id, sObject> newMap, Map<id, sobject> oldMap){
                                   
                                   if(isBefore){
                                       if(isInsert || isUpdate){
                                           if(newRecords.size() < 200){
                                               
                                               Integer score = 0;
                                               List<Account> contas = (List<sObject>) newRecords;
                                               
                                               for(Account conta: contas){
                                                   score = defineScore.calculaScore(conta);
                                                   conta.Score__c = score;    
                                               }
                                           }
                                       }
                                   }
                               }
}