<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1312606731989" ID="Freemind_Link_1169298212" LINK="Linux%20Device%20Drivers.mm" MODIFIED="1312874866156" TEXT="Time/Interrupt (Ch7/10)">
<node CREATED="1312767433335" ID="ID_1342802873" MODIFIED="1312767439942" POSITION="right" TEXT="Timekeeping">
<node CREATED="1313568702623" ID="ID_1200914499" MODIFIED="1313568717761" TEXT="jiffies">
<node CREATED="1312767441597" ID="ID_651095464" MODIFIED="1313568828577">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      extern unsigned long volatile jiffies;
    </p>
    <p>
      extern u64 jiffies_64;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1313581730626" ID="ID_1289200853" MODIFIED="1313581803015" TEXT="The volatile keyword  instructs the compiler to reload the variable &#xa;on each access from main memory and  never alias the variable&#x2019;s&#xa; value in a register, guaranteeing it works as expected.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312767450789" ID="ID_1346993751" MODIFIED="1313569670362" TEXT="HZ - the tick rate">
<node CREATED="1313569598805" ID="ID_493492883" MODIFIED="1313569604529" TEXT="(seconds * HZ)">
<node CREATED="1313569638453" ID="ID_60411693" MODIFIED="1313569655261" TEXT="converts from seconds to  a unit of jiffies">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1313569607643" ID="ID_588824114" MODIFIED="1313569618422" TEXT="(jiffies / HZ)">
<node CREATED="1313569650254" ID="ID_337942877" MODIFIED="1313569659318" TEXT=" converts from jiffies to seconds">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1312767512485" ID="ID_945179317" MODIFIED="1313567961349" TEXT="time_after(unknown, known)/time_after_eq(unknown, known)">
<node CREATED="1313567873966" ID="ID_1904233480" MODIFIED="1313567909234">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It returns true if time unknown is after time known;
    </p>
    <p>
      otherwise, it returns false.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312767533428" ID="ID_467608897" MODIFIED="1312767556896" TEXT="time_before()/time_before_eq()"/>
