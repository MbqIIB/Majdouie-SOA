<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$loadBill1" element="ns2:loadBill" location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd" ::)
(:: pragma  parameter="$signonProfileDVM" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:SADAD" location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd" ::)

declare namespace ns2 = "http://www.AlMajdouie.sa/ebs/cs.pay.Bills";
declare namespace ns1 = "http://www.AlMajdouie.sa/ebo/util.cmn.EBMHeader";
declare namespace ns3 = "http://www.AlMajdouie.sa/ebo/util.cmn.Basic";
declare namespace ns0 = "http://www.SADAD.sa";
declare namespace xf = "http://tempuri.org/cs.pay/cs.pay.ebs.Bills_1.0/xquery/loadBill_BillLoadRq/";
declare namespace dvm = "http://xmlns.oracle.com/dvm";

declare function xf:loadBill_BillLoadRq($loadBill1 as element(ns2:loadBill),
    $signonProfileDVM as element(*),
    $operation as xs:string?,
    $type as xs:string)
    as element(ns0:SADAD) {
        let $op := if (exists($operation))
                                      then $operation
                                      else "Unknown"
        return
            <ns0:SADAD>
                <ns0:SignonRq>
                    <ns0:ClientDt>
                        {
                            if (fn:exists($loadBill1/ns2:body/ns2:requestInformation/clientDate)) then
                                (data($loadBill1/ns2:body/ns2:requestInformation/ns3:clientDate))
                            else 
                                fn:current-dateTime()
                        }
</ns0:ClientDt>
                    <ns0:SignonProfile>
                        <ns0:Sender>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[3]) }</ns0:Sender>
                        <ns0:Receiver>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[4]) }</ns0:Receiver>
                        <ns0:MsgCode>
                            {
                                if (fn:exists($loadBill1/ns2:body/ns2:requestInformation/messageCode)) then
                                    (data($loadBill1/ns2:body/ns2:requestInformation/ns3:messageCode))
                                else 
                                    data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[5])
                            }
</ns0:MsgCode>
                    </ns0:SignonProfile>
                </ns0:SignonRq>
                <ns0:PresSvcRq>
                    <ns0:Status>
                        <ns0:StatusCode>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[6]) }</ns0:StatusCode>
                        <ns0:Severity>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[7]) }</ns0:Severity>
                    </ns0:Status>
                    <ns0:RqUID>{ data($loadBill1/ns2:header/ns1:rquid) }</ns0:RqUID>
                    <ns0:BillLoadRq>
                        <ns0:BillCategory>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[8]) }</ns0:BillCategory>
                        <ns0:ServiceType>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[9]) }</ns0:ServiceType>
                        <ns0:Timestamp>{ fn:current-dateTime() }</ns0:Timestamp>
                        {
                            for $billInfo in $loadBill1/ns2:body/ns2:bills/ns2:billInfo
                            return
                                <ns0:BillRec>
                                    <ns0:BillStatusCode>{ data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[10]) }</ns0:BillStatusCode>
                                    <ns0:CustId>
                                        <ns0:OfficialId>{ data($billInfo/ns2:officialId) }</ns0:OfficialId>
                                    </ns0:CustId>
                                    <ns0:BillInfo>
                                        <ns0:BillCategory>
                                            {
                                                if (fn:exists($billInfo/ns2:billCategory)) then
                                                    (data($billInfo/ns2:billCategory))
                                                else 
                                                    data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[8])
                                            }
</ns0:BillCategory>
                                        <ns0:ServiceType>
                                            {
                                                if ((fn:exists($billInfo/ns2:serviceType) or fn:empty($billInfo/ns2:serviceType))) then
                                                    (data($billInfo/ns2:serviceType))
                                                else 
                                                    data($signonProfileDVM/dvm:rows/dvm:row[dvm:cell[2] = $op and dvm:cell[1] = $type]/dvm:cell[9])
                                            }
</ns0:ServiceType>
                                        <ns0:BillCycle>{ data($billInfo/ns2:billCycle) }</ns0:BillCycle>
                                        <ns0:BillingAcct>{ data($billInfo/ns2:billingAccount) }</ns0:BillingAcct>
                                        <ns0:AmountDue>{ data($billInfo/ns2:dueAmount) }</ns0:AmountDue>
                                        <ns0:DueDt>{ data($billInfo/ns2:dueDate) }</ns0:DueDt>
                                        {
                                            for $openDate in $billInfo/ns2:openDate
                                            return
                                                <ns0:OpenDt>{ data($openDate) }</ns0:OpenDt>
                                        }
                                        <ns0:ExpDt>{ data($billInfo/ns2:expiryDate) }</ns0:ExpDt>
                                        <ns0:InfoPlus>
                                            <ns0:PaymentRanges>
                                                <ns0:BillType>{ data($billInfo/ns2:paymentRanges/ns2:billType) }</ns0:BillType>
                                                <ns0:Range>
                                                    <ns0:Lower>{ data($billInfo/ns2:dueAmount) }</ns0:Lower>
                                                    <ns0:Upper>{ data($billInfo/ns2:dueAmount) }</ns0:Upper>
                                                </ns0:Range>
                                            </ns0:PaymentRanges>
                                        </ns0:InfoPlus>
                                    </ns0:BillInfo>
                                </ns0:BillRec>
                        }
                    </ns0:BillLoadRq>
                </ns0:PresSvcRq>
            </ns0:SADAD>
};

declare variable $loadBill1 as element(ns2:loadBill) external;
declare variable $signonProfileDVM as element(*) external;
declare variable $operation as xs:string? external;
declare variable $type as xs:string external;

xf:loadBill_BillLoadRq($loadBill1,
    $signonProfileDVM,
    $operation,
    $type)]]></con:xquery>
    <con:dependency location="../../../core/ebs/cs.pay.ebs.Bills_1.0.xsd">
        <con:schema ref="core/ebs/cs.pay.ebs.Bills_1.0"/>
    </con:dependency>
    <con:dependency location="../../../bus.abcs/SADAD/wsdl/SADAD.xsd">
        <con:schema ref="bus.abcs/SADAD/wsdl/SADAD"/>
    </con:dependency>
</con:xqueryEntry>