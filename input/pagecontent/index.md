<h2 id="descripción-del-sistema-hcdsns">Descripción del Sistema
HCDSNS</h2>
<p>El Sistema de Historia Clínica Digital del Sistema Nacional de Salud
(HCDSNS) es una plataforma diseñada para facilitar el acceso a la
información clínica de los ciudadanos en el ámbito transfronterizo. Su
objetivo principal es garantizar la disponibilidad y accesibilidad de la
historia clínica resumida y otros documentos clínicos esenciales cuando
un ciudadano recibe atención sanitaria en otro país de la Unión
Europea.</p>
<p>A través de la implementación del estándar <strong>FHIR R4</strong> y
en alineación con la iniciativa <strong>MyHealth@EU</strong>, el sistema
permite la consulta y recuperación de documentos clínicos en un entorno
seguro, garantizando la interoperabilidad entre diferentes sistemas de
información sanitaria de los Estados miembros.</p>
<p>El modelo de HCDSNS transfronterizo se basa en la interacción con la
plataforma OpenNCP, que permite la conexión entre los sistemas
nacionales y los servicios de intercambio de datos clínicos en el
contexto europeo. La implementación de FHIR en este sistema tiene como
objetivo mejorar la eficiencia en el acceso a la información,
optimizando los flujos de comunicación y asegurando el cumplimiento de
los estándares europeos de seguridad y protección de datos.</p>
<h2 id="arquitectura-del-sistema">Arquitectura del Sistema</h2>
<p><strong>Componentes del Sistema</strong></p>
<p>El sistema HCDSNS transfronterizo se estructura en una serie de
componentes que permiten la gestión, consulta y recuperación de datos
clínicos. Estos componentes son los siguientes:</p>
<ul>
<li><p><strong>HCDSNS_BE (Backend Centralizado):</strong> Responsable de
procesar las solicitudes de consulta de documentos clínicos,
interoperando con OpenNCP y redirigiendo las peticiones a las
Comunidades Autónomas (CCAA) u otros sistemas nacionales. Este
componente asegura la correcta orquestación de los flujos de
información.</p></li>
<li><p><strong>HCDSNS_CA (Cliente de Comunidades Autónomas):</strong>
Actúa como interfaz entre los sistemas de información sanitaria de cada
Comunidad Autónoma y el nodo central HCDSNS_BE. Su función principal es
traducir y adaptar los mensajes clínicos al formato FHIR y reenviarlos
de manera estructurada.</p></li>
<li><p><strong>OSB (Oracle Service Bus):</strong> Bus de integración
encargado de la orquestación y el enrutamiento de las solicitudes dentro
del sistema. Permite la comunicación fluida entre los distintos
componentes del HCDSNS, asegurando la correcta transformación de los
mensajes y la interoperabilidad con los sistemas externos.</p></li>
<li><p><strong>OpenNCP:</strong> Conjunto de módulos software utilizados
para facilitar el intercambio de datos clínicos entre países europeos.
OpenNCP actúa como intermediario en la comunicación entre HCDSNS_BE y
los sistemas de salud de otros Estados miembros.</p></li>
</ul>
<p>Cada uno de estos componentes está diseñado para operar de forma
coordinada, asegurando que las solicitudes y respuestas se procesen de
manera eficiente y con los niveles de seguridad requeridos por las
normativas europeas de intercambio de información clínica.</p>
<h2 id="modelo-de-coexistencia-de-mensajerías">Modelo de Coexistencia de
Mensajerías</h2>
<p>El modelo de interoperabilidad transfronteriza del HCDSNS está basado
en la utilización de estándares abiertos y protocolos de intercambio de
datos definidos por organizaciones internacionales como
<strong>HL7</strong> e <strong>IHE</strong>.</p>
<p>Las principales características del modelo son:</p>
<ul>
<li><p><strong>Uso de DocumentReference:</strong> Representación de
metadatos de documentos clínicos, permitiendo la indexación y consulta
de referencias de informes médicos, resultados de pruebas, imágenes
diagnósticas, entre otros.</p></li>
<li><p><strong>Uso de Bundle:</strong> Agrupación de múltiples recursos
FHIR en una sola transacción, permitiendo la estructuración de la
información de manera eficiente.</p></li>
<li><p><strong>Implementación de los perfiles IHE Mobile Access to
Health Documents (MHD):</strong> Uso de transacciones
<strong>ITI-67</strong> (búsqueda de referencias de documentos) y
<strong>ITI-68</strong> (recuperación de documentos clínicos) para
garantizar la interoperabilidad entre sistemas nacionales y
europeos.</p></li>
</ul>
<ul>
<li><p><strong>Find Document References [ITI-67]</strong>: Transacción
para la consulta de referencias de documentos clínicos utilizando el
recurso DocumentReference.</p></li>
</ul>
<blockquote>
<p><img src="media/image4.png" style="width:4.56314in;height:1.53146in"
alt="Interfaz de usuario gráfica, Texto, Aplicación, Correo electrónico Descripción generada automáticamente" /></p>
</blockquote>
<p>En esta transacción se usarán los siguientes recursos estándar
FHIR:</p>
<ul>
<li><p>DocumentReference: Representa referencias a documentos
clínicos.</p></li>
<li><p>Bundle: Agrupa recursos FHIR relacionados.</p>
<ul>
<li><p><strong>Retrieve Document [ITI-68]</strong>: Transacción para la
recuperación de documentos utilizando el recurso Binary para documentos
codificados en Base64 (como PDF o CDA) y Bundle para recuperar
documentos de tipo FHIR Document.</p></li>
</ul></li>
</ul>
<blockquote>
<p><img src="media/image5.png" style="width:4.04223in;height:1.60439in"
alt="Interfaz de usuario gráfica, Texto, Aplicación Descripción generada automáticamente" /></p>
</blockquote>
<p>En esta transacción se usarán los siguientes recursos estándar
FHIR:</p>
<ul>
<li><p>Bundle: agrupador de recursos correspondientes con un FHIR
Document.</p></li>
</ul>
<ul>
<li><p><strong>Gestión de autenticación y seguridad:</strong>
Implementación de autenticación mediante tokens <strong>JWT</strong> y
<strong>SAML</strong>, garantizando que el acceso a la información
clínica se realice de forma segura y conforme a las regulaciones
establecidas por <strong>MyHealth@EU</strong>.</p></li>
</ul>
<h2 id="transición-progresiva">Transición Progresiva</h2>
<p>Dado que no todas las Comunidades Autónomas han completado la
transición a FHIR, se ha definido un plan de implementación progresiva
con los siguientes pasos:</p>
<ol type="1">
<li><p><strong>Implementación de DocumentReference para la indexación de
documentos clínicos:</strong> Cada CCAA deberá adaptar sus sistemas de
indexación para utilizar DocumentReference como recurso FHIR de
referencia.</p></li>
<li><p><strong>Habilitación de consultas de referencias clínicas en
HCDSNS_BE:</strong> Implementación de mecanismos de búsqueda de
referencias basados en DocumentReference y Bundle.</p></li>
<li><p><strong>Adopción de ITI-67 e ITI-68 en la recuperación de
documentos clínicos:</strong> Garantizando que los documentos clínicos
puedan ser recuperados en un formato interoperable en el contexto de
MyHealth@EU.</p></li>
<li><p><strong>Integración con los servicios europeos OpenNCP:</strong>
Permitiendo la consulta de referencias y recuperación de documentos
clínicos desde y hacia sistemas de salud de otros países
europeos.</p></li>
</ol>
<p>Este enfoque escalonado permitirá una transición fluida y garantizará
la coexistencia de los sistemas tradicionales y FHIR durante el periodo
de migración.</p>
<h2 id="evaluación-de-impacto-y-esfuerzo"><strong>Evaluación de Impacto
y Esfuerzo</strong></h2>
<ul>
<li><p><strong>Impacto en los sistemas de salud:</strong> Adaptación de
los sistemas de información autonómicos para soportar la infraestructura
basada en FHIR.</p></li>
<li><p><strong>Esfuerzo técnico:</strong> Desarrollo de nuevas
interfaces FHIR, integración con OpenNCP y pruebas de
interoperabilidad.</p></li>
<li><p><strong>Revisión de seguridad:</strong> Validación de
autenticación basada en tokens JWT y SAML.</p></li>
</ul>
<h2 id="identificación-de-riesgos"><strong>Identificación de
Riesgos</strong></h2>
<p>Durante la implementación del modelo transfronterizo, se han
identificado los siguientes riesgos potenciales:</p>
<ul>
<li><p><strong>Diferencias en la implementación de FHIR entre
países:</strong> Algunas variaciones en los perfiles nacionales pueden
afectar la interoperabilidad.</p></li>
<li><p><strong>Limitaciones en la interoperabilidad con sistemas
legados:</strong> No todos los sistemas autonómicos han migrado
completamente a FHIR.</p></li>
<li><p><strong>Cumplimiento con regulaciones de seguridad y
privacidad:</strong> Asegurar que el intercambio de datos cumpla con
GDPR y otras normativas aplicables.</p></li>
</ul>
<h2 id="relaciones-con-otros-documentos">Relaciones con otros
documentos</h2>
<table>
<colgroup>
<col style="width: 56%" />
<col style="width: 43%" />
</colgroup>
<thead>
<tr>
<th rowspan="2"
style="text-align: center;"><strong>archivo</strong></th>
<th rowspan="2"
style="text-align: center;"><strong>DESCRIPCIÓN</strong></th>
</tr>
<tr>
</tr>
</thead>
<tbody>
<tr>
<th
style="text-align: left;">Guia_Implementacion_Tarjeta_Sanitaria.docx</th>
<td>Documento en el que se especifica la guía de implementación de la
tarjeta sanitaria.</td>
</tr>
<tr>
<th
style="text-align: left;">Guia_Implementacion_Servidor_Terminologico.docx</th>
<td>Documento en el que se especifica la guía de implementación del
servidor terminológico.</td>
</tr>
<tr>
<th style="text-align: left;">Objetivos_y_Análisis_HCDSNS.docx</th>
<td>Documento con la consultoría previa realizada por Minsait.</td>
</tr>
<tr>
<th style="text-align: left;"><a
href="https://fhir.ehdsi.eu/laboratory/">MyHealth@Eu Laboratory Report
v0.0.1</a></th>
<td>Página web que contiene la información referente a la documentación
europea.</td>
</tr>
</tbody>
</table>
<h2 id="destinatarios">Destinatarios</h2>
<p>Este documento va dirigido al personal de la SGSDS.</p>
<h2 id="glosario">Glosario</h2>
<p><strong>SNS</strong>: Sistema Nacional de Salud.</p>
<p><strong>CA</strong>: Comunidad Autónoma/Cliente autonómico.</p>
<p><strong>SI</strong>: Sistema de Información</p>
<p><strong>HCD</strong>: Historia Clínica Digital</p>
<p><strong>FHIR (Fast Healthcare Interoperability Resources)</strong>:
Estándar para la interoperabilidad de información en salud promovido por
<strong>HL7</strong>.</p>
<p><strong>HAPI FHIR</strong>: Implementación en Java del estándar
<strong>FHIR</strong>, utilizada para construir servidores y clientes
FHIR.</p>
<p><strong>DocumentReference:</strong> Representa una referencia a un
documento clínico existente, proporcionando metadatos como autor, fechas
y enlaces al contenido. Se usa para indexar documentos clínicos.</p>
<p><strong>Composition:</strong> Define la estructura y contenido de un
documento clínico, compuesto por secciones que contienen recursos
relacionados.</p>
<p><strong>Bundle:</strong> Agrupa múltiples recursos FHIR en un
contenedor, usado para transacciones, documentos o mensajes
clínicos.</p>
<p><strong>Patient:</strong> Representa la información demográfica
básica de un paciente, como nombre, fecha de nacimiento y género.</p>
<p><strong>SOAP (Simple Object Access Protocol)</strong>: Protocolo de
intercambio de información en la web que se utiliza actualmente en la
mensajería del <strong>HCDSNS</strong>.</p>
<p><strong>CCAA (Comunidades Autónomas)</strong>: Las entidades
administrativas españolas responsables de la sanidad regional.</p>
<p><strong>OAuth2:</strong> protocolo de autorización que permite que
las aplicaciones obtengan acceso a recursos protegidos en nombre de un
usuario sin compartir sus credenciales. Se utiliza ampliamente en la
autenticación de usuarios y la integración de servicios en línea.</p>
<p><strong>OpenNCP:</strong> conjunto de componentes que proporciona la
Comisión Europea para la interoperabilidad transfronteriza que son
independientes de las particularidades de la infraestructura
nacional.</p>
<p><strong>OSB / OSB11 / OSB12</strong>: bus de integración Oracle
Service Bus (versiones 11 / 12).</p>
<p><strong>MyHealth@EU:</strong> Iniciativa de la Comisión Europea para
el intercambio de datos clínicos en el ámbito transfronterizo.</p>
<h2 id="referencias">Referencias</h2>
<p>[1] Referencia recurso DocumentReference 🡪 <a
href="https://build-fhir.ehdsi.eu/ncp-api/StructureDefinition-DocumentReference-minimal-myhealtheu.html">DocumentReference:
Minimal - MyHealth@Eu NCPeH API v0.0.1</a></p>
<p>[2] Referencia recurso Bundle 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-Bundle-lab-myhealtheu.html">Bundle:
Laboratory - MyHealth@Eu Laboratory Report v0.0.1</a></p>
<p>[3] Referencia recurso Composition 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-Composition-lab-myhealtheu.html">Composition:
Laboratory - MyHealth@Eu Laboratory Report v0.0.1</a></p>
<p>[4] Referencia recurso Patient 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-Patient-lab-myhealtheu.html">Patient:
Laboratory - MyHealth@Eu Laboratory Report v0.0.1</a></p>
<p>[5] Referencia recurso Practitioner 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-Practitioner-eu-myhealth-eu.html">Practitioner:
Laboratory - MyHealth@Eu Laboratory Report v0.0.1</a></p>
<p>[6] Referencia recurso PractitionerRole 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-PractitionerRole-eu-myhealth-eu.html">PractitionerRole:
Laboratory - MyHealth@Eu Laboratory Report v0.0.1</a></p>
<p>[7] Referencia recurso Organization 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-Organization-eu-myhealth-eu.html">Organization:
Laboratory - MyHealth@Eu Laboratory Report v0.0.1</a></p>
<p>[8] Referencia recurso DiagnosticReport 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-DiagnosticReport-lab-myhealtheu.html">DiagnosticReport:
Laboratory - MyHealth@Eu Laboratory Report v0.0.1</a></p>
<p>[9] Referencia recurso Device 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-Device-measuring-lab-myhealtheu.html">Device:
measuring - MyHealth@Eu Laboratory Report v0.0.1</a></p>
<p>[10] Referencia recurso Observation(Results) 🡪 <a
href="https://fhir.ehdsi.eu/laboratory/StructureDefinition-Observation-resultslab-lab-myhealtheu.html">Observation
Results: Laboratory - MyHealth@Eu Laboratory Report v0.0.1</a></p>