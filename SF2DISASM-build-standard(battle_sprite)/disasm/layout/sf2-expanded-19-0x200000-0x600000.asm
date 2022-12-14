
; GAME SECTION 19 : ROM EXPANSION.

        include "data\battles\spritesetentries.asm"
        align $210000
        include "code\specialscreens\title\graphics.asm"    ; Title Screen Graphics
        include "code\specialscreens\suspend\graphics.asm"  ; Suspend String Graphics
        include "code\specialscreens\endkiss\graphics.asm"  ; End Kiss Graphics
        include "code\specialscreens\credits\gamestaff.asm" ; Game Staff        
        include "code\specialscreens\jewelend\graphics.asm" ; Jewel End Graphics
        align $220000
        include "data\graphics\mapsprites\entries.asm"  ; Map sprites
        align $268000
        include "code\common\tech\graphics\specialspritesentries.asm"   ; Special Sprites Entries
        align $270000
        if (EXTENDED_SSF_MAPPER=0)
            include "data\graphics\battles\battlesprites\enemies\entries.asm"   ; Enemy battle sprites
            align $2E0000
            include "data\graphics\battles\battlesprites\allies\entries.asm"    ; Ally battlesprites
        else
            include "data\graphics\battles\weapons\entries.asm"             ; Weapons
            include "data\graphics\battles\weapons\palettes\entries.asm"    ; WeaponPalettes
        endif
        align $320000
        include "data\graphics\battles\backgrounds\entries.asm" ; Backgrounds
        align $380000
        include "data\maps\entries.asm" ; Map entries table
        align $400000
        if (EXTENDED_SSF_MAPPER=1)
            obj $300000
            include "data\graphics\battles\battlesprites\enemies\entries.asm"
            objend
            align $500000
            obj $300000
            include "data\graphics\battles\battlesprites\allies\entries.asm"
            objend
            align $600000 
        endif
