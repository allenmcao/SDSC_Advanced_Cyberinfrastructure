SELECT 
    case 
    when email is null then 'Blank' 
    else email end as email,
count(*)
FROM dqa_download_log 
GROUP BY email
ORDER BY count DESC;