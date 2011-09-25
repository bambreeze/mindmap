<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1314436073487" ID="ID_1195057024" MODIFIED="1314436088769" TEXT="Linux Kernel">
<node CREATED="1314436092630" ID="ID_1157985821" MODIFIED="1315906681478" POSITION="right" TEXT="Process Management">
<node CREATED="1315906710224" ID="ID_1707237907" MODIFIED="1316835196956">
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
</html></richcontent>
<node CREATED="1315914103874" ID="ID_398479359" MODIFIED="1315919402591" TEXT="volatile long state;">
<node CREATED="1315914353433" ID="ID_1933197825" MODIFIED="1315914364977" TEXT="TASK_RUNNING"/>
<node CREATED="1315914365862" ID="ID_1415384225" MODIFIED="1315914375212" TEXT="TASK_INTERRUPTIBLE"/>
<node CREATED="1315914376062" ID="ID_1275568405" MODIFIED="1315914386584" TEXT="TASK_UNINTERRUPTIBLE"/>
<node CREATED="1315914414290" ID="ID_1327507856" MODIFIED="1315914416204" TEXT="..."/>
</node>
<node CREATED="1315914126372" ID="ID_1983933720" MODIFIED="1316831863401" TEXT="void * stack;">
<arrowlink DESTINATION="ID_632220490" ENDARROW="Default" ENDINCLINATION="36;0;" ID="Arrow_ID_694562155" STARTARROW="None" STARTINCLINATION="36;0;"/>
</node>
<node CREATED="1316842437493" ID="ID_18418388" MODIFIED="1316842444704" TEXT="atomic_t usage;"/>
<node CREATED="1315917802230" ID="ID_533218755" MODIFIED="1315918219425" TEXT="unsigned int flags;"/>
<node CREATED="1316843580854" ID="ID_970644983" MODIFIED="1316843582837" TEXT="..."/>
<node CREATED="1316843584303" ID="ID_1772179729" MODIFIED="1316843597075" TEXT="struct list_head tasks;">
<node CREATED="1316843734093" ID="ID_803741408" MODIFIED="1316843763407">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>process list</b>&#160;- a list that links together all existing process descriptors.&#160;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1316843916945" ID="ID_27378462" MODIFIED="1316917741413">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>init_task</b>&#160;- Initial task structure
    </p>
    <p>
      struct task_struct init_task = INIT_TASK(init_task);
    </p>
    <p>
      (arch/x86/kernel/init_task.c)
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1316917476163" ID="ID_686524080" MODIFIED="1316917781400">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>for_each_process(p)</b>&#160;- scans the whole process list
    </p>
    <p>
      (include/linux/sched.h)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1316917874162" ID="ID_1633106799" MODIFIED="1316917876740" TEXT="..."/>
