
select nf.idAlumno,al.nombre,materia.nombre,nf.notaFinal
from nota_f as NF
inner join alumno as Al
on nf.idAlumno=al.idAlumno
inner join asignacion_materia 
on al.idGrado=asignacion_materia.idGrado
inner join materia
on asignacion_materia.idMateria=materia.idMateria
GROUP BY  nf.idAlumno,Al.nombre,materia.nombre,nf.notaFinal