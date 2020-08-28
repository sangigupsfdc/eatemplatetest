//Create Dashbaord from EA template
String templateApiName = 'NewRepositoryApp';

//get the folder id in a variable
Folder f = [select id from folder WHERE name= :templateApiName];
system.debug(f.id);


WaveAutoInstallRequest newRequest = new WaveAutoInstallRequest();
newRequest.put('Name', 'Test StartDataflow request');
newRequest.put('RequestStatus', 'Enqueued');
newRequest.put('FolderId', f.id);
newRequest.put('RequestType', 'StartDataflow');
insert newRequest;