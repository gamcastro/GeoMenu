
function Start-Browser {
    param(
    [string]$Url
    )
    & "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" $Url
}

function Start-App {
    param(
        [string]$Path
    )
    &"$Path" 
}

function Start-VSCode {
    Start-App -Path "C:\Users\029342881104\AppData\Local\Programs\Microsoft VS Code\Code.exe" 
}

function Start-VisualStudio {
    Start-App -Path "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe"  
}

function Start-SQLDeveloper {
   Start-App -Path "C:\app\sqldeveloper\sqldeveloper.exe"
}

function Start-VNC {
    Start-App -Path "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe"
}

function Start-FortClient {
    Start-App -Path "C:\Program Files\Fortinet\FortiClient\FortiClient.exe"
}

function Start-Word {
    Start-App -Path "C:\Program Files\Microsoft Office\Office16\WINWORD.EXE"
}

function Start-Excel {
    Start-App -Path "C:\Program Files\Microsoft Office\Office16\EXCEL.EXE"
}

function Start-NotepadPlus {
    Start-App -Path "C:\Program Files\Notepad++\notepad++.exe"
}

function Start-PowerBI {

}
function Invoke-GEOMenu {
    param(
        [string]$Opcao
    )
    Clear-Host
    $title = "Menu de Ferramentas"
    $menuwidth = 30
    [int]$pad = ($menuwidth/2) + ($title.Length/2)
    $menu = @"

    1.  Intranet
    2.  Helpdesk Atendente
    3.  Helpdesk Abrir Chamado
    4.  Jasper Reports
    5.  VsCode
    6.  Visual Studio
    7.  SqlDeveloper
    8.  VNC
    9.  Fortinet
    10. Word
    11. Excel
    12. Notepad++    

"@
  Write-Host ($title.PadLeft($pad)) -ForegroundColor Cyan
  Write-Host $menu -ForegroundColor Yellow
  [int]$r = Read-Host "Selecione uma opção: "

  switch ($r){
    1 {
        Start-Browser http://intranet
      }
    2{
        Start-Browser http://helpdesk.tre-ma.gov.br/otrs/index.pl
    }
    3 {
        Start-Browser http://helpdesk.tre-ma.gov.br/otrs/customer.pl
    }
    4{
        Start-Browser http://10.11.1.125:8080/jasperserver/login

    }
    5 {
        Start-VSCode
    }
    6{
        Start-VisualStudio
    }
    7{
        Start-SQLDeveloper
    }
    8{
        Start-VNC
    }
    9{
        Start-FortClient
    }
    10 {
        Start-Word  }
  11 {
      Start-Excel
  }
  12 {
      Start-NotepadPlus
  }
}
}