select a.display_name as Contact_display_name, a.organization_name as Employer_oganization_name,
count(b.contact_id) as Number_of_cases
from civicrm_contact a
Join civicrm_group_contact b
where a.id=b.contact_id
and b.status = 'ongoing'
group by a.display_name