## ExecutionPolicy
- Restricted
	Skrip tidak akan berjalan. Periode. (Setingan awal)
- RemoteSigned
	Skrip yang dibuat secara lokal akan berjalan. Skrip yang dibuat di komputer lain tidak akan berjalan kecuali jika ditandatangani oleh penerbit tepercaya.
- AllSigned
	Skrip hanya akan berjalan jika ditandatangani oleh penerbit tepercaya (termasuk skrip yang dibuat secara lokal).
- Unrestricted
	Semua skrip akan berjalan terlepas dari siapa yang membuatnya dan apakah skrip tersebut ditandatangani atau tidak. Dan jika menjalankan skrip yang tidak ditandatangani yang diunduh dari
       internet, Anda akan dimintai izin sebelum skrip dijalankan.
	
============================================================================================

~~~
PS C:\WINDOWS\system32> Set-ExecutionPolicy Unrestricted

Execution Policy Change
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose
you to the security risks described in the about_Execution_Policies help topic at
https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to change the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): Y
PS C:\WINDOWS\system32> get-executionpolicy -list

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser       Undefined
 LocalMachine    Unrestricted
~~~