</node>
<node CREATED="1313568743726" ID="ID_1763092405" MODIFIED="1313574192840" TEXT="time">
<node CREATED="1313574133366" ID="ID_1050807941" MODIFIED="1313575007253" TEXT="struct timespec xtime;"/>
<node CREATED="1312767668597" ID="ID_1244320065" MODIFIED="1313575007254" TEXT="struct timespec current_kernel_time(void)">
<arrowlink DESTINATION="ID_1050807941" ENDARROW="Default" ENDINCLINATION="110;0;" ID="Arrow_ID_1278350752" STARTARROW="None" STARTINCLINATION="110;0;"/>
</node>
<node CREATED="1312767646877" ID="ID_1888919992" MODIFIED="1312767651553" TEXT="do_gettimeofday(struct timeval *tv)"/>
</node>
</node>
<node CREATED="1312767709333" ID="ID_1074813071" MODIFIED="1312767711600" POSITION="right" TEXT="Delays">
<node CREATED="1312767846189" ID="ID_1842872236" MODIFIED="1313587666213">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      set_current_state(TASK_INTERRUPTIBLE)
    </p>
    <p>
      schedule_timeout (delay)
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312767763375" ID="ID_1945743865" MODIFIED="1313587697009" TEXT="wait_event_interruptible_timeout()">
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1312767988445" ID="ID_1114074656" MODIFIED="1312768000881" TEXT="ndelay()/udelay()/mdelay()"/>
<node CREATED="1312768009332" MODIFIED="1312768031105" TEXT="msleep()/msleep_interruptible()/ssleep()"/>
</node>
<node CREATED="1312768068205" ID="ID_1595010064" MODIFIED="1312768070993" POSITION="right" TEXT="Timers">
<node CREATED="1313575800694" ID="ID_1400341731" MODIFIED="1313575824162" TEXT="init">
<node CREATED="1312768132044" ID="ID_1394350005" MODIFIED="1313575720928" TEXT="struct timer_list my_timer;"/>
<node CREATED="1312768150028" ID="ID_90408511" MODIFIED="1312768152640" TEXT="static">
<node CREATED="1312768175926" ID="ID_327647491" MODIFIED="1312768833864" TEXT="TIMER_INITIALIZER()"/>
</node>
<node CREATED="1312768193949" ID="ID_94934256" MODIFIED="1313576336735" TEXT="dynamic">
<icon BUILTIN="button_ok"/>
<node CREATED="1312768215869" ID="ID_311491922" MODIFIED="1313575756424" TEXT="init_timer(&amp;my_timer)"/>
</node>
</node>
<node CREATED="1313575996528" ID="ID_812757674" MODIFIED="1313576029426" TEXT="...Now you fill out the remaining values as required...">
<icon BUILTIN="pencil"/>
<node CREATED="1313576152758" ID="ID_411815182" MODIFIED="1313576165448" TEXT="my_timer.expires = jiffies + delay;    /* timer expires in delay ticks */ &#xa;my_timer.data = 0;                     /* zero is passed to the timer handler */ &#xa;my_timer.function = my_function;       /* function to run when timer expires */"/>
</node>
<node CREATED="1312768237740" ID="ID_1014429417" MODIFIED="1313576318136" TEXT="add_timer(&amp;my_timer)">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312768241333" ID="ID_632285293" MODIFIED="1313576252173" TEXT="mod_timer(&amp;my_timer, jiffies + new_delay)"/>
<node CREATED="1312768246013" ID="ID_486847998" MODIFIED="1313576683625" TEXT="del_timer(&amp;my_timer)/del_timer_sync(&amp;my_timer)">
<node CREATED="1313576447614" ID="ID_1092799931" MODIFIED="1313576492621" TEXT=" Note that you do not need  to call this for timers that have expired &#xa;because they are automatically deactivated.">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
<node CREATED="1312768316117" ID="ID_122872356" MODIFIED="1312768321201" POSITION="right" TEXT="Interrupts">
<node CREATED="1312768359020" ID="ID_907850260" MODIFIED="1313486893044">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /proc/interrupts &amp; /proc/stat
    </p>
    <p>
      /proc/irq/&lt;pid&gt;/*
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312768426413" ID="ID_697921072" MODIFIED="1313485844845" TEXT="request_irq()/free_irq()"/>
<node CREATED="1312768486781" ID="ID_324711695" MODIFIED="1312768498576" TEXT="Single Interrupt">
<node CREATED="1312768587640" ID="ID_1318501354" MODIFIED="1313485790216" TEXT="enable_irq()/disable_irq()/disable_irq_nosync()">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1312768614741" MODIFIED="1312768619313" TEXT="All Interrupts">
<node CREATED="1312768643397" ID="ID_1028915712" MODIFIED="1312768659624" TEXT="local_irq_save()/local_irq_restore()">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312768661941" ID="ID_74154049" MODIFIED="1312768675952" TEXT="local_irq_disable()/local_irq_enable()"/>
</node>
<node CREATED="1312768870057" ID="ID_1414900085" MODIFIED="1312768872313" TEXT="Bottom Halves">
<node CREATED="1312768891469" ID="ID_1724781127" MODIFIED="1313486687059" TEXT="softirq (no sleep, interrupt context)"/>
<node CREATED="1312768901317" ID="ID_1118359740" MODIFIED="1313486706234">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tasklet
    </p>
    <p>
      (no sleep, interrupt context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1312769252277" ID="ID_1088231767" MODIFIED="1313474304237" TEXT="struct tasklet_struct">
<node CREATED="1312768938044" ID="ID_1114904354" MODIFIED="1312768941025" TEXT="static">
<node CREATED="1312768948629" ID="ID_529211850" MODIFIED="1313485340188">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      DECLARE_TASKLET(name, func, data)
    </p>
    <p>
      DECLARE_TASKLET_DISABLED(name, func, data)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312768978605" MODIFIED="1312768981698" TEXT="dynamic">
<node CREATED="1312768996110" ID="ID_448875376" MODIFIED="1313474513449" TEXT="tasklet_init(t, tasklet_handler, dev)"/>
</node>
</node>
<node CREATED="1312769016773" ID="ID_1212964925" MODIFIED="1313474621336" TEXT="tasklet_schedule(&amp;my_tasklet)/tasklet_hi_schedule(&amp;my_tasklet)">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312769066637" ID="ID_1910418896" MODIFIED="1313485389349">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tasklet_enable()/tasklet_disable()/tasklet_disable_nosync()
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312769101999" ID="ID_727297827" MODIFIED="1312769103841" TEXT="tasklet_kill()"/>
</node>
<node CREATED="1312768910909" ID="ID_794097156" MODIFIED="1313486722469">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      workqueue
    </p>
    <p>
      (sleep, process context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1312769212872" ID="ID_891040841" MODIFIED="1313480813645">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct workqueue_struct
    </p>
    <p>
      (struct cpu_workqueue_struct)
    </p>
  </body>
</html></richcontent>
<node CREATED="1312769347389" ID="ID_1107461994" MODIFIED="1312769354568" TEXT="create_workqueue()"/>
<node CREATED="1312769364861" MODIFIED="1312769367225" TEXT="create_singlethread_workqueue()"/>
<node CREATED="1312769374116" ID="ID_1091106294" MODIFIED="1312769376656" TEXT="destroy_workqueue()"/>
<node CREATED="1312769460406" ID="ID_1122862524" MODIFIED="1312769496856" TEXT="queue_work()/queue_delayed_work()"/>
<node CREATED="1312769583956" ID="ID_655962899" MODIFIED="1312769586112" TEXT="flush_workqueue()"/>
</node>
<node CREATED="1312769222053" MODIFIED="1312769224442" TEXT="struct work_struct">
<node CREATED="1312769385645" MODIFIED="1312769387616" TEXT="static">
<node CREATED="1312769418805" ID="ID_1725697565" MODIFIED="1313481470917" TEXT="DECLARE_WORK(name, func)"/>
</node>
<node CREATED="1312769388292" ID="ID_1343775588" MODIFIED="1312769391240" TEXT="dynamic">
<node CREATED="1312769427535" ID="ID_476087168" MODIFIED="1313485057764" TEXT="INIT_WORK(work, func)"/>
</node>
</node>
<node CREATED="1312769631892" ID="ID_947177218" MODIFIED="1313485614588" TEXT="schedule_work(&amp;work)/schedule_delayed_work(&amp;work, delay)">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312769574845" ID="ID_147766562" MODIFIED="1313486073228" TEXT="cancel_delayed_work()"/>
<node CREATED="1312769658141" ID="ID_819983672" MODIFIED="1312769660345" TEXT="flush_scheduled_work()"/>
</node>
<node CREATED="1313486628806" ID="ID_589613468" MODIFIED="1313567943031" TEXT="In short, normal driver writers have two choices. First, do you need a schedulable  entity to perform your deferred work&#x2014;fundamentally, do you need to sleep for any reason? Then work queues are your only option. Otherwise, tasklets are preferred. Only if  scalability becomes a concern do you investigate softirqs.">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</map>
