SELECT student_id, COUNT(student_id) AS graded_assignments_count
FROM 
    assignments
WHERE 
    state='GRADED'
GROUP BY 
    student_id;