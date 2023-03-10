for $x in doc("saludintegral.xml")/saludintegral/servicio
return concat(data($x/empleado), " - ", data($x/@*), " - ")
