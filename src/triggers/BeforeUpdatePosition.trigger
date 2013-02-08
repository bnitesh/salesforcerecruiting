trigger BeforeUpdatePosition on Position__c (before update) {
	Position__c position = Trigger.new[0];
	if(position.Max_Pay__c > 1000000)
		Trigger.newMap.get(position.Id).addError('Cannot afford the position');
}