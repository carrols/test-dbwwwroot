echo "install.bat worked" >C:/worked.txt

c:
cd \inetpub\wwwroot

powershell "$o=Get-Content appsettings.json | ConvertFrom-Json ; $o.DemoConfig.serverName = $env:computerName ; $o.DemoConfig.DbCon = \"Server=$Env:DB_HOSTNAME;Database=$Env:DB_DATABASE;User Id=$Env:DB_USERNAME;Password=$Env:DB_PASSWORD;\" ; $o | ConvertTo-Json | set-content appsettings.json"
