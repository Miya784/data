$inputCsv  = "input.csv"
$outputCsv = "output.csv"

# รายการ id ที่ต้องการลบ
$removeIds = @("2", "4")

Import-Csv $inputCsv |
Where-Object { $removeIds -notcontains $_.id } |
Export-Csv $outputCsv -NoTypeInformation
