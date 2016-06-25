merchantId: 500238
ApiKey: 6u39nqhq8ftd0hlvnjfs66eh8c
referenceCode: TestPayU
accountId: 500537
description: Test PAYU
amount: 3
tax: 0
taxReturnBase: 0
currency: USD
signature: be2f083cb3391c84fdf5fd6176801278
test: 1
buyerEmail: test@test.com

<form method="post" action="https://stg.gateway.payulatam.com/ppp-web-gateway/">
  <input name="merchantId"    type="hidden"  value="500238"   >
  <input name="accountId"     type="hidden"  value="500537" >
  <input name="description"   type="hidden"  value="Test PAYU"  >
  <input name="referenceCode" type="hidden"  value="TestPayU" >
  <input name="amount"        type="hidden"  value="3"   >
  <input name="tax"           type="hidden"  value="0"  >
  <input name="taxReturnBase" type="hidden"  value="0" >
  <input name="currency"      type="hidden"  value="USD" >
  <input name="signature"     type="hidden"  value="be2f083cb3391c84fdf5fd6176801278"  >
  <input name="test"          type="hidden"  value="1" >
  <input name="buyerEmail"    type="hidden"  value="test@test.com" >
  <input name="responseUrl"    type="hidden"  value="http://www.test.com/response" >
  <input name="confirmationUrl"    type="hidden"  value="http://www.test.com/confirmation" >
  <input name="Submit"        type="submit"  value="Enviar" >4565733909255874