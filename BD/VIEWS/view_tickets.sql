CREATE OR REPLACE VIEW view_tickets as SELECT t.idticket, t.fecha_creacion, t.nombre, t.descripcion, t.idsubdireccion, t.idusuario, s.subdireccion, s.iddireccion, d.idsecretaria, sec.secretaria, u.nombre as capturo, t.idestado, e.color, t.idusuario_asignado FROM tickets as t JOIN subdirecciones as s ON s.idsubdireccion = t.idsubdireccion JOIN direcciones as d ON d.iddireccion = s.iddireccion JOIN secretarias as sec ON sec.idsecretaria = d.idsecretaria JOIN usuarios as u ON u.idusuario = t.idusuario JOIN estados as e ON e.idestado = t.idestado ORDER BY t.idticket DESC