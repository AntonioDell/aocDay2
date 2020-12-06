. ".\parseLine.ps1"
function isValidForPart2 {
    param (
        $line
    )

    $password, $ruleCharacter, $ruleDigit1, $ruleDigit2 = ParseLine($line)

    $found = 0
    for ($i = 0; $i -lt $password.toCharArray().Count; $i++) {
        $char = $password.toCharArray()[$i]


        if ($char -eq $ruleCharacter -and ($i -eq ($ruleDigit1-1) -Or $i -eq ($ruleDigit2-1))) {
            $found += 1
        }
    }
    Write-Host $found
    return $found -eq 1
}

