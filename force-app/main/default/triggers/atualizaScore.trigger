trigger atualizaScore on Account (before insert ,after insert, after update, before update) {
	scoreHandler.handler(Trigger.isAfter, Trigger.isBefore, Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete,
                Trigger.isUndelete, Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);}