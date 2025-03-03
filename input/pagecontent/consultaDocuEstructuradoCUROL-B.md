<p>Este servicio permite recuperar el detalle de un informe estructurado
seleccionado por un profesional de salud situado en una
<strong>Comunidad Autónoma (CA) en España</strong> que accede a un
documento clínico de un paciente extranjero. Para ello, se utiliza el
identificador contenido en el recurso DocumentReference obtenido en la
consulta de referencias previa, dentro del campo url. Este campo
proporciona la ubicación específica del recurso Bundle que contiene el
informe estructurado.</p>
<p><strong>Flujo del Servicio</strong></p>
<ol type="1">
<li><p>El profesional de salud en la CA selecciona un informe específico
del listado de referencias previamente recuperado. HCDSNS_CA envía una
solicitud a OpenNCP.</p></li>
<li><p>OpenNCP reenvía la solicitud al OpenNCP destino, el cual la
reenvía al Sistema de Salud correspondiente. Una vez genera el bundle,
se devuelve al OpenNCP inicial, el cual lo reenvía a HCDSNS_CA.</p></li>
<li><p>HCDSNS_CA recibe el bundle con los diferentes recursos FHIR que
forman parte del informe.</p></li>
</ol>
<p><strong>Ejemplo de Solicitud (CA → OpenNCP):</strong></p>
<p><em>GET /Bundle/20230301-XXXXXXX</em></p>
<ul>
<li><p><strong>Cabeceras:</strong></p>
<ul>
<li><p><em>Authorization: [token]</em></p></li>
<li><p><em>Content-Type: application/fhir+json</em></p></li>
<li><p><em>CountryCode: FR</em></p></li>
</ul></li>
</ul>