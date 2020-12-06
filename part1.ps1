. ".\parseLine.ps1"

function isValidForPart1 {
    param (
        $line
    )

    $password, $ruleCharacter, $ruleFrom, $ruleTo = ParseLine($line)

    $timesFound = 0
    foreach ($char in $password.toCharArray()) {
        if ($char -eq $ruleCharacter) {
            $timesFound ++
        }
    }

    return $timesFound -ge $ruleFrom -And $timesFound -le $ruleTo
}

