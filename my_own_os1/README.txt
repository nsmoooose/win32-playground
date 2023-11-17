Detta är ett intressant grej.

Här kompilerar vi ett "hello world" program skrivet i assembler.
Vi startar programmet direkt i en virtuell maskin utan windows eller
Linux.

Så vad händer igentligen:

  * Du startar en virtuell dator.
  * BIOS letar på hårddisken efter en boot sektor. Detta är ett 512 byte stort
    program som normalt laddar Windows eller Linux. I detta fall hittar den
    vårat program istället.



Installera verktyg för att köra en virtuell maskin:

  pacman -S mingw-w64-ucrt-x86_64-qemu

Installera så att du kan kompilera assembler:

  pacman -S nasm


Kompilera:

  make

Köra programmet genom att starta en virtuell maskin.

  make run
