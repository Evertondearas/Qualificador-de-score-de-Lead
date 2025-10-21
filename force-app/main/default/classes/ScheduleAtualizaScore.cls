public class ScheduleAtualizaScore implements Schedulable{

    public void execute(SchedulableContext context){
        BatchAtualizaScore batchJob = new BatchAtualizaScore();
        Database.executeBatch(batchJob ,200);
    }
}