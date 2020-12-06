function ParseLine {
    param (
        $line
    )
    $splitLine = $line -split ":"
    $splitRule = $splitLine[0] -split " "
    $splitRange = $splitRule[0] -split "-"
        

    $password = $splitLine[1].Trim()
    $ruleCharacter = $splitRule[1]
    $ruleDigit1 = $splitRange[0]
    $ruleDigit2 = $splitRange[1]
    
    return $password, $ruleCharacter, $ruleDigit1, $ruleDigit2
}