public class PositionsController
{

    public PageReference next() {
        return null;
    }


    public PageReference previous() {
        return null;
    }

    private List<Position__c> positions;
    public List<Position__c> getPositions()
    {
        positions = [Select Name, Open_Date__c, End_Date__c, Min_Pay__c, Max_Pay__c from Position__c];
        return positions;
    }
}