select
    o.owner,
    o.object_name,
    o.subobject_name,
    o.object_type,
    l.*    
from 
    v$locked_object l,
    all_objects o
where
    l.object_id = o.object_id

