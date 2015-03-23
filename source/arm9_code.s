;;-----------------------------------------------;;
;;   firmlaunchax - arm9 kernel code execution   ;;
;;       on mset (system settings) exploit.      ;;
;;             FOR 4.X CONSOLES ONLY             ;;
;;   -Roxas75                                    ;;
;;-----------------------------------------------;;

.nds
.create "build/arm9_code.bin", 0x23F00000
.arm
.align 4

_start:
    flush_screens:
        ldr r0, =0x20000000
        ldr r1, =0x21000000
        ldr r2, =0x77777777
        loop:
            str r2, [r0]
            add r0, r0, #4
            cmp r0, r1
            blt loop

    infinite_loop:
        b infinite_loop

.pool
.close
