public class DailyLeadProcessor implements Schedulable
{

 public void execute(SchedulableContext ctx)
    {
        list<Lead> leadnull=[SELECT Id, Fax, LeadSource FROM Lead where LeadSource='' limit 200];
        for(Lead le:leadnull)
        {
            le.LeadSource='Dreamforce';
            update le;
        }
    }
    
}