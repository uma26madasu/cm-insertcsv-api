%dw 2.0
output application/java
---
p("mule.home") ++ "\\" ++ p("fileName") ++ "-" ++ p("mule.env") ++ ".csv"