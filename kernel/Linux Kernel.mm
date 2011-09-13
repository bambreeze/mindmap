<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1314436073487" ID="ID_1195057024" MODIFIED="1314436088769" TEXT="Linux Kernel">
<node CREATED="1314436092630" ID="ID_1157985821" MODIFIED="1315906681478" POSITION="right" TEXT="Process Management">
<node CREATED="1315906710224" ID="ID_1707237907" MODIFIED="1315920045187">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct task_struct</b>
    </p>
    <p>
      (include/linux/sched.h)
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1315914103874" ID="ID_398479359" MODIFIED="1315919402591" TEXT="volatile long state;">
<node CREATED="1315914353433" ID="ID_1933197825" MODIFIED="1315914364977" TEXT="TASK_RUNNING"/>
<node CREATED="1315914365862" ID="ID_1415384225" MODIFIED="1315914375212" TEXT="TASK_INTERRUPTIBLE"/>
<node CREATED="1315914376062" ID="ID_1275568405" MODIFIED="1315914386584" TEXT="TASK_UNINTERRUPTIBLE"/>
<node CREATED="1315914414290" ID="ID_1327507856" MODIFIED="1315914416204" TEXT="..."/>
</node>
<node CREATED="1315917802230" ID="ID_533218755" MODIFIED="1315918219425" TEXT="unsigned int flags;"/>
<node CREATED="1315914126372" ID="ID_1983933720" MODIFIED="1315914264857" TEXT="void * stack;">
<arrowlink DESTINATION="ID_632220490" ENDARROW="Default" ENDINCLINATION="36;0;" ID="Arrow_ID_694562155" STARTARROW="None" STARTINCLINATION="36;0;"/>
</node>
<node CREATED="1315917811701" ID="ID_749542623" MODIFIED="1315919278470" TEXT="struct thread_struct thread;">
<arrowlink DESTINATION="ID_1017458029" ENDARROW="Default" ENDINCLINATION="172;7;" ID="Arrow_ID_1554473956" STARTARROW="None" STARTINCLINATION="291;6;"/>
</node>
<node CREATED="1315920856358" ID="ID_1577581463" MODIFIED="1315920858319" TEXT="..."/>
</node>
<node CREATED="1315906535124" ID="ID_632220490" MODIFIED="1315920050132">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct thread_info </b>
    </p>
    <p>
      (arch/x86/include/asm/thread_info.h)
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1315919137906" ID="ID_650907153" MODIFIED="1315919738170" TEXT="struct task_struct *task;">
<arrowlink DESTINATION="ID_1707237907" ENDARROW="Default" ENDINCLINATION="288;0;" ID="Arrow_ID_1054171908" STARTARROW="None" STARTINCLINATION="288;0;"/>
</node>
<node CREATED="1315920882285" ID="ID_1192976465" MODIFIED="1315920884871" TEXT="..."/>
</node>
<node CREATED="1315917852994" ID="ID_1017458029" MODIFIED="1315919278470">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct&#160;thread_struct</b>
    </p>
    <p>
      (arch/x86/include/asm/processor.h)
    </p>
  </body>
</html>
</richcontent>
<arrowlink DESTINATION="ID_1017458029" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_924734162" STARTARROW="None" STARTINCLINATION="0;0;"/>
<node CREATED="1315921387476" ID="ID_1106096636" MODIFIED="1315921500009" TEXT="CPU-specific state of this task">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1315919664821" ID="ID_1222193728" MODIFIED="1315919688724" TEXT="struct desc_struct tls_array[]"/>
<node CREATED="1315919706622" ID="ID_1308739630" MODIFIED="1315919724986" TEXT="unsigned long sp;"/>
<node CREATED="1315919726190" ID="ID_844385859" MODIFIED="1315919727479" TEXT="..."/>
</node>
<node CREATED="1315920793500" ID="ID_563320112" MODIFIED="1315920806443" TEXT="Process Switch">
<node CREATED="1315920831165" ID="ID_879189016" MODIFIED="1315920845616" TEXT="TSS - Task State Segment"/>
<node CREATED="1315920998117" ID="ID_668222248" MODIFIED="1315921047181">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>switch_to(prev, next, last) </b>
    </p>
    <p>
      arch/x86/include/asm/system.h
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1315921056117" ID="ID_802013820" MODIFIED="1315921241970">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>__switch_to(struct task_struct *prev_p, struct task_struct *next_p) </b>
    </p>
    <p>
      arch/x86/kernel/process_32.c
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1314436121579" ID="ID_1250859528" MODIFIED="1315123240535" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Memory Management
    </p>
    <p>
      (Ch1/8/9)
    </p>
  </body>
</html></richcontent>
<node CREATED="1315123244348" ID="ID_350240484" MODIFIED="1315123274412" TEXT="Memory Addresses">
<node CREATED="1315123168075" ID="ID_1935897798" MODIFIED="1315123187281" TEXT="Logical Address"/>
<node CREATED="1314440025526" ID="ID_6589395" MODIFIED="1315123161070" TEXT="Linear Address (Virtual Address)"/>
<node CREATED="1314440062647" ID="ID_1510281728" MODIFIED="1315123161070" TEXT="Physical Address"/>
</node>
<node CREATED="1315123311858" ID="ID_1885773399" MODIFIED="1315123365947" TEXT="Segmentation">
<node CREATED="1315123414222" ID="ID_1932689008" MODIFIED="1315123462847" TEXT="segment : offset"/>
</node>
<node CREATED="1315123367113" ID="ID_1300788823" MODIFIED="1315124351196" STYLE="fork" TEXT="Paging"/>
</node>
<node CREATED="1314436133101" ID="ID_1160710559" MODIFIED="1314436147393" POSITION="right" TEXT="Virtual File System"/>
<node CREATED="1314436147807" ID="ID_1574595510" MODIFIED="1315124813816" POSITION="right" TEXT="Device Driver">
<node CREATED="1314437026181" ID="ID_293195365" MODIFIED="1314437032324" TEXT="Char Device"/>
<node CREATED="1314437033071" ID="ID_1001063607" MODIFIED="1314437036828" TEXT="Block Device"/>
<node CREATED="1314437037466" ID="ID_613067207" MODIFIED="1314437043175" TEXT="Network Device"/>
</node>
</node>
</map>
