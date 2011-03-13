--clean it out first
delete from partyroletype;


--Organization roles
insert into partyroletype( description) 
									values ( 'Organization Role');


--Organization unit roles
insert into partyroletype( description,        parent) 
									values ('Organization Unit', (select id 
																										from partyroletype 
																										where description='Organization Role'));
insert into partyroletype( description, 					parent) 
									values ( 'Parent Organization',(select id 
																										from partyroletype 
																										where description='Organization Unit'));

insert into partyroletype( description, 							parent) 
										values( 'Internal Organization', (select id 
																												from partyroletype 
																												where description='Organization Role'));
