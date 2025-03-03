<p>En el contexto transfronterizo, esta operación se realiza mediante el
sistema <strong>OpenNCP</strong>, que actúa como intermediario entre el
CA solicitante y el país destino. El recurso DocumentReference se
utiliza de manera similar, pero las respuestas incluirán referencias
adaptadas al contexto internacional.</p>
<ul>
<li><p><strong>Descripción:</strong></p></li>
</ul>
<p>Permite solicitar referencias de informes clínicos relacionados con
un tipo específico para un paciente en otro país, añadiendo el
CountryCode en la cabecera para identificar el destino. El OpenNCP
enviará la solicitud al sistema del país destino y retornará el Bundle
con las referencias.</p>
<ul>
<li><p><strong>Endpoint Transfronterizo:</strong>
<em>/DocumentReference?patient=&lt;&lt;ID_PACIENTE&gt;&gt;&amp;type=http://loinc.org|&lt;&lt;COD_LOINC&gt;&gt;</em></p></li>
<li><p><strong>Método:</strong> GET</p></li>
<li><p><strong>Cabeceras:</strong></p>
<ul>
<li><p>Authorization: [token]</p></li>
<li><p>Content-Type: application/fhir+json</p></li>
<li><p>CountryCode: &lt;&lt;PAIS&gt;&gt;</p></li>
</ul></li>
</ul>
<p><strong>Parámetros de la operación transfronterizo</strong></p>
<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<tbody>
<tr>
<td><strong>ID_PACIENTE</strong></td>
<td style="text-align: left;">Identificador del paciente en el país de
destino del que se desea recuperar las referencias de documentos
clínicos.</td>
</tr>
<tr>
<td><strong>COD_LOINC</strong></td>
<td style="text-align: left;">Identificador del tipo de informe
relacionado con las referencias a documentos clínicos a recuperar.</td>
</tr>
<tr>
<td><strong>PAIS</strong></td>
<td style="text-align: left;">Código del país al que se debe enviar la
solicitud en un contexto transfronterizo. Este país se ha recogido en la
pantalla de acceso del profesional al buscar un paciente europeo, código
ISO 3166 (por ejemplo, "ES" para España, "FR" para Francia).</td>
</tr>
</tbody>
</table>
<p>Para la comunicación de <strong>respuestas correctas</strong> se hará
uso del <strong>recurso FHIR Bundle</strong> <a
href="#referencias">(Referencia 6)</a> que contendrá todos aquellos
recursos FHIR DocumentReference con la información requerida.</p>
<p>Para la comunicación de <strong>respuestas de error</strong> se hará
uso del <strong>recurso FHIR OperationOutcome</strong> <a
href="#referencias">(Referencia 7)</a> ya que proporciona la estructura
necesaria para cubrir las actuales respuestas de error.</p>
<table>
<colgroup>
<col style="width: 21%" />
<col style="width: 41%" />
<col style="width: 37%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Origen</strong></th>
<th style="text-align: center;"><strong>Recurso FHIR</strong></th>
<th style="text-align: center;"><strong>Descripcion</strong></th>
</tr>
</thead>
<tbody>
<tr>
<th><strong>Error</strong></th>
<td>"<strong>OperationOutcome</strong>”</td>
<td>Recurso para modelar toda la información asociada al error que se ha
producido, o bien si la operación ha sido correcta, indicando tal
hecho.</td>
</tr>
<tr>
<th>Codigo_error</th>
<td>OperationOutcome.issue.code</td>
<td>Código de éxito/error.</td>
</tr>
<tr>
<th>Descripcion_error</th>
<td>OperationOutcome.issue.details</td>
<td>Descripción del éxito/error.</td>
</tr>
<tr>
<th>Nivel de error</th>
<td>OperationOutcome.issue.severity</td>
<td>Nivel de error</td>
</tr>
<tr>
<th>Diagnóstico</th>
<td>OperationOutcome.issue.diagnostics</td>
<td>Diagnóstico</td>
</tr>
</tbody>
</table>
<p>Como resultado del servicio se devolverán los siguientes datos:</p>
<ul>
<li><p>Cabeceras HTTP</p>
<ul>
<li><p>200 🡪 Operación realizada satisfactoriamente.</p></li>
<li><p>401 🡪 No se ha recibido la cabecera Authorization, o bien, dicha
cabecera no es correcta.</p></li>
<li><p>511 🡪 Problemas con el sistema</p></li>
<li><p>512 🡪 Agente no valido</p></li>
<li><p>513 🡪 Cola saturada</p></li>
<li><p>514 🡪 Sistema bloqueado</p></li>
<li><p>515 🡪 Error firma no valida</p></li>
<li><p>516 🡪 Operación no registrada</p></li>
<li><p>517 🡪 Agente bloqueado</p></li>
</ul></li>
<li><p>En el caso de que se produzca un error se enviará en el body de
la respuesta el recurso FHIR OperationOutcome correspondiente con la
información del error producido detallada. Estos errores son los
siguientes:</p>
<ul>
<li><p>ERR001 Los campos no se encuentran en la BBDD</p></li>
<li><p>ERR002 Los campos han de estar rellenos obligatoriamente y con un
valor correcto</p></li>
<li><p>ERR003 Error al insertar en la BBDD</p></li>
</ul></li>
</ul>