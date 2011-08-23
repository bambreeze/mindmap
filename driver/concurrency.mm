<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1312606721031" ID="Freemind_Link_351727352" LINK="Linux%20Device%20Drivers.mm" MODIFIED="1313547034130" TEXT="Concurrency (Ch5)">
<edge WIDTH="1"/>
<node CREATED="1312693202397" ID="ID_59832097" MODIFIED="1313548426359" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Semaphore
    </p>
    <p>
      (long, sleep, process context)
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1312693302454" ID="ID_740546722" MODIFIED="1313547711772" TEXT="semaphore">
<node CREATED="1312693512550" ID="ID_1849881313" MODIFIED="1313548907626" TEXT="static DECLARE_SEMAPHORE_GENERIC(name, count)"/>
<node CREATED="1312693518316" ID="ID_967799322" MODIFIED="1313548984342" TEXT="sema_init(sem, count)"/>
</node>
<node CREATED="1312693352465" ID="ID_752258416" MODIFIED="1313549756423" TEXT="rw_semaphore/completion"/>
<node CREATED="1312693386730" ID="ID_1970555050" MODIFIED="1312693638979" TEXT="mutex">
<icon BUILTIN="button_ok"/>
<node CREATED="1312693396454" ID="ID_551072747" MODIFIED="1312693398856" TEXT="static">
<node CREATED="1312693416715" ID="ID_1495494447" MODIFIED="1313549066546">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static DECLARE_MUTEX(name)
    </p>
    <p>
      static DECLARE_MUTEX_LOCKED(name)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1312693431973" ID="ID_1008579193" MODIFIED="1312693443992" TEXT="dynamic">
<node CREATED="1312693459388" ID="ID_1482323652" MODIFIED="1313549087545">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      init_MUTEX(sem)
    </p>
    <p>
      init_MUTEX_LOCKED(sem)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1312693740526" ID="ID_1969698129" MODIFIED="1312693744592" TEXT="usage">
<node CREATED="1312693800962" ID="ID_314690552" MODIFIED="1313549821636">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>down_interruptible</b>(&amp;my_sem)
    </p>
    <p>
      up(&amp;my_sem)
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1313549941186" ID="ID_249606607" MODIFIED="1313550157146">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;If the&#160;&#160;semaphore is unavailable, it places the calling process
    </p>
    <p>
      &#160;to sleep in the TASK_INTERRUPTIBLE state.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312693813435" ID="ID_1097964744" MODIFIED="1313549173430" TEXT="down()/down_trylock()">
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node CREATED="1313547549956" ID="ID_1312026970" MODIFIED="1313547728842" TEXT="In cases where  the sleep time might be long or you potentially need to sleep while holding the lock, the  semaphore is a solution.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312693651083" ID="ID_771001210" MODIFIED="1313548437778" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      spinlock
    </p>
    <p>
      (short, no sleep, interrupt context)
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1312693951073" ID="ID_341396860" MODIFIED="1313544944163" TEXT="spinlock">
<icon BUILTIN="button_ok"/>
<node CREATED="1312693968931" ID="ID_1387000666" MODIFIED="1312694002853" TEXT="static">
<node CREATED="1312694017006" ID="ID_515272272" MODIFIED="1312694024756" TEXT="spinlock_t my_lock = SPIN_LOCK_UNLOCKED;"/>
</node>
<node CREATED="1312694027908" MODIFIED="1312694031020" TEXT="dynamic">
<node CREATED="1312694044309" ID="ID_1719388903" MODIFIED="1312694050626" TEXT="spin_lock_init()"/>
</node>
<node CREATED="1312694066185" ID="ID_1463723135" MODIFIED="1312694073422" TEXT="usage">
<node CREATED="1312694134224" ID="ID_1244850060" MODIFIED="1313544369387">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      spin_lock_irqsave(&amp;my_lock, flags)
    </p>
    <p>
      spin_unlock_irqrestore(&amp;my_lock, flags)
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1313545973967" ID="ID_1004456907" MODIFIED="1313547149761">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Saves current state of local interrupts,
    </p>
    <p>
      disables local interrupts, and acquires given lock
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312694076678" ID="ID_1206402908" MODIFIED="1313544314222" TEXT="spin_lock()/spin_unlock()"/>
<node CREATED="1312694144427" ID="ID_256904747" MODIFIED="1313546129605" TEXT="spin_lock_irq()/spin_unlock_irq()">
<icon BUILTIN="button_cancel"/>
<node CREATED="1313545927769" ID="ID_1701566236" MODIFIED="1313545955406" TEXT="Disables local interrupts and acquires given lock">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312694154453" ID="ID_1565147892" MODIFIED="1313544304954" TEXT="spin_lock_bh()/spin_unlock_bh()">
<node CREATED="1313546092211" ID="ID_376102253" MODIFIED="1313546945688" TEXT="Disables all bottom halves and acquires given lock">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312694398791" ID="ID_1972092235" MODIFIED="1313544335595" TEXT="spin_trylock()/spin_trylock_bh()"/>
</node>
</node>
<node CREATED="1312694058445" ID="ID_795613481" MODIFIED="1313551561036" TEXT="rwlock/seqlock/RCU/BKL"/>
<node CREATED="1313547693964" ID="ID_648267487" MODIFIED="1313547836980" TEXT="Spin locks provide a quick and simple lock. The spinning behavior is optimal for short  hold times and code that cannot sleep (interrupt handlers, for example). ">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1313552079457" ID="ID_545884410" MODIFIED="1313552089983" POSITION="right" TEXT="Preemption Disabling">
<node CREATED="1313552107043" ID="ID_56290824" MODIFIED="1313552164925">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      preempt_disable()
    </p>
    <p>
      preempt_enable()
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1313553755558" ID="ID_1124259971" MODIFIED="1313553760483" POSITION="right" TEXT="Barriers">
<node CREATED="1313553803570" ID="ID_786162832" MODIFIED="1313553924469" TEXT="mb()/rmb()/wmb()"/>
<node CREATED="1313553929661" ID="ID_1928322973" MODIFIED="1313553940804" TEXT="read_barrier_depends()"/>
<node CREATED="1313553952421" ID="ID_1581681392" MODIFIED="1313553956243" TEXT="barrier()"/>
</node>
<node CREATED="1313544533216" ID="ID_1459520210" MODIFIED="1313547660645" POSITION="right" TEXT="You should protect data and not code">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1313503319379" ID="ID_947159726" MODIFIED="1313544686256" POSITION="right" TEXT="The tricky part is identifying the actual shared data and the corresponding critical sections.&#xa;This is why designing locking into your code from the  get-go, and not as an after thought&#xa; is of paramount importance.">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1313550639680" ID="ID_1180693157" MODIFIED="1313550731561" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../../../../Users/fazhang/Desktop/Untitled.png" />
  </body>
</html>
</richcontent>
</node>
</node>
</map>
