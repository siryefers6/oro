#NoTrayIcon
#NoEnv
#SingleInstance Force
FormatTime, dia, %A_Now%, WDay

if (dia != 6){
fechaSalida += 1, days
fechaEntrega += 2, days
fechaSalida136 += 1, days
fechaEntrega136 += 2, days
}
else{
fechaSalida += 3, days
fechaEntrega += 4, days
fechaSalida136 += 1, days
fechaEntrega136 += 3, days
}
FormatTime, fechaSalida, %fechaSalida%, dd MMM yyyy
FormatTime, fechaEntrega, %fechaEntrega%, dd MMM yyyy
FormatTime, fechaSalida136, %fechaSalida136%, dd MMM yyyy
FormatTime, fechaEntrega136, %fechaEntrega136%, dd MMM yyyy
fechaSalida := StrReplace(fechaSalida, ".", "")
fechaEntrega := StrReplace(fechaEntrega, ".", "")
fechaSalida136 := StrReplace(fechaSalida136, ".", "")
fechaEntrega136 := StrReplace(fechaEntrega136, ".", "")
return

::z110::
;Fecha de entrega
sendinput %fechaEntrega%{tab 2}
;Fecha de salida
sendinput %fechaSalida%{tab 2}
;Medio de transporte
sendinput {down}{tab}
;Tipo de transporte
sendinput {down 7}{tab}
;Tipo de carga
sendinput {down}{tab}
;Tipo de bulto
sendinput {down}{tab}
;Placa patente
sendinput JYJK70{tab}
return

::z110q::
;Fecha de entrega
sendinput %fechaEntrega%{tab 2}
;Fecha de salida
sendinput %fechaSalida%{tab 2}
;Medio de transporte
sendinput {down}{tab}
;Tipo de transporte
sendinput {down 7}{tab}
;Tipo de carga
sendinput {down 2}{tab}
;Tipo de bulto
sendinput {down}{tab}
;Placa patente
sendinput JYJK70{tab}
return

::z122::
;Fecha de entrega
sendinput %fechaEntrega%{tab 2}
;Fecha de salida
sendinput %fechaSalida%{tab 2}
;Medio de transporte
sendinput {down}{tab}
;Tipo de transporte
sendinput {down 5}{tab}
;Tipo de carga
sendinput {down}{tab}
;Tipo de bulto
sendinput {down}{tab}
;Placa patente
sendinput RXWY89-5{tab}
return

::z124::
;Fecha de entrega
sendinput %fechaEntrega%{tab 2}
;Fecha de salida
sendinput %fechaSalida%{tab 2}
;Medio de transporte
sendinput {down}{tab}
;Tipo de transporte
sendinput {down 5}{tab}
;Tipo de carga
sendinput {down}{tab}
;Tipo de bulto
sendinput {down}{tab}
;Placa patente
sendinput RYTY65-1{tab}
return

::z136::
;Fecha de entrega
sendinput %fechaEntrega136%{tab 2}
;Fecha de salida
sendinput %fechaSalida136%{tab 2}
;Medio de transporte
sendinput {down}{tab}
;Tipo de transporte
sendinput {down 8}{tab}
;Tipo de carga
sendinput {down}{tab}
;Tipo de bulto
sendinput {down}{tab}
;Placa patente
sendinput RWXY98{tab}
return

PgDn::
{
Sendinput {F3}
Sendinput {F3}
Sendinput {F10}
Sendinput s
Sendinput s
Sendinput s
Sendinput s
Sendinput {enter}
Sendinput {enter}
}
Return

PgUp:: 
{
Sendinput {F3}
Sendinput {F3}
Sendinput Y
Sendinput {F10}
Sendinput s
Sendinput s
Sendinput s
Sendinput s
Sendinput {enter}
Sendinput {enter}
}
Return

F9::
{
oSM := ComObjCreate("com.sun.star.ServiceManager")
oDesk := oSM.createInstance("com.sun.star.frame.Desktop")
oDoc := oDesk.CurrentComponent("private:factory/swriter", "_blank", Array)
oSheet := oDoc.getSheets().getByIndex(0)
oCell := oSheet.getCellByPosition(9,6)
oCell2 := oSheet.getCellByPosition(7,16)
sendinput % oCell.getString()
sendinput {F3}
sendinput % oCell2.getString()
}
return

F12::
{
oSM := ComObjCreate("com.sun.star.ServiceManager")
oDesk := oSM.createInstance("com.sun.star.frame.Desktop")
oDoc := oDesk.CurrentComponent("private:factory/swriter", "_blank", Array)
oSheet := oDoc.getSheets().getByIndex(1)
oCell := oSheet.getCellByPosition(9,6)
oCell2 := oSheet.getCellByPosition(7,16)
sendinput % oCell.getString()
sendinput {F3}
sendinput % oCell2.getString()
}
return

F11::
{
oSM := ComObjCreate("com.sun.star.ServiceManager")
oDesk := oSM.createInstance("com.sun.star.frame.Desktop")
oDoc := oDesk.CurrentComponent("private:factory/swriter", "_blank", Array)
oSheet := oDoc.getSheets().getByIndex(1)
oCell := oSheet.getCellByPosition(9,6)
oCell2 := oSheet.getCellByPosition(8,16)
sendinput % oCell.getString()
sendinput {F3}
sendinput % oCell2.getString()
}
return

!1::
SendInput falta orden de compra{TAB}Buen día.{enter}por favor enviar orden de compra del pedido:{enter}{enter}Gracias.
return


Pause::process, close, AutoHotkey.exe

^+::
sendInput .Mas123456789#
return



