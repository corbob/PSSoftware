#region import modules
$ThisModule = "$($MyInvocation.MyCommand.Path -replace '\.Tests\.ps1$', '').psd1"
$ThisModuleName = (($ThisModule | Split-Path -Leaf) -replace '\.psd1')
Get-Module -Name $ThisModuleName -All | Remove-Module -Force

Import-Module -Name $ThisModule -Force -ErrorAction Stop
#endregion

describe 'Module-level tests' {
	
	it 'should validate the module manifest' {
	
		{ Test-ModuleManifest -Path $ThisModule -ErrorAction Stop } | should not throw
	}

	it 'should pass all error-level script analyzer rules' {
		Invoke-ScriptAnalyzer -Path $PSScriptRoot -Severity Error | should benullorempty
	}

}

InModuleScope PSSoftware {
	
}

describe 'Test-InstalledSoftware' {
	it 'should return Bool type' {
		Test-InstalledSoftware -Name 'Microsoft*' | Should Beoftype [Bool]
	}
	it 'should return False for obvious non-installed software' {
		Test-InstalledSoftware -Name 'ASLKDJFWEtrlwdf' | should befalse
	}
}

describe 'Get-InstalledSoftware' {
	it 'should return PSObject type' {
		Get-InstalledSoftware -name 'Microsoft*' | should beoftype [System.Management.Automation.PSObject]
	}
	it 'should return null or empty for garbage entry' {
		Get-InstalledSoftware -Name 'ASLKDJFWEtrlwdf' | should benullorempty
	}
}

describe 'New-TempFile' {
	$file = New-TempFile
	it 'should return FileInfo type' {
		$file | should beoftype [System.IO.FileInfo]
	}
	it 'file should exist' {
		Test-Path $file | should betrue
	}
	Remove-Item $file
}