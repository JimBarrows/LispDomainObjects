--clean it out first
delete from roles;

--Parent roles
insert into roles( description) 
									values ( 'Customer');
									
insert into roles( description) 
									values ( 'Organization Role');									
									
insert into roles( description) 
									values ( 'Person Role');
									
insert into roles( description) 
									values ( 'Prospect');
									
insert into roles( description) 
									values ( 'Shareholder');																																			
									
									
									
-- Children of Customer									
insert into roles( description,	parent) 
	values( 'Bill To', (select id 
											from roles 
											where description='Customer'));
insert into roles( description,	parent) 
	values( 'End User', (select id 
											from roles 
											where description='Customer'));											
insert into roles( description,	parent) 
	values( 'Ship To', (select id 
											from roles 
											where description='Customer'));											
																												
																												
																												
																												
																																												
--Children of Organization Role, which is a child of Organization Role
insert into roles( description,	parent) 
	values( 'Association', (select id 
													from roles 
													where description='Organization Role'));
																												
insert into roles( description,	parent) 
	values( 'Competitor', (select id 
													from roles 
													where description='Organization Role'));
																												
insert into roles( description,	parent) 
	values( 'Distribution Channel', (select id 
																		from roles 
																		where description='Organization Role'));
																												
insert into roles( description, parent) 
	values( 'Household', (select id 
												from roles 
												where description='Organization Role'));																												
																												
insert into roles( description, parent) 
	values ('Organization Unit', (select id 
																from roles 
																where description='Organization Role'));
																										
insert into roles( description, parent) 
	values ('Partner', (select id 
											from roles 
											where description='Organization Role'));
																										
insert into roles( description, parent) 
	values ('Regulatory Agency', (select id 
																from roles 
																where description='Organization Role'));																										
																
																
																
																
--Children of Distribution Channel, which is itself a Child of Organization role																
insert into roles( description, parent) 
	values( 'Agent', (select id 
										from roles 
										where description='Distribution Channel'));
insert into roles( description, parent) 
	values( 'Distributor', (select id 
													from roles 
													where description='Distribution Channel'));
insert into roles( description, parent) 
	values( 'Internal Organization', (select id 
																		from roles 
																		where description='Organization Unit'));
insert into roles( description, parent) 
	values ( 'Parent Organization',(select id 
																	from roles 
																	where description='Organization Unit'));


