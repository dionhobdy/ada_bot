<# 

ada_b0t is a code assistant bot. 
She pulls from the MDN docs to explain code and display code blocks.
She can also calculate the time and space complexity of code snippets and suggest faster algorithms if they exist.

Built by Dion Hobdy
Github: https://github.com/dionhobdy

#>

# multiline title. output it to console.
$title = @"
╔════════════════════════════════════════════════════════════════════════════════════════════════════╗
║█████████▒░███████▒░▒░░▒░░██████████████████████████▒▒░░░░▒▓██▒█▒█▒███▓█▒█▓███▒▓▒█▓▒▓░█▒████████████║
║███████████░█▒░█████▒░▒▒░░░░▓███████████████████████████░░░░░░█▓▒█▒███▒█▓███▒██▒█▓░███▒████▓████████║
║██████████░░░██░█░░▓██▓░░░░░██▓▒▓██████████████████████▓░░░░░░░░▒░▒▓▒░▓░███▓▓██░░█▒█░█░░█▓██▓███████║
║█████████▓░░░░▒▒▓████▓▒░░░░░░███████████████▒▒▒░░▓███████▓░░░▒░░▓▓▓█████░░████░░░░▓▓██░░░██░▓███████║
║█████████░░░░░░▓▒██▓░▒█░░░░██▓██▓▒▓████████████████▒█████░░░░░░░░░░▒▒░░▓░░░░░░░░▓▒▒░▓██▒░▓▓░▓███████║
║█████████▒░░░░░▒█▒▒░██ █▒░░█▒░░▒░▒████████▒██████▓▒██████░░░▒░░▒▒█████▒░▓░░░░░░░░█▒█▒▒▒█░▒░░░ ██████║
║██████████░░░░░░▒▓░░████░░░░░██▓░▒▓▒██████▓████▒░░▒▒█████░░░░░▒▒█████▒█░░░░░░░▒░░░▒▒█▒░▒░░░░▒███████║
║███████████ ░░░░░░░▒█████░████████▓████████████▒██▒▒█████░░░█▒▓▒████▓▒▒▓░▒░█████░░░░░░░░░░░░░░░█████║
║█████████████░░░░░░░█▒█▓█▒██████████████████████████████░░░▓▓▒█░█▒█░█░░░█████░▓██▒░░░░█░█░░░░░██████║
║███████████████░░░░░█▒▒█▓▒█████████████████████████████░░▓▒░▓▓██▒█▒█▒░░███▒█▓█▒█░░░░░▒░▒██░░░░░░████║
║████████████████░░░░▒▒░░▒▒██████▓█████████████████████░▒░▒▒█▒▒█▒█▒██░░░▒▒█░██▒██░░░░░░░░░█░░░███████║
║█████████████████▒░░░░░░░░█████▓████████████████████▒░▒▓▓░▒███░▒█▒░░░░░░░░░░▒░░░░░▒░█░░░▓▒██░▒██████║
║██████████████████░░░░░░░░█████▒██▒▒▒██████████████▒░░▓▒▓▓░▒▓█▒░▒▒░░░░░░░░░▒▓▒░▓░▒░█░░░░░███████████║
║████████████████████▒░░░░░▒███████▓████████████████░▒░█▒▓██░░░░░░░░░▒███▓▒▒▓███░░░█░████████████████║
║██████████████████████░░░░░███████████████████████▒▒▓█▓███░▓░░░░░░█░███▒▓▒░░░█▒░▓▓░█████████████████║
║███████████████████████▒░░░░███▒░░░░░░░███████████░░██▒▒░░░░░▓██░▓█░ ██▒ ░░▒█ ░█░███████████████████║
║█████████████████████████▒░░░████▓████████████████▒▒▒▒█▓░░░░░░█▒▓░░█▒▓█▒░░░░░░▒█████████████████████║
║████████████████████████████▒▓████▒▒▓██████████████░▒░▒░░░░▒░░░░█▒█▓▓░▒░░░█▒▓░██████████████████████║
║█████████████████████████████░██████████████████████░░░░░░▒▒▓▒░▒░▒▓░▒▓░▒░░░█▓░▒█████████████████████║
║██████████████████████████████▒███████████████████░░░░░██▒▒░░░▒█▓░░░░░░░░░██▓▓░█████████████████████║
║██████████████████████████████▓▒█████████████████░░░░░█▓░▒▒█░█▒█░░░▓░▓▒░█░░▒█░░▒████████████████████║
║████████████████████████████████ ░▒▒▒▒██▓███████▒▒▒▒█░▓░░▒█▒▓█▒▒▓██░░▒█░░█░▓██▒▒████████████████████║
║████████████████████████████░░▒██████░░░████████▒█▒░█░▓▒░░▒░░░▒███░▓▒░░░█▓░░░█░░████████████████████║
║███████████████████████████████░░▒▒░█▒░█████▒███▒▒█░░░░▒░░░░█░██▓░░▒▒░░░▒█▓░█░▒░▒███████████████████║
║█████████████████████████████░▒█░▓██░█░▓███▒▒▓░▓░▒██▒░░░░▒██▒░▒░▒█░█░▓▒░▓█▒░███░░███████████████████║
║███████████████████████████▓░░██░░█░░░░███▒▒░░░▒░▒██▒░▓███░░▓▓▒░█▓░█▒▓▒▒▒▒█▒░▒██░░▒█████████████████║
║███████████████████████████████████░░░░█▓▒▓▓░░▒█▒░░░▒█▒░███████▓█░█░▒▒░▓░▓▓░░▒█▒█░░░████████████████║
╚════════════════════════════════════════════════════════════════════════════════════════════════════╝
 █████╗ ██████╗  █████╗         ██████╗  ██████╗ ████████╗
