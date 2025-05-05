#Requires AutoHotkey v2.0.2
#SingleInstance Force

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

; Close & Minimize
!+w::Komorebic("close")                          ; Alt+Shift+W closes the focused window
!m::Komorebic("minimize")                        ; Alt+M minimizes the focused window

; Focus windows with Win+h/j/k/l
#h::Komorebic("focus left")                      ; Win+H focuses the window to the left
#j::Komorebic("focus down")                      ; Win+J focuses the window below
#k::Komorebic("focus up")                        ; Win+K focuses the window above
#l::Komorebic("focus right")                     ; Win+L focuses the window to the right

; Cycle focus
!n::Komorebic("cycle-focus next")                ; Alt+N cycles focus to the next window
!p::Komorebic("cycle-focus previous")            ; Alt+P cycles focus to the previous window

; Move windows with Win+Shift+h/j/k/l
#+h::Komorebic("move left")                      ; Win+Shift+H moves window left
#+j::Komorebic("move down")                      ; Win+Shift+J moves window down
#+k::Komorebic("move up")                        ; Win+Shift+K moves window up
#+l::Komorebic("move right")                     ; Win+Shift+L moves window right

; Resize windows
!=::Komorebic("resize-axis horizontal increase")  ; Alt+= increases width
!-::Komorebic("resize-axis horizontal decrease")   ; Alt+- decreases width
!0::Komorebic("resize-axis vertical increase")    ; Alt+] increases height
!9::Komorebic("resize-axis vertical decrease")    ; Alt+[ decreases height

; Flip layout orientation
!x::Komorebic("flip-layout horizontal")          ; Alt+X flips layout horizontally
!z::Komorebic("flip-layout vertical")            ; Alt+Z flips layout vertically

; Switch to workspaces 0–2
!1::Komorebic("focus-workspace 0")               ; Alt+1 switches to workspace 0
!2::Komorebic("focus-workspace 1")               ; Alt+2 switches to workspace 1
!3::Komorebic("focus-workspace 2")               ; Alt+3 switches to workspace 2

; Move window to workspaces 0–2
!+1::Komorebic("move-to-workspace 0")            ; Alt+Shift+1 moves window to workspace 0
!+2::Komorebic("move-to-workspace 1")            ; Alt+Shift+2 moves window to workspace 1
!+3::Komorebic("move-to-workspace 2")            ; Alt+Shift+3 moves window to workspace 2

; Move to next/previous workspace
^!n::Komorebic("focus-workspace next")           ; Ctrl+Alt+N moves to next workspace
^!p::Komorebic("focus-workspace previous")       ; Ctrl+Alt+P moves to previous workspace

; Cycle between monitors
!+n::Komorebic("cycle-monitor next")             ; Alt+Shift+N cycles to next monitor
!+p::Komorebic("cycle-monitor previous")         ; Alt+Shift+P cycles to previous monitor

; Move window to another monitor
^!+n::Komorebic("cycle-move-to-monitor next")    ; Ctrl+Alt+Shift+N moves window to next monitor
^!+p::Komorebic("cycle-move-to-monitor previous") ; Ctrl+Alt+Shift+P moves window to previous monitor

