# breakout_cpp_template_61

* สำหรับนิสิตที่จะใช้ภาษา C++ ในการพัฒนาโปรเจค รายวิชา 01418113

## การติดตั้ง

### ติดตั้ง MSYS2 64-Bit (ระบบปฏิบัติการ Windows)

1. นิสิตสามารถเข้าไปยัง <https://msys2.github.io/> เพื่อดาวน์โหลดโปรแกรม MSYS2 installer สำหรับเครื่อง 64-Bit ให้ลง msys2-x86_64-xxxxxxxx.exe

2. เมื่อติดตั้งโปรแกรม MSYS2 เรียบร้อยแล้ว ให้รันคำสั่งต่อไปนี้ ด้วย MSYS2  
    $ pacman -S git man-pages-posix make vim  
    $ pacman -S mingw-w64-x86_64-gcc  
    $ pacman -S mingw-w64-x86_64-SDL2  
    $ pacman -S mingw-w64-x86_64-SDL2_gfx  
    $ pacman -S mingw-w64-x86_64-SDL2_image  
    $ pacman -S mingw-w64-x86_64-SDL2_mixer  
    $ pacman -S mingw-w64-x86_64-SDL2_net  
    $ pacman -S mingw-w64-x86_64-SDL2_ttf  

## การ compile และ run

เมื่อต้องการ compile project ให้ใช้คำสั่งต่อไปนี้ (ผ่าน MSYS2 เท่านั้น)
    $ make  
จะได้ไฟล์ cp_function.o, main.o และ breakout.exe

คำสั่งต่อไปนี้ (ผ่าน MSYS2 เท่านั้น) ใช้ลบไฟล์ .o และ .exe ทั้งหมด
    $ make clean

เมื่อต้องการรันโปรเจค ให้ใช้คำสั่ง (ใช้ command line interface ใดก็ได้)
    $ ./breakout.exe  
การรันที่ถูกต้องในครั้งแรก จะต้องปรากฏหน้าต่างโปรแกรมที่มีลูกบอลเคลื่อนที่ได้
