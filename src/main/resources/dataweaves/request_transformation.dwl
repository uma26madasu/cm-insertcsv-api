%dw 2.0
output application/csv
---
{
	"Client Key": attributes.headers."ClientKey" default uuid(),
	"First Name": attributes.headers."firstName",
	"Middle Name": attributes.headers."middleName",
	"Last Name": attributes.headers."lastName",
	"Birth Date": (((attributes.headers."birthDate" as String) ++ "T00:00:00") as DateTime) as Number,
	"Height": attributes.headers."Height",
	"Weight": attributes.headers."Weight",
	"Billing Street": attributes.headers."billingStreet",
	"Billing City": attributes.headers."billingCity",
	"Billing State": attributes.headers."billingState",
	"Billing Postal Code": attributes.headers."billingPostalCode",
	"Billing Country": attributes.headers."billingCountry",
	"Created Date": now() as Number
}