<p>Este servicio permite la consulta y recuperación de referencias de
documentos clínicos asociados a la historia clínica de un paciente
atendido en otro país europeo. Utilizando el recurso FHIR
DocumentReference, este servicio transmite metadatos sobre los
documentos clínicos, permitiendo que los profesionales de salud en una
Comunidad Autónoma (CA) en España accedan a las referencias de manera
centralizada y organizada.</p>
<p>En este caso, cuando un profesional de salud en una CA española
requiere referencias de la historia clínica de un paciente extranjero,
realiza una solicitud a través de los servicios cross-border. OpenNCP
redirige esta solicitud al OpenNCP del país destino, consulta las
referencias de documentos clínicos del paciente y devuelve un Bundle con
recursos DocumentReference. Posteriormente, OpenNCP retransmite este
Bundle al profesional de salud que realizó la solicitud, proporcionando
una vista unificada y completa de las referencias clínicas del paciente
en el contexto transfronterizo.</p>
<p><strong>Diferencias Clave en el Rol B</strong></p>
<ol type="1">
<li><p>La solicitud de referencias se origina desde una
<strong>CA</strong> y se envía al sistema de salud del país destino a
través de OpenNCP.</p></li>
<li><p>OpenNCP actúa como intermediario transfronterizo, facilitando la
interoperabilidad entre los sistemas de salud.</p></li>
<li><p>Las referencias clínicas se recuperan del sistema del país
destino y se reenvían a la CA solicitante.</p></li>
</ol>
<p><strong>Descripción del Escenario:</strong></p>
<p>Desde una Comunidad Autónoma (CA) en España, un profesional de salud
necesita acceder a las referencias de documentos clínicos de un paciente
extranjero. Para ello, se envía una solicitud desde HCDSNS_CA a
<strong>OpenNCP</strong>, el cual envía la petición a
<strong>OpenNCP</strong> destino, que se encargará de reenviarla al
servicio correspondiente con el código del tipo de informe solicitado
(en este caso, informes de laboratorio identificados por el código
LOINC: 11502-2), que responderá con los recursos FHIR DocumentReference
relacionados con el paciente.</p>
<p><strong>Ejemplo de Solicitud:</strong></p>
<p>GET
/DocumentReference?patient=2.16.840.1.113883.4.1|ZZZZZZZZZZ009933&amp;type=http://loinc.org|11502-2</p>
<p>Este sería un ejemplo de respuesta a recibir por parte del servicio
transfronterizo:</p>
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