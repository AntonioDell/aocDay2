. ".\part1.ps1"
. ".\part2.ps1"

$invalidCountPart1 = 0
$validCountPart1 = 0
$invalidCountPart2 = 0
$validCountPart2 = 0
Get-Content data\input.txt | ForEach-Object { 
    if (isValidForPart1($_)) {
        $validCountPart1 += 1
    }
    else {
        $invalidCountPart1 += 1
    }    
    if (isValidForPart2($_)) {
        $validCountPart2 += 1
    }
    else {
        $invalidCountPart2 += 1
    }
}
Write-Output "Part 1: Found $invalidCountPart1 invalid and $validCountPart1 valid passwords."
Write-Output "Part 2: Found $invalidCountPart2 invalid and $validCountPart2 valid passwords."