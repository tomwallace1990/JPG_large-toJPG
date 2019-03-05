@PowerShell -ExecutionPolicy Bypass -Command Invoke-Expression $('$args=@(^&{$args} %*);'+[String]::Join(';',(Get-Content '%~f0') -notmatch '^^@PowerShell.*EOF$')) & goto :EOF

Get-ChildItem -Filter *.jpg_large | Rename-Item -NewName {[System.IO.Path]::ChangeExtension($_.Name, ".jpg")}