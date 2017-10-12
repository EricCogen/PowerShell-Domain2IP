  #Be Sure To Download: https://ftp.isc.org/isc/bind/9.10.4-P2/

  $bindPath = ""	#EX: c:\users\<myUserName>\BIND\
  $urlPath = ""   #EX: c:\users\<myUserName>\BIND\myListOfURLS.txt
  $savePath = ""	#EX: c:\users\<myUserName>\BIND\domains.txt

  clear
  cd $bindPath\BIND9.10.4-P2.x64\

  $G = 1
  $R = [IO.File]::OpenText($urlPath)
  while ($R.Peek() -ge 0)
  {
    $Domain = $r.ReadLine()
      $Out = host.exe -tA -4 $Domain
      $Out = $Domain + "|" + $Out
      Write-Host $Out
      Add-Content -Path $savePath -Value $Out

  }
  $R.Dispose()
