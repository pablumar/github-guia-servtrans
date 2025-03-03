<p><strong>Descripción del Escenario</strong></p>
<p>Antes de realizar la consulta de referencias de informes, una CA en
España necesita validar que el paciente existe en el poblacional del
país destino y obtener los datos mínimos asociados. Para ello, se
realiza una solicitud de paciente a través de <strong>OpenNCP</strong>,
utilizando el identificador del paciente introducido en la aplicación,
una vez seleccionado el país de destino, y el CountryCode
correspondiente en la cabecera. Esta operación devuelve un recurso FHIR
Patient con la información básica del paciente.</p>
<p><strong>Flujo del Proceso</strong></p>
<ol type="1">
<li><p><strong>Solicitud desde la CA:</strong></p>
<ul>
<li><p>El profesional de salud en la CA realiza una solicitud de
validación del paciente a través de OpenNCP.</p></li>
</ul></li>
<li><p><strong>Transmisión de la Solicitud por OpenNCP:</strong></p>
<ul>
<li><p>OpenNCP redirige la solicitud al sistema de salud del país
destino utilizando los parámetros proporcionados.</p></li>
</ul></li>
<li><p><strong>Respuesta del País Destino:</strong></p>
<ul>
<li><p>El sistema del país destino valida la existencia del paciente y
responde con un recurso FHIR Patient que contiene la información básica
del paciente.</p></li>
</ul></li>
<li><p><strong>Retransmisión de la Respuesta a la CA:</strong></p>
<ul>
<li><p>OpenNCP retransmite el recurso FHIR Patient a la CA
solicitante.</p></li>
</ul></li>
</ol>
<p><strong>Ejemplo de Solicitud (CA → OpenNCP):</strong></p>
<p><em>GET
/Patient?identifier=2.16.840.1.113883.4.1|ZZZZZZZZZZ009933</em></p>
<ul>
<li><p><strong>Cabeceras:</strong></p>
<ul>
<li><p><em>Authorization: [token]</em></p></li>
<li><p><em>Content-Type: application/fhir+json</em></p></li>
<li><p><em>CountryCode: FR</em></p></li>
</ul></li>
</ul>
<p><strong>Ejemplo de Solicitud (OpenNCP → País Destino):</strong></p>
<p><em>GET
/Patient?identifier=2.16.840.1.113883.4.1|ZZZZZZZZZZ009933</em></p>
<ul>
<li><p><strong>Cabeceras:</strong></p>
<ul>
<li><p><em>Authorization: [token]</em></p></li>
<li><p><em>Content-Type: application/fhir+json</em></p></li>
</ul></li>
</ul>
<p><strong>Respuesta Esperada</strong></p>
<p>El recurso FHIR Patient con los datos básicos del paciente
solicitado.</p>
<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr>
<th><p>{</p>
<p>"resourceType": "Patient",</p>
<p>"id": "ZZZZZZZZZZ009933",</p>
<p>"name": [</p>
<p>{</p>
<p>"family": "Doe",</p>
<p>"given": ["Jane"]</p>
<p>}</p>
<p>],</p>
<p>"gender": "female",</p>
<p>"birthDate": "1980-01-01",</p>
<p>"address": [</p>
<p>{</p>
<p>"use": "home",</p>
<p>"line": ["123 Main St"],</p>
<p>"city": "Paris",</p>
<p>"country": "FR"</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
<p><strong>Errores Comunes</strong></p>
<ol type="1">
<li><p><strong>Error: El paciente no existe en el sistema del país
destino.</strong></p></li>
</ol>
<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr>
<th><p>{"resourceType": "OperationOutcome",</p>
<p>"issue": [</p>
<p>{</p>
<p>"severity": "error",</p>
<p>"code": "not-found",</p>
<p>"details": {</p>
<p>"text": "No se encontró el paciente con ID ZZZZZZZZZZ009933 en el
país destino."</p>
<p>}</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
<ol start="2" type="1">
<li><p><strong>Error: Identificador del paciente
inválido.</strong></p></li>
</ol>
<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr>
<th><p>{</p>
<p>"resourceType": "OperationOutcome",</p>
<p>"issue": [</p>
<p>{</p>
<p>"severity": "error",</p>
<p>"code": "invalid",</p>
<p>"details": {</p>
<p>"text": "El identificador proporcionado no es válido o está mal
formado."</p>
<p>}</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
<ol start="3" type="1">
<li><p><strong>Error: Sistema del país destino no
disponible.</strong></p></li>
</ol>
<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr>
<th><p>{</p>
<p>"resourceType": "OperationOutcome",</p>
<p>"issue": [</p>
<p>{</p>
<p>"severity": "error",</p>
<p>"code": "not-available",</p>
<p>"details": {</p>
<p>"text": "El sistema de salud del país destino no está disponible en
este momento."</p>
<p>}</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>