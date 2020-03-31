trigger MobileScreenshotEventTrigger on MobileScreenshotEvent (after insert) {
    List<MobileScreenshotObject__c> objects = new List<MobileScreenshotObject__c>();

    for (MobileScreenshotEvent event : Trigger.New) {

            MobileScreenshotObject__c obj = new MobileScreenshotObject__c();
            obj.ScreenDescription__c = event.ScreenDescription;
            obj.DeviceIdentifier__c = event.DeviceIdentifier;
            obj.AppPackageIdentifier__c = event.AppPackageIdentifier;
            obj.AppVersion__c = event.AppVersion;
            obj.OsName__c = event.OsName;
            obj.OsVersion__c = event.OsVersion;
            obj.DeviceModel__c = event.DeviceModel;
            obj.UserId__c = event.UserId;
            obj.UserName__c = event.UserName;
            obj.EventIdentifier__c = event.EventIdentifier;
            objects.add(obj);
    }
 
    if(objects.size() > 0) {
        insert objects;
    }

}