<node CREATED="1316917878242" ID="ID_1660815912" MODIFIED="1316920095859" TEXT="struct task_struct *real_parent;">
<node CREATED="1316920156962" ID="ID_505848288" MODIFIED="1316920198129" TEXT="Points to the process descriptor of the process that created P or to the descriptor of process 1 (init) if the parent process no longer exists.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1316920096768" ID="ID_1869882986" MODIFIED="1316920105763" TEXT="struct task_struct *parent;">
<node CREATED="1316920269649" ID="ID_1301081112" MODIFIED="1316932825951" TEXT="Points to the current parent of P ">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1316920113462" ID="ID_1642509929" MODIFIED="1316920123737" TEXT="struct list_head children;"/>
<node CREATED="1316920125217" ID="ID_1281826325" MODIFIED="1316920134265" TEXT="struct list_head sibling;"/>
<node CREATED="1316928405128" ID="ID_455203133" MODIFIED="1316928406488" TEXT="..."/>
<node CREATED="1316928408514" ID="ID_1880307065" MODIFIED="1316928415120" TEXT="pid_t pid;"/>
<node CREATED="1316928416665" ID="ID_60895847" MODIFIED="1316928421519" TEXT="pid_t tgid;">
<node CREATED="1316928466599" ID="ID_579056398" MODIFIED="1316932815634" TEXT="PID of the thread group leader of P">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1316920339866" ID="ID_4315816" MODIFIED="1316928482088" TEXT="struct task_struct *group_leader;">
<node CREATED="1316920358624" ID="ID_1174745410" MODIFIED="1316932813151" TEXT="Process descriptor pointer of the group leader of P">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1316920108998" ID="ID_844028112" MODIFIED="1316920110400" TEXT="..."/>
<node CREATED="1316928554073" ID="ID_62137992" MODIFIED="1316928886431" TEXT="struct pid_link pids[PIDTYPE_MAX];">
<arrowlink DESTINATION="ID_274205463" ENDARROW="Default" ENDINCLINATION="350;0;" ID="Arrow_ID_1300014786" STARTARROW="None" STARTINCLINATION="350;0;"/>
<node CREATED="1316932857095" ID="ID_1959762196" MODIFIED="1316932931821">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      enum pid_type
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;PIDTYPE_PID,
    </p>
    <p>
      &#160;&#160;&#160;&#160;PIDTYPE_PGID,
    </p>
    <p>
      &#160;&#160;&#160;&#160;PIDTYPE_SID,
    </p>
    <p>
      &#160;&#160;&#160;&#160;PIDTYPE_MAX
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1316928586259" ID="ID_1527760070" MODIFIED="1316928598021" TEXT="..."/>
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
</html></richcontent>
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
</html></richcontent>
<arrowlink DESTINATION="ID_1017458029" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_924734162" STARTARROW="None" STARTINCLINATION="0;0;"/>
<node CREATED="1315921387476" ID="ID_1106096636" MODIFIED="1315921500009" TEXT="CPU-specific state of this task">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1315919664821" ID="ID_1222193728" MODIFIED="1315919688724" TEXT="struct desc_struct tls_array[]"/>
<node CREATED="1315919706622" ID="ID_1308739630" MODIFIED="1315919724986" TEXT="unsigned long sp;"/>
<node CREATED="1315919726190" ID="ID_844385859" MODIFIED="1315919727479" TEXT="..."/>
</node>
<node CREATED="1316928640993" ID="ID_274205463" MODIFIED="1316928886430">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct pid_link</b>
    </p>
    <p>
      (include/linux/pid.h)
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1316928699044" ID="ID_1729999827" MODIFIED="1316932589085" TEXT="struct hlist_node node;"/>
<node CREATED="1316931912268" ID="ID_28056775" MODIFIED="1316932656178">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct pid *pid;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1316928771487" ID="ID_116010920" MODIFIED="1316928793593" TEXT="atomic_t count;"/>
<node CREATED="1316928794768" ID="ID_340123140" MODIFIED="1316932589085" TEXT="struct hlist_head tasks[PIDTYPE_MAX];">
<arrowlink DESTINATION="ID_1729999827" ENDARROW="Default" ENDINCLINATION="251;0;" ID="Arrow_ID_545094462" STARTARROW="None" STARTINCLINATION="251;0;"/>
<node CREATED="1316928839340" ID="ID_1171258771" MODIFIED="1316928853089" TEXT="lists of tasks that use this pid">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1316928813011" ID="ID_640516611" MODIFIED="1316928814767" TEXT="..."/>
<node CREATED="1316932018473" ID="ID_1149046420" MODIFIED="1316932029192" TEXT="struct upid numbers[1];">
<node CREATED="1316932051355" ID="ID_1051743616" MODIFIED="1316932056000" TEXT="int nr;">
<node CREATED="1316932155505" ID="ID_2304393" MODIFIED="1316932160980" TEXT="The PID number">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1316932056544" ID="ID_513109031" MODIFIED="1316932085118" TEXT="struct pid_namespace *ns;"/>
<node CREATED="1316932086156" ID="ID_373966593" MODIFIED="1316932098245" TEXT="struct hlist_node pid_chain;">
<node CREATED="1316932217219" ID="ID_1628611484" MODIFIED="1316932221519" TEXT="The links to the next and previous elements in the hash chain list">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
<node CREATED="1316766906971" ID="ID_645308379" MODIFIED="1316766915815" TEXT="Interrupts and Exceptions">
<node CREATED="1316769068729" ID="ID_1349911850" MODIFIED="1316769073345" TEXT="Definition">
<node CREATED="1316766926536" ID="ID_1498465646" MODIFIED="1316767511372" TEXT="Interrupts (Asynchronous)">
<node CREATED="1316767054709" ID="ID_1599617338" MODIFIED="1316767078512" TEXT="Maskable Interrupts"/>
<node CREATED="1316767079731" ID="ID_175788121" MODIFIED="1316767126790" TEXT="Nonmaskable Interrupts (NMI)"/>
</node>
<node CREATED="1316766930802" ID="ID_651855405" MODIFIED="1316769096828" TEXT="Exceptions (Synchronous)">
<node CREATED="1316767173412" ID="ID_1388644566" MODIFIED="1316767191121" TEXT="Processor-detected Exception">
<node CREATED="1316767223778" ID="ID_1182658758" MODIFIED="1316767227854" TEXT="Faults"/>
<node CREATED="1316767228862" ID="ID_286073273" MODIFIED="1316767232877" TEXT="Traps"/>
<node CREATED="1316767233772" ID="ID_828699720" MODIFIED="1316767236317" TEXT="Aborts"/>
</node>
<node CREATED="1316767192526" ID="ID_834789161" MODIFIED="1316767208364" TEXT="Programmed Exception"/>
</node>
</node>
<node CREATED="1316767346119" ID="ID_74815681" MODIFIED="1316768259546">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      IDT - Interrupt Descriptor Table
    </p>
    <p>
      (referred by IDTR register)
    </p>
  </body>
</html></richcontent>
<node CREATED="1316767858652" ID="ID_718436077" MODIFIED="1316767867502" TEXT="Intel (Hardware)">
<node CREATED="1316767411047" ID="ID_386560905" MODIFIED="1316767511372" TEXT="Interrupt Gate - to handle interupts"/>
<node CREATED="1316769115937" ID="ID_1207589129" MODIFIED="1316769119350" TEXT="Trap Gate - to handle exceptions"/>
<node CREATED="1316767397291" ID="ID_1442372959" MODIFIED="1316769842422" TEXT="Task Gate - to handle &quot;Double fault &quot; exception"/>
</node>
<node CREATED="1316767884430" ID="ID_803462473" MODIFIED="1316767893301" TEXT="Linux (Software)">
<node CREATED="1316767902774" ID="ID_36241942" MODIFIED="1316767910011" TEXT="Interrupt Gate"/>
<node CREATED="1316767936127" ID="ID_1262195787" MODIFIED="1316768073413" TEXT="Trap Gate"/>
<node CREATED="1316767946474" ID="ID_596476977" MODIFIED="1316769846629" TEXT="Task Gate"/>
<node CREATED="1316767916716" ID="ID_393487179" MODIFIED="1316769963421" TEXT="System Gate - to handle system call"/>
<node CREATED="1316767922350" ID="ID_534098991" MODIFIED="1316770038515" TEXT="System Interrupt Gate - to handle &quot;Breakpoint&quot; exception"/>
</node>
<node CREATED="1316768346318" ID="ID_1506973519" MODIFIED="1316768365350" TEXT="Initializing IDT">
<node CREATED="1316768368803" ID="ID_1225375667" MODIFIED="1316768580201">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>setup_idt()</b>
    </p>
    <p>
      arch/x86/boot/pm.c
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1316768632029" ID="ID_211395724" MODIFIED="1316768669162" TEXT="Preliminary Initializtion of the IDT"/>
</node>
<node CREATED="1316768672155" ID="ID_107618297" MODIFIED="1316768755978">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>trap_init()</b>
    </p>
    <p>
      arch/x86/kernel/traps.c
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316768903176" ID="ID_1890823974" MODIFIED="1316768984999">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>init_IRQ() </b>
    </p>
    <p>
      arch/x86/kernel/irqinit.c
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1316769432442" ID="ID_487968707" MODIFIED="1316769436615" TEXT="Exception Handling">
<node CREATED="1316769461577" ID="ID_899493299" MODIFIED="1316769499319" TEXT="Save the contents of most registers in the Kernel Mode stack (this part is coded in assembly language).">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1316769467579" ID="ID_428606971" MODIFIED="1316769502209" TEXT="Handle the exception by means of a high-level C function.">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1316769479178" ID="ID_512337282" MODIFIED="1316769504581" TEXT="Exit from the handler by means of the ret_from_exception( ) function.">
<icon BUILTIN="full-3"/>
</node>
</node>
<node CREATED="1316769211434" ID="ID_998639606" MODIFIED="1316769683205">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct irq_desc - interrupt descriptor</b>
    </p>
    <p>
      include/linux/irqdesc.h
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316769293384" ID="ID_1080578207" MODIFIED="1316769683134">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct irqaction - per interrupt action descriptor</b>
    </p>
    <p>
      include/linux/interrupt.h
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316769506966" ID="ID_1652292667" MODIFIED="1316769519510" TEXT="Interrupt Handling">
<node CREATED="1316769521668" ID="ID_50319059" MODIFIED="1316769620312" TEXT="Save the IRQ value and the register&apos;s contents on the Kernel Mode stack.">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1316769582287" ID="ID_687786211" MODIFIED="1316769622497" TEXT="Send an acknowledgment to the PIC that is servicing the IRQ line, thus allowing it to issue further interrupts.">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1316769592704" ID="ID_131982960" MODIFIED="1316769624960" TEXT="Execute the interrupt service routines (ISRs) associated with all the devices that share the IRQ.">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1316769604940" ID="ID_1157336210" MODIFIED="1316769627496" TEXT="Terminate by jumping to the ret_from_intr( ) address.">
<icon BUILTIN="full-4"/>
</node>
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
