param (
    [string]$PathToVariablesFile = "$PWD/vars/globals.yml"
)

try {
    $varsFilePath = Resolve-Path -Path $PathToVariablesFile -ErrorAction Stop
}
catch {
    Write-Error -Message 'Global variables file not found.'
    exit
}

& docker run --rm -it -v "$( $varsFilePath.Path ):/deploy/vars/globals.yml" netappdeploy/deploy
