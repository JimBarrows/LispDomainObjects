select from_roles.description, relationships.description, to_roles.description, to_parties.name 
from parties as from_parties, parties as to_parties, 
	roles as from_roles, roles as to_roles, 
	party_role as from_party_role, party_role as to_party_role, 
	relationships, party_relationship 
where from_parties.name = 'Parent' 
	and from_parties.id = from_party_role.party_id 
	and from_party_role.id = party_relationship.from_party_role_id
	and party_relationship.to_party_role_id = to_party_role.id
	and to_party_role.party_id = to_parties.id
	and from_party_role.role_id = from_roles.id
	and to_party_role.role_id = to_roles.id
	and party_relationship.relationship_id = relationships.id
	