██╔══██╗██╔══██╗██╔══██╗        ██╔══██╗██╔═══██╗╚══██╔══╝
███████║██║  ██║███████║        ██████╔╝██║   ██║   ██║   
██╔══██║██║  ██║██╔══██║        ██╔══██╗██║   ██║   ██║   
██║  ██║██████╔╝██║  ██║███████╗██████╔╝╚██████╔╝   ██║   
╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝    ╚═╝   
"@
Write-Host $title

# Prompt the user to drag and drop a file or folder onto the console
Write-Host "Please drag and drop a file onto the console to analyze it"

function Get-LocalCodeAnalysis {
    param(
        [string]$Code
    )

    $lineCount = ($Code -split "`r?`n").Count
    $loopCount = [regex]::Matches($Code, '\b(for|foreach|while)\b').Count
    $nestedLoops = [regex]::IsMatch($Code, '(?s)\b(for|foreach|while)\b.*\{.*\b(for|foreach|while)\b')
    $usesCollection = [regex]::IsMatch($Code, '\b(Dictionary|HashSet|Map|Set)\b')

    $timeComplexity = "O(1)"
    if ($nestedLoops) {
        $timeComplexity = "O(n^2)"
    } elseif ($loopCount -gt 0) {
        $timeComplexity = "O(n)"
    }

    $spaceComplexity = "O(1)"
    if ($usesCollection -or [regex]::IsMatch($Code, '\[\]|new\s+Array|List<')) {
        $spaceComplexity = "O(n)"
    }

    $suggestion = $null
    if ($nestedLoops -and -not $usesCollection) {
        $suggestion = "Consider replacing repeated lookups inside loops with a hash-based lookup structure to reduce runtime."
    }

    return [pscustomobject]@{
        explanation = "Remote analyzer unavailable. Returned a local heuristic estimate from code structure ($lineCount lines, $loopCount loop constructs)."
        timeComplexity = $timeComplexity
        spaceComplexity = $spaceComplexity
        suggestedAlgorithm = $suggestion
    }
}

function Invoke-CodeAnalysis {
    param(
        [string]$Code
    )

    $analysisApiBase = $env:ADA_BOT_ANALYZE_API
    if ([string]::IsNullOrWhiteSpace($analysisApiBase)) {
        $analysisApiBase = "https://api.mdn.com/analyze"
    }

    $encodedCode = [uri]::EscapeDataString([string]$Code)
    $analysisUri = "$analysisApiBase?code=$encodedCode"

    try {
        $response = Invoke-WebRequest -Uri $analysisUri -Method Get -ErrorAction Stop
        if ([string]::IsNullOrWhiteSpace($response.Content)) {
            Write-Host "Remote analysis API returned an empty response. Using local heuristic analysis."
            return Get-LocalCodeAnalysis -Code $Code
        }

        $analysis = $response.Content | ConvertFrom-Json -ErrorAction Stop
        if (-not $analysis) {
            Write-Host "Remote analysis API returned invalid JSON. Using local heuristic analysis."
            return Get-LocalCodeAnalysis -Code $Code
        }

        return $analysis
    } catch {
        Write-Host "Remote analysis unavailable: $($_.Exception.Message)"
        Write-Host "Tip: set ADA_BOT_ANALYZE_API to a valid endpoint. Falling back to local heuristic analysis."
        return Get-LocalCodeAnalysis -Code $Code
    }
}

# Scan the uploaded file for code snippets and analyze them
while ($true) {
    $fileDrop = Read-Host "Drag and drop a file here"
    if (Test-Path $fileDrop) {
        # Indicate to the user that the file is being analyzed
        Write-Host "Analyzing file: $fileDrop"
        # Read the contents of the file
        $fileContent = Get-Content $fileDrop -Raw
        # Use regex to find code snippets in the file
        $codeSnippets = [regex]::Matches($fileContent, '```(.*?)```', [System.Text.RegularExpressions.RegexOptions]::Singleline)
        if ($codeSnippets.Count -eq 0) {
            # No code blocks found, analyze the whole file
            Write-Host "No code blocks found. Analyzing entire file as code."
            $code = $fileContent
            $analysis = Invoke-CodeAnalysis -Code $code
            Write-Host "Analysis:"
            Write-Host "Explanation: " + $analysis.explanation
            Write-Host "Time Complexity: " + $analysis.timeComplexity
            Write-Host "Space Complexity: " + $analysis.spaceComplexity
            if ($analysis.suggestedAlgorithm) {
                Write-Host "Suggested Faster Algorithm: " + $analysis.suggestedAlgorithm
            }
        } else {
            foreach ($snippet in $codeSnippets) {
                $code = $snippet.Groups[1].Value
                Write-Host "Found code snippet:"
                Write-Host $code
                # Try the remote analyzer first, then fallback to local heuristics.
                $analysis = Invoke-CodeAnalysis -Code $code
                Write-Host "Analysis:"
                Write-Host "Explanation: " + $analysis.explanation
                Write-Host "Time Complexity: " + $analysis.timeComplexity
                Write-Host "Space Complexity: " + $analysis.spaceComplexity
                if ($analysis.suggestedAlgorithm) {
                    Write-Host "Suggested Faster Algorithm: " + $analysis.suggestedAlgorithm
                }
            }
        }
    }
}

Pause