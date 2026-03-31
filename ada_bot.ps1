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

function Show-AdaBotHeader {
    Clear-Host
    Write-Host $title
    Write-Host "Please drag and drop a file onto the console to analyze it"
}

Show-AdaBotHeader

# Prompt the user to drag and drop a file or folder onto the console

function Get-LanguageInfo {
    param(
        [string]$FilePath,
        [string]$CodeLanguage
    )

    $languageKey = $null
    if (-not [string]::IsNullOrWhiteSpace($CodeLanguage)) {
        $languageKey = $CodeLanguage.Trim().ToLowerInvariant()
    } elseif (-not [string]::IsNullOrWhiteSpace($FilePath)) {
        $languageKey = [System.IO.Path]::GetExtension($FilePath).TrimStart('.').ToLowerInvariant()
    }

    $knownLanguages = @{
        'js' = 'JavaScript'; 'mjs' = 'JavaScript'; 'cjs' = 'JavaScript'; 'jsx' = 'JavaScript';
        'ts' = 'TypeScript'; 'tsx' = 'TypeScript';
        'py' = 'Python'; 'python' = 'Python';
        'ps1' = 'PowerShell'; 'powershell' = 'PowerShell'; 'psm1' = 'PowerShell';
        'sh' = 'Shell'; 'bash' = 'Shell'; 'zsh' = 'Shell'; 'fish' = 'Shell';
        'rb' = 'Ruby'; 'ruby' = 'Ruby';
        'php' = 'PHP';
        'java' = 'Java';
        'cs' = 'C#'; 'csharp' = 'C#';
        'cpp' = 'C++'; 'cc' = 'C++'; 'cxx' = 'C++'; 'hpp' = 'C++';
        'c' = 'C'; 'h' = 'C';
        'go' = 'Go';
        'rs' = 'Rust'; 'rust' = 'Rust';
        'swift' = 'Swift';
        'kt' = 'Kotlin'; 'kts' = 'Kotlin';
        'scala' = 'Scala';
        'r' = 'R';
        'lua' = 'Lua';
        'pl' = 'Perl'; 'pm' = 'Perl';
        'sql' = 'SQL';
        'html' = 'HTML'; 'xml' = 'XML'; 'svg' = 'XML';
        'css' = 'CSS'; 'scss' = 'SCSS'; 'sass' = 'Sass'; 'less' = 'Less';
        'json' = 'JSON'; 'yaml' = 'YAML'; 'yml' = 'YAML'; 'toml' = 'TOML';
        'md' = 'Markdown'; 'markdown' = 'Markdown';
    }

    $languageName = $knownLanguages[$languageKey]
    if ([string]::IsNullOrWhiteSpace($languageName)) {
        if ([string]::IsNullOrWhiteSpace($languageKey)) {
            $languageName = 'Unknown'
        } else {
            $languageName = $languageKey.ToUpperInvariant()
        }
    }

    return [pscustomobject]@{
        key = $languageKey
        name = $languageName
    }
}

function Remove-CodeComments {
    param(
        [string]$Code
    )

    $withoutMarkupComments = [regex]::Replace($Code, '(?s)<!--.*?-->', '')
    $withoutSlashBlockComments = [regex]::Replace($withoutMarkupComments, '(?s)/\*.*?\*/', '')
    $withoutTripleQuotedStrings = [regex]::Replace($withoutSlashBlockComments, '(?s)""".*?"""|''''.*?''''', '')
    $withoutSlashLineComments = [regex]::Replace($withoutTripleQuotedStrings, '(?m)(^|\s)//.*$', '$1')
    $withoutHashLineComments = [regex]::Replace($withoutSlashLineComments, '(?m)(^|\s)#.*$', '$1')
    $withoutSqlLineComments = [regex]::Replace($withoutHashLineComments, '(?m)(^|\s)--.*$', '$1')
    return [regex]::Replace($withoutSqlLineComments, '(?m)^\s*;.*$', '')
}

function Test-IsLoopLine {
    param(
        [string]$Line
    )

    return [regex]::IsMatch($Line, '(?im)^\s*(for(each)?|while|until|repeat)\b') -or
        [regex]::IsMatch($Line, '(?im)\bfor\b.+\bin\b') -or
        [regex]::IsMatch($Line, '(?im)\bforeach\b')
}

function Test-HasNestedLoops {
    param(
        [string]$Code
    )

    $cleanCode = Remove-CodeComments -Code $Code
    $lines = $cleanCode -split "`r?`n"
    $braceDepth = 0
    $loopBlockDepths = [System.Collections.Generic.List[int]]::new()
    $indentLoopDepths = [System.Collections.Generic.List[int]]::new()
    $endKeywordLoopDepth = 0

    foreach ($line in $lines) {
        $trimmedLine = $line.Trim()
        if ([string]::IsNullOrWhiteSpace($trimmedLine)) {
            continue
        }

        $currentIndent = ($line.Length - $line.TrimStart().Length)

        for ($index = $loopBlockDepths.Count - 1; $index -ge 0; $index--) {
            if ($loopBlockDepths[$index] -gt $braceDepth) {
                $loopBlockDepths.RemoveAt($index)
            }
        }

        for ($index = $indentLoopDepths.Count - 1; $index -ge 0; $index--) {
            if ($currentIndent -le $indentLoopDepths[$index]) {
                $indentLoopDepths.RemoveAt($index)
            }
        }

        if ([regex]::IsMatch($trimmedLine, '^(end|done|fi)\b')) {
            if ($endKeywordLoopDepth -gt 0) {
                $endKeywordLoopDepth--
            }
            continue
        }

        $lineHasLoop = Test-IsLoopLine -Line $trimmedLine
        if ($lineHasLoop -and ($loopBlockDepths.Count -gt 0 -or $indentLoopDepths.Count -gt 0 -or $endKeywordLoopDepth -gt 0)) {
            return $true
        }

        $openBraceCount = [regex]::Matches($line, '\{').Count
        if ($lineHasLoop -and $openBraceCount -gt 0) {
            $loopBlockDepths.Add($braceDepth + 1)
        } elseif ($lineHasLoop -and $trimmedLine -match ':\s*$') {
            $indentLoopDepths.Add($currentIndent)
        } elseif ($lineHasLoop -and $trimmedLine -match '\b(do|then)\b\s*$') {
            $endKeywordLoopDepth++
        }

        $braceDepth += $openBraceCount
        $braceDepth -= [regex]::Matches($line, '\}').Count
        if ($braceDepth -lt 0) {
            $braceDepth = 0
        }
    }

    return $false
}

function Get-CodeFacts {
    param(
        [string]$Code,
        [string]$FilePath,
        [string]$CodeLanguage
    )

    $languageInfo = Get-LanguageInfo -FilePath $FilePath -CodeLanguage $CodeLanguage
    $cleanCode = Remove-CodeComments -Code $Code
    $lines = $cleanCode -split "`r?`n"
    $nonEmptyLines = @($lines | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })
    $loopCount = [regex]::Matches($cleanCode, '(?im)^\s*(for(each)?|while|until|repeat)\b|\bfor\b.+\bin\b').Count
    $nestedLoops = Test-HasNestedLoops -Code $cleanCode
    $usesHashLookup = [regex]::IsMatch($cleanCode, '(?im)\b(new\s+Map|new\s+Set|new\s+HashMap|new\s+Hashtable|Dictionary<|HashSet<|HashMap<|Hashtable<|unordered_map<|unordered_set<|dict\s*\(|set\s*\(|Map\s*<|Set\s*<)') -or
        [regex]::IsMatch($cleanCode, '(?im)\b(const|let|var)\s+\w+\s*=\s*\{\s*\}') -or
        [regex]::IsMatch($cleanCode, '(?im)\b\w+\s*=\s*\{\s*\}') -or
        [regex]::IsMatch($cleanCode, '(?im)\b\w+\.(hasOwnProperty|containsKey|contains|has|get|set)\s*\(') -or
        [regex]::IsMatch($cleanCode, '(?im)\b(hash|dict|map|set|lookup|memo|cache)\b')
    $createsAuxiliaryArray = [regex]::IsMatch($cleanCode, '(?im)\b(const|let|var)\s+\w+\s*=\s*\[\s*\]') -or
        [regex]::IsMatch($cleanCode, '(?im)\b\w+\s*=\s*\[\s*\]') -or
        [regex]::IsMatch($cleanCode, '(?im)\bnew\s+Array\s*\(') -or
        [regex]::IsMatch($cleanCode, '(?im)\b(new\s+List|new\s+Vector|std::vector|ArrayList<|List<|Vec<)') -or
        [regex]::IsMatch($cleanCode, '(?im)\bArray\.from\s*\(') -or
        [regex]::IsMatch($cleanCode, '(?im)\.(map|filter|flatMap|slice|concat|collect|where|select)\s*\(')
    $usesSort = [regex]::IsMatch($cleanCode, '(?im)\.sort\s*\(') -or
        [regex]::IsMatch($cleanCode, '(?im)\bsorted\s*\(') -or
        [regex]::IsMatch($cleanCode, '(?im)\borderby\b')
    $usesLinearSearchCall = [regex]::IsMatch($cleanCode, '(?im)\.(includes|indexOf|lastIndexOf|find|findIndex|some|every|contains|containsKey|first|any)\s*\(') -or
        [regex]::IsMatch($cleanCode, '(?im)\bin\s+\w+')
    $looksLikeTwoSum = [regex]::IsMatch($Code, '(?im)two\s*sum|target') -and [regex]::IsMatch($cleanCode, '(?im)return\s+\[.*?\]')
    $passDescription = 'straight-line logic'
    if ($loopCount -gt 1) {
        $passDescription = 'multiple linear passes'
    } elseif ($loopCount -eq 1) {
        $passDescription = 'single-pass iteration'
    }

    return [pscustomobject]@{
        language = $languageInfo.name
        lineCount = $lines.Count
        nonEmptyLineCount = $nonEmptyLines.Count
        loopCount = $loopCount
        nestedLoops = $nestedLoops
        usesHashLookup = $usesHashLookup
        createsAuxiliaryArray = $createsAuxiliaryArray
        usesSort = $usesSort
        usesLinearSearchCall = $usesLinearSearchCall
        looksLikeTwoSum = $looksLikeTwoSum
        passDescription = $passDescription
    }
}

function Get-LocalAnalysisSummary {
    param(
        [pscustomobject]$Facts
    )

    $patterns = @()
    if ($Facts.nestedLoops) {
        $patterns += "nested loops"
    } elseif ($Facts.loopCount -gt 0) {
        $patterns += $Facts.passDescription
    }

    if ($Facts.usesHashLookup) {
        $patterns += "hash-based lookups"
    }

    if ($Facts.usesSort) {
        $patterns += "sorting"
    }

    if ($Facts.createsAuxiliaryArray) {
        $patterns += "extra array allocation"
    }

    if ($patterns.Count -eq 0) {
        $patterns += "straight-line logic"
    }

    return "Local pattern-based analysis for $($Facts.language) on $($Facts.nonEmptyLineCount) non-empty lines. Detected: $($patterns -join ', ')."
}

function Get-LocalCodeAnalysis {
    param(
        [string]$Code,
        [string]$FilePath,
        [string]$CodeLanguage
    )

    $facts = Get-CodeFacts -Code $Code -FilePath $FilePath -CodeLanguage $CodeLanguage

    $timeComplexity = "O(1)"
    if ($facts.nestedLoops) {
        $timeComplexity = "O(n^2)"
    } elseif ($facts.usesSort) {
        $timeComplexity = "O(n log n)"
    } elseif ($facts.loopCount -gt 0 -or $facts.usesLinearSearchCall) {
        $timeComplexity = "O(n)"
    }

    $spaceComplexity = "O(1)"
    if ($facts.usesHashLookup -or $facts.createsAuxiliaryArray) {
        $spaceComplexity = "O(n)"
    }

    $explanation = "This code appears to do constant work regardless of input size."
    if ($facts.nestedLoops) {
        $explanation = "This code uses nested iteration, so the amount of work grows with the number of element pairs it checks. That makes the runtime scale quadratically as input grows."
    } elseif ($facts.usesSort) {
        $explanation = "This code is dominated by a sort operation. Sorting typically costs O(n log n), which outweighs a single pass before or after the sort."
    } elseif ($facts.loopCount -gt 1 -and $facts.usesHashLookup) {
        $explanation = "This code makes a small number of separate passes through the input and uses hash-based lookups for fast membership or index checks. Multiple linear passes still add up to linear time overall."
    } elseif ($facts.loopCount -gt 0 -and $facts.usesHashLookup) {
        $explanation = "This code makes one pass through the input and relies on hash-based lookups for fast membership or index checks. That keeps the total runtime linear for typical implementations."
    } elseif ($facts.loopCount -gt 0 -or $facts.usesLinearSearchCall) {
        $explanation = "This code performs a single scan over the input, so the total work grows roughly in proportion to the input size."
    }

    if ($spaceComplexity -eq "O(n)" -and $facts.usesHashLookup) {
        $explanation += " It also allocates a lookup structure whose size grows with the input, which is why the space cost is linear."
    } elseif ($spaceComplexity -eq "O(n)" -and $facts.createsAuxiliaryArray) {
        $explanation += " It builds additional arrays during processing, so extra memory usage also grows with the input."
    } else {
        $explanation += " It does not appear to allocate auxiliary storage that grows with the input, so extra space stays constant."
    }

    $tip = $null
    if ($facts.nestedLoops -and -not $facts.usesHashLookup) {
        if ($facts.looksLikeTwoSum) {
            $tip = "If this is a two-sum style problem, store seen values in a Map or object keyed by value so you can find complements in O(1) average time and reduce runtime to O(n)."
        } else {
            $tip = "If the inner loop is only searching for matches or duplicates, replace the repeated scan with a hash-based lookup structure to reduce runtime."
        }
    } elseif ($facts.usesHashLookup -and $facts.looksLikeTwoSum) {
        $tip = "This already uses the right idea for two-sum: a hash lookup. You can tighten it further by merging the two passes into one loop that checks for the complement before storing the current value."
    } elseif ($facts.usesSort) {
        $tip = "Sorting can simplify the logic, but it usually makes the solution O(n log n). If you need linear time, prefer a hash lookup when the problem allows it."
    } elseif ($facts.loopCount -eq 0) {
        $tip = "This already looks inexpensive. Focus on correctness and readability unless this code runs extremely often."
    }

    return [pscustomobject]@{
        language = $facts.language
        summary = Get-LocalAnalysisSummary -Facts $facts
        explanation = $explanation
        timeComplexity = $timeComplexity
        spaceComplexity = $spaceComplexity
        tip = $tip
        usedRemoteAnalysis = $false
    }
}

function Convert-ToAnalysisResult {
    param(
        [object]$Analysis,
        [bool]$UsedRemoteAnalysis
    )

    $tip = $Analysis.tip
    if (-not $tip -and $Analysis.suggestedAlgorithm) {
        $tip = $Analysis.suggestedAlgorithm
    }

    $summary = $Analysis.summary
    if ([string]::IsNullOrWhiteSpace($summary)) {
        if ($UsedRemoteAnalysis) {
            $summary = "Remote analyzer response received."
        } else {
            $summary = "Local analysis completed."
        }
    }

    return [pscustomobject]@{
        language = $Analysis.language
        summary = $summary
        explanation = $Analysis.explanation
        timeComplexity = $Analysis.timeComplexity
        spaceComplexity = $Analysis.spaceComplexity
        tip = $tip
        usedRemoteAnalysis = $UsedRemoteAnalysis
    }
}

function Write-AnalysisResult {
    param(
        [pscustomobject]$Analysis,
        [string]$FilePath,
        [string]$AnalysisType
    )

    Write-Host "Analyzing File: $FilePath"
    Write-Host "Analysis Type: $AnalysisType"
    Write-Host "Language: $($Analysis.language)"
    Write-Host "Analysis: $($Analysis.summary)"
    Write-Host "Explanation: $($Analysis.explanation)"
    Write-Host "Time Complexity: $($Analysis.timeComplexity)"
    Write-Host "Space Complexity: $($Analysis.spaceComplexity)"
    Write-Host "Tip: $($Analysis.tip)"
}

function Invoke-CodeAnalysis {
    param(
        [string]$Code,
        [string]$FilePath,
        [string]$CodeLanguage
    )

    $analysisApiBase = $env:ADA_BOT_ANALYZE_API
    if ([string]::IsNullOrWhiteSpace($analysisApiBase)) {
        return Get-LocalCodeAnalysis -Code $Code -FilePath $FilePath -CodeLanguage $CodeLanguage
    }

    $baseUri = $null
    if (-not [uri]::TryCreate($analysisApiBase, [System.UriKind]::Absolute, [ref]$baseUri)) {
        return Get-LocalCodeAnalysis -Code $Code -FilePath $FilePath -CodeLanguage $CodeLanguage
    }

    $builder = [System.UriBuilder]::new($baseUri)
    $encodedCode = [uri]::EscapeDataString([string]$Code)
    if ([string]::IsNullOrWhiteSpace($builder.Query)) {
        $builder.Query = "code=$encodedCode"
    } else {
        $existingQuery = $builder.Query.TrimStart('?')
        $builder.Query = "$existingQuery&code=$encodedCode"
    }

    $analysisUri = $builder.Uri.AbsoluteUri

    try {
        $response = Invoke-WebRequest -Uri $analysisUri -Method Get -ErrorAction Stop
        if ([string]::IsNullOrWhiteSpace($response.Content)) {
            return Get-LocalCodeAnalysis -Code $Code -FilePath $FilePath -CodeLanguage $CodeLanguage
        }

        $analysis = $response.Content | ConvertFrom-Json -ErrorAction Stop
        if (-not $analysis) {
            return Get-LocalCodeAnalysis -Code $Code -FilePath $FilePath -CodeLanguage $CodeLanguage
        }

        return Convert-ToAnalysisResult -Analysis $analysis -UsedRemoteAnalysis $true
    } catch {
        return Get-LocalCodeAnalysis -Code $Code -FilePath $FilePath -CodeLanguage $CodeLanguage
    }
}

# Scan the uploaded file for code snippets and analyze them
while ($true) {
    $fileDrop = (Read-Host "Drag and drop a file here").Trim()
    if ($fileDrop.StartsWith('"') -and $fileDrop.EndsWith('"')) {
        $fileDrop = $fileDrop.Trim('"')
    }

    if (Test-Path $fileDrop) {
        Show-AdaBotHeader
        # Indicate to the user that the file is being analyzed
        Write-Host "Analyzing file: $fileDrop"
        # Read the contents of the file
        $fileContent = Get-Content $fileDrop -Raw
        # Use regex to find code snippets in the file
        $codeSnippets = [regex]::Matches($fileContent, '```([^\r\n`]*)\r?\n(.*?)```', [System.Text.RegularExpressions.RegexOptions]::Singleline)
        if ($codeSnippets.Count -eq 0) {
            # No code blocks found, analyze the whole file
            Write-Host "No code blocks found. Analyzing entire file as code."
            $code = $fileContent
            $analysis = Invoke-CodeAnalysis -Code $code -FilePath $fileDrop
            Write-AnalysisResult -Analysis $analysis -FilePath $fileDrop -AnalysisType "Entire File"
        } else {
            foreach ($snippet in $codeSnippets) {
                $snippetLanguage = $snippet.Groups[1].Value.Trim()
                $code = $snippet.Groups[2].Value
                Write-Host "Found code snippet:"
                Write-Host $code
                # Try the remote analyzer first, then fallback to local heuristics.
                $analysis = Invoke-CodeAnalysis -Code $code -FilePath $fileDrop -CodeLanguage $snippetLanguage
                Write-AnalysisResult -Analysis $analysis -FilePath $fileDrop -AnalysisType "Code Blocks"
            }
        }
    } else {
        Show-AdaBotHeader
        Write-Host "Path not found: $fileDrop"
    }
}

Pause