<p>Este servicio permite la consulta y recuperación de referencias de
documentos clínicos asociados a la historia clínica de un paciente.
Utilizando el recurso FHIR <strong>DocumentReference</strong> para
transmitir metadatos sobre los documentos clínicos, este recurso permite
que los distintos agentes, CCAA, servicios transfronterizos, … accedan a
las referencias distribuidas de manera centralizada y organizada.</p>
<p>En un escenario típico, cuando desde un servicio cross-border
requiere las referencias de la historia clínica de un paciente, envía
una solicitud a OpenNCP, el cual reenvía dicha solicitud a HCDSNS_BE.
Este recibe dicha solicitud, consulta las referencias a HC que tiene el
ciudadano y realiza una búsqueda en todas ellas para recuperar el
listado de referencias de informes. Cada CA con información responde con
un bundle de <strong>DocumentReference</strong>, los cuales son
recopilados por HCDSNS_BE. Posteriormente, consolida todos estos
<strong>Bundles</strong> en uno solo y lo envía de vuelta al agente
peticionario, proporcionando al profesional de salud una vista unificada
y completa de las referencias de la historia clínica del paciente.</p>
<h5 id="openncp-solicitud-de-referencias-de-documentos">OpenNCP:
Solicitud de Referencias de Documentos</h5>
<p><strong>Descripción del Escenario:</strong></p>
<p>Desde otro país europeo un profesional necesita acceder a las
referencias de documentos clínicos de un paciente que está siendo
atendido en dicho país, en este caso informes de laboratorio con código
LOINC: 11502-2, y envía una solicitud al HCDSNS-BE para obtener estos
<strong>DocumentReferences</strong>.</p>
<p>Se enviará una petición y en este caso será HCDSNS_BE quien se
encargue de enviar N mensajes a cada uno de los servicios de salud donde
el paciente dispone de HC.</p>
<p><strong>Ejemplo:</strong></p>
<p>GET
$server/DocumentReference?type=http://loinc.org|11502-2&amp;patient.identifier=https://ncez.mzcr.cz/standards/fhir/sid/rid|456789123&amp;date=ge2023-02-20</p>
<p>Authorization: [token]</p>
<h5
id="hcdsns-be-consolidación-de-referencias-de-documentos-por-el-backend">HCDSNS-BE:
Consolidación de Referencias de Documentos por el Backend</h5>
<p><strong>Descripción del Escenario:</strong></p>
<p>HCDSNS_BE envía un mensaje a cada uno de los servicios de salud donde
el paciente dispone de HC, que previamente se han recuperado mediante la
consulta de servicios de salud.</p>
<p>Conforme recibe las respuestas el HCDSNS_BE de cada uno de los
servicios de salud, los consolida en un único bundle que se devolverá
como respuesta a la petición original.</p>
<p><strong>Ejemplo:</strong></p>
<p>GET
/DocumentReference?patient=2.16.724.4.40|BBBBBBBBBB009933&amp;type=http://loinc.org|11502-2</p>
<p>Authorization: [token]</p>
<p><strong>Pasos del Proceso</strong>:</p>
<ol type="1">
<li><p>El servicio transfronterizo envía una solicitud de referencias de
documentos del paciente BBBBBBBBBB009933 a HCDSNS-BE.</p></li>
<li><p>HCDSNS_BE verifica que existen varias referencias en distintas
CCAA para el paciente solicitado.</p></li>
<li><p>HCDSNS_BE envía una solicitud de referencias a cada CA que posee
información sobre el paciente.</p></li>
<li><p>Cada <strong>CA</strong> con información responde enviando su
propio bundle de <strong>DocumentReference</strong> a
HCDSNS-BE.</p></li>
<li><p>HCDSNS-BE espera recibir todos los bundle, los unifica en un
único bundle consolidado consolidado y lo envía al servicio
peticionario.</p></li>
</ol>
<h5 id="hcdsns-ca-respuesta-de-la-ca-con-un-bundle">HCDSNS-CA: Respuesta
de la CA con un Bundle </h5>
<p><strong>Descripción del Escenario:</strong></p>
<p>Una CA recibe una solicitud de referencias de historia clínica de un
paciente desde HCDSNS-BE. La CA reúne la información disponible en su
sistema, monta un <strong>Bundle</strong> con las referencias de
documentos clínicos del paciente y lo envía de vuelta a HCDSNS-BE.</p>
<p><strong>Ejemplo:</strong></p>
<ul>
<li><p><strong>Solicitud de HCDSNS-BE a la CA</strong>:</p></li>
</ul>
<p>GET
/DocumentReference?patient=2.16.724.4.40|BBBBBBBBBB009933&amp;type=http://loinc.org|11502-2&amp;custodian=20160201</p>
<p>Authorization: [token]</p>
<ul>
<li><p><strong>Respuesta de la CA</strong>:</p></li>
</ul>
<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr>
<th style="text-align: left;"><blockquote>
<p>{</p>
<p>"resourceType": "Bundle",</p>
<p>"id": "b5cc9dd1-4b9b-4616-ab30-493de41a1605",</p>
<p>"meta": {</p>
<p>"lastUpdated": "2024-12-17T18:07:57.251+01:00"</p>
<p>},</p>
<p>"type": "searchset",</p>
<p>"link": [</p>
<p>{</p>
<p>"relation": "self",</p>
<p>"url": "http://localhost:7001/HcdsnsFhir/DocumentReference?</p>
<p>custodian=Organization%2F20160201&amp;patient=BBBBBBBBBB134064&amp;type=11502-2"</p>
<p>}</p>
<p>],</p>
<p>"entry": [</p>
<p>{</p>
<p>"resource": {</p>
<p>"resourceType": "DocumentReference",</p>
<p>"id": "DocumentReferenceMinimal",</p>
<p>"meta": {</p>
<p>"profile": [</p>
<p>"https://sns.gob.es/fhir/hcdsns/StructureDefinition/DocumentReference-minimal-sns"</p>
<p>]</p>
<p>},</p>
<p>"masterIdentifier": {</p>
<p>"system": "http://example.org",</p>
<p>"value": "ba91c64b-f30c-4137-a484-34bbba5e8804"</p>
<p>},</p>
<p>"status": "current",</p>
<p>"type": {</p>
<p>"coding": [</p>
<p>{</p>
<p>"system":
"http://myhealth.eu/fhir/ncp-api/ValueSet/eHDSILaboratoryReportType",</p>
<p>"code": "11502-2",</p>
<p>"display": "Laboratory report"</p>
<p>}</p>
<p>]</p>
<p>},</p>
<p>"category": [</p>
<p>{</p>
<p>"coding": [</p>
<p>{</p>
<p>"system": "http://fhir.ehdsi.eu/mvc/eHDSILabStudyTypes",</p>
<p>"code": "18719-5",</p>
<p>"display": "Chemistry studies (set)"</p>
<p>}</p>
<p>]</p>
<p>}</p>
<p>],</p>
<p>"subject": {</p>
<p>"identifier": {</p>
<p>"system": "2.16.724.4.40",</p>
<p>"value": "BBBBBBBBBB009931"</p>
<p>},</p>
<p>“display”: “nombre Paciente”</p>
<p>},</p>
<p>"date": "2022-03-30T11:24:26+01:00",</p>
<p>"description": "Informe Prueba Laboratorio",</p>
<p>"content": [</p>
<p>{</p>
<p>"attachment": {</p>
<p>"contentType": "application/fhir+json",</p>
<p>"language": "cs",</p>
<p>"url": "/bundle/20160201-XXXXXXX"</p>
<p>}</p>
<p>}</p>
<p>]</p>
<p>}</p>
<p>}</p>
<p>]</p>
<p>}</p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
<p><strong>Explicación del Resultado:</strong></p>
<p>La <strong>CA</strong> envía un <strong>Bundle</strong> con
referencias de documentos clínicos del paciente BBBBBBBBBB009933 a
HCDSNS_BE. Este <strong>Bundle</strong> incluye los
<strong>DocumentReferences</strong> que posee la CA para dicho
paciente.</p>
<p>En la url del bundle se incluyen dos partes, por un lado, el
identificador de la CA a la que invocar, y en segundo lugar el
identificador del bundle.</p>
<p><strong>Error:</strong></p>
<ul>
<li><p><strong>Error</strong>: No se puede encontrar ninguna referencia
para el paciente solicitado en la CA.</p>
<ul>
<li><p><strong>Respuesta del Servidor</strong>:</p></li>
</ul></li>
</ul>
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
<p>"severity": "warning",</p>
<p>"code": "not-found",</p>
<p>"details": {</p>
<p>"text": "No se encontraron referencias de historia clínica para el
paciente con ID SNS12345 en esta CA."</p>
<p>}</p>
<p>}</p>
<p>]</p>
<p>}</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>