xquery version "1.0" encoding "Cp1252";
<dvm name="SignonProfile" xmlns="http://xmlns.oracle.com/dvm">
   <description>Stored the msgType, sender id and receiver ID for each transaction.</description>
  <columns>
    <column name="type"/>
    <column name="Operation"/>
    <column name="Sender"/>
    <column name="Receiver"/>
    <column name="MessageCode"/>
    <column name="StatusCode"/>
    <column name="Severity"/>
    <column name="BillCategory"/>
    <column name="ServiceType"/>
    <column name="BillStatusCode"/>
  </columns>
  <rows>
 	<row>
      <cell>request</cell>
      <cell>uploadBill</cell>
      <cell>131</cell>
      <cell>SADAD-001</cell>
      <cell>BUPLRQ</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>response</cell>
      <cell>uploadBill</cell>
      <cell>SADAD-001</cell>
      <cell>131</cell>
      <cell>AUPLRS</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>  
    <row>
      <cell>request</cell>
      <cell>loadBill</cell>
      <cell>131</cell>
      <cell>SADAD-001</cell>
      <cell>BLODRQ</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>response</cell>
      <cell>loadBill</cell>
      <cell>SADAD-001</cell>
      <cell>131</cell>
      <cell>BLODRS</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>request</cell>
      <cell>confirmBill</cell>
      <cell>131</cell>
      <cell>SADAD-001</cell>
      <cell>BCONRQ</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>response</cell>
      <cell>confirmBill</cell>
      <cell>SADAD-001</cell>
      <cell>131</cell>
      <cell>BCONRS</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>request</cell>
      <cell>uploadAccount</cell>
      <cell>131</cell>
      <cell>SADAD-001</cell>
      <cell>AUPLRQ</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>response</cell>
      <cell>uploadAccount</cell>
      <cell>SADAD-001</cell>
      <cell>131</cell>
      <cell>AUPLRS</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
     <row>
      <cell>request</cell>
      <cell>confirmAccount</cell>
      <cell>131</cell>
      <cell>SADAD-001</cell>
      <cell>ACONRQ</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>response</cell>
      <cell>confirmAccount</cell>
      <cell>SADAD-001</cell>
      <cell>131</cell>
      <cell>ACONRS</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>request</cell>
      <cell>notifyPayment</cell>
      <cell>SADAD-001</cell>
      <cell>131</cell>
      <cell>PNUPRQ</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
    <row>
      <cell>response</cell>
      <cell>notifyPayment</cell>
      <cell>131</cell>
      <cell>SADAD-001</cell>
      <cell>PNUPRS</cell>
      <cell>0</cell>
      <cell>info</cell>
      <cell>Tasheelbill</cell>
      <cell>AUTL</cell>
      <cell>BillAny</cell>
    </row>
  </rows>
</dvm>