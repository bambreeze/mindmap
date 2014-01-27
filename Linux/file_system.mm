<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1366184501690" ID="ID_106286176" MODIFIED="1390782212893" TEXT="File System">
<node CREATED="1369634187531" ID="ID_820278448" MODIFIED="1369634204695" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <table cellpadding="0" width="100%" border="0" cellspacing="0">
      <tr>
        <td valign="top">
          <p class="docText">
            The <span class="docEmphasis">Virtual Filesystem</span>&#160;(also known as Virtual Filesystem Switch or <span class="docEmphasis">VFS</span>) is a kernel software layer that handles all system calls related to a standard Unix filesystem. Its main strength is providing a common interface to several kinds of filesystems.
          </p>
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1366189248236" ID="ID_1806333498" MODIFIED="1390782216058" POSITION="right" TEXT="The Common File Model">
<node CREATED="1369637391056" ID="ID_182356661" MODIFIED="1369637505621" TEXT="The kernel is responsible for assigning the right set of pointers to the file variable associated with each open file, and then for invoking the call specific to each filesystem that the f_op field points to."/>
<node CREATED="1390458491897" ID="ID_1709121695" MODIFIED="1390458525897">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/Interaction%20between%20processes%20and%20VFS%20objects.png" />
  </body>
</html>
</richcontent>
</node>
<node CREATED="1366189506952" FOLDED="true" ID="ID_1566163540" MODIFIED="1390782212887" TEXT="superblock object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369637845942" ID="ID_349538503" MODIFIED="1369637848179" TEXT="Stores information concerning a mounted filesystem. For disk-based filesystems, this object usually corresponds to a filesystem control block stored on disk."/>
<node CREATED="1369709722854" ID="ID_524176037" MODIFIED="1390460509440" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369709745280" ID="ID_425894147" MODIFIED="1390724851283">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">super_block</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#cc00cc">s_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#009900">s_instances</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct file_system_type *s_type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *s_root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">s_inodes</font>; /* all inodes */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">s_files</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct super_operations *s_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
<arrowlink COLOR="#0000ff" DESTINATION="ID_1409554322" ENDARROW="Default" ENDINCLINATION="316;0;" ID="Arrow_ID_421093846" STARTARROW="None" STARTINCLINATION="316;0;"/>
</node>
<node CREATED="1390460887973" ID="ID_1057163362" MODIFIED="1390460907950" TEXT="fs/super.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369710087938" ID="ID_1394783049" MODIFIED="1390724883837">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct list_head <font color="#cc00cc">super_blocks</font>;
    </p>
    <p>
      spinlock_t sb_lock;
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ff00ff" DESTINATION="ID_425894147" ENDARROW="Default" ENDINCLINATION="135;0;" ID="Arrow_ID_1807737045" STARTARROW="None" STARTINCLINATION="135;0;"/>
</node>
</node>
<node CREATED="1366189518401" FOLDED="true" ID="ID_494530525" MODIFIED="1390782212888" TEXT="inode object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369637920433" ID="ID_1650539098" MODIFIED="1369637922304" TEXT="Stores general information about a specific file. For disk-based filesystems, this object usually corresponds to a file control block stored on disk. Each inode object is associated with an inode number, which uniquely identifies the file within the filesystem.  "/>
<node CREATED="1369723392961" ID="ID_57843421" MODIFIED="1390461489941" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369723297287" ID="ID_1409554322" MODIFIED="1390725517097">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">inode</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long i_ino;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct inode_operations *i_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct file_operations *i_fop;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long i_state;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct super_block *i_sb;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct hlist_node i_hash;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head i_wb_list;&#160;&#160;&#160;&#160;&#160;&#160;/* backing dev IO list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head i_lru;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* inode LRU list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">i_sb_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff9900">i_dentry</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<arrowlink COLOR="#ff9900" DESTINATION="ID_1560357739" ENDARROW="Default" ENDINCLINATION="262;0;" ID="Arrow_ID_333913323" STARTARROW="None" STARTINCLINATION="262;0;"/>
</node>
</node>
<node CREATED="1366189532051" FOLDED="true" ID="ID_198670532" MODIFIED="1390782212888" TEXT="dentry object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369638242904" ID="ID_1904145160" MODIFIED="1369638244888" TEXT="Stores information about the linking of a directory entry (that is, a particular name of the file) with the corresponding file. Each disk-based filesystem stores this information in its own particular way on disk.  "/>
<node CREATED="1369729796600" ID="ID_370000365" MODIFIED="1390462018634" TEXT="include/linux/dcache.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369729854013" ID="ID_1560357739" MODIFIED="1390725510079">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">dentry</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct dentry_operations *d_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int d_flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int d_count;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct inode *d_inode;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff00ff">d_lru</font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* LRU list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff9900">d_alias</font>; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* inode alias list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct hlist_bl_node d_hash;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* lookup hash list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1369733488565" ID="ID_887547705" MODIFIED="1390462022365">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct list_head <font color="#ff00ff">dentry_unused</font>;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1560357739" ENDARROW="Default" ENDINCLINATION="172;0;" ID="Arrow_ID_1146499315" STARTARROW="None" STARTINCLINATION="172;0;"/>
</node>
</node>
<node CREATED="1366189528521" FOLDED="true" ID="ID_1249395069" MODIFIED="1390782212888" TEXT="file object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369638028382" ID="ID_19029987" MODIFIED="1369638031431" TEXT="Stores information about the interaction between an open file and a process. This information exists only in kernel memory during the period when a process has the file open.  "/>
<node CREATED="1369636883365" ID="ID_65479377" MODIFIED="1390462325372" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369636711023" FOLDED="true" ID="ID_78514318" MODIFIED="1390782212888">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">file</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;loff_t f_pos;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct file_operations *f_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *private_data;
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_long_t f_count;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">fu_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct path f_path;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1369639073539" ID="ID_1376766354" MODIFIED="1390462302346" TEXT="include/linux/path.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369639104052" ID="ID_448584187" MODIFIED="1390462431642">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct path {
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct vfsmount *mnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *dentry;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1369637057651" ID="ID_156016210" MODIFIED="1390462448966">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">file_operations</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*open) (...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*release) (...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;ssize_t (*read) (...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;ssize_t (*write) (...)
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1370239154930" ID="ID_282454318" MODIFIED="1390782224141" POSITION="right" TEXT="Filesystem Types">
<node CREATED="1366185168265" ID="ID_1445111663" MODIFIED="1390466670583">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Disk-based filesystems (<b>Ext2</b>, DOS/<b>FAT</b>/NTFS)
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1366188682100" ID="ID_333407511" MODIFIED="1366188750105" TEXT="Network filesystems (NFS)"/>
<node CREATED="1366188692444" ID="ID_1349695691" MODIFIED="1366188743974" TEXT="Special filesystems (/proc)"/>
</node>
<node CREATED="1390462557543" FOLDED="true" ID="ID_1710226371" MODIFIED="1390782231893" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Register Filesystem
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1370239251786" ID="ID_1530967015" MODIFIED="1390539536637" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1370239310274" ID="ID_401191182" MODIFIED="1390724907238">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">file_system_type</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;const char *<b>name</b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int fs_flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *(*mount) (struct file_system_type *, int, const char *, void *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*kill_sb) (struct super_block *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct module *owner;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct file_system_type * <b><font color="#000000">next</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#009900">fs_supers</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#339900" DESTINATION="ID_425894147" ENDARROW="Default" ENDINCLINATION="402;0;" ID="Arrow_ID_1301444596" STARTARROW="None" STARTINCLINATION="402;0;"/>
</node>
<node CREATED="1390458883824" ID="ID_400167546" MODIFIED="1390539474812" TEXT="fs/filesystems.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1370239188600" ID="ID_246551241" MODIFIED="1390539474808">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type *<b><font color="#6600ff">file_systems</font></b>;
    </p>
    <p>
      static DEFINE_RWLOCK(<font color="#000000">file_systems_lock</font>);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1390459417235" ID="ID_1032117686" MODIFIED="1390539672014">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type **<b><font color="#0000ff">find_filesystem</font></b>(const char *name, unsigned len)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct file_system_type **p;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;for (p=&amp;<b><font color="#6600ff">file_systems</font></b>; *p; p=&amp;(*p)-&gt;next)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (strlen((*p)-&gt;name) == len &amp;&amp;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;strncmp((*p)-&gt;name, name, len) == 0)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;break;
    </p>
    <p>
      &#160;&#160;&#160;&#160;return p;
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1370239712086" ID="ID_1677955300" MODIFIED="1390466578499">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* register a new filesystem */
    </p>
    <p>
      int <b><font color="#0000ff">register_filesystem</font></b>(struct file_system_type * fs)
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_lock(&amp;file_systems_lock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;p = find_filesystem(fs-&gt;name, strlen(fs-&gt;name));
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (*p)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;res = -EBUSY;
    </p>
    <p>
      &#160;&#160;&#160;&#160;else
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*p = fs;
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_unlock(&amp;file_systems_lock);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1390459743541" ID="ID_812171925" MODIFIED="1390466605961">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* unregister a file system */
    </p>
    <p>
      int <b><font color="#0000ff">unregister_filesystem</font></b>(struct file_system_type * fs)
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_lock(&amp;file_systems_lock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;tmp = &amp;<b><font color="#6600ff">file_systems</font></b>;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;while (*tmp) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (fs == *tmp) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*tmp = fs-&gt;next;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;fs-&gt;next = NULL;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;write_unlock(&amp;file_systems_lock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;synchronize_rcu();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 0;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;tmp = &amp;(*tmp)-&gt;next;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_unlock(&amp;file_systems_lock);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390466308341" ID="ID_1895733499" MODIFIED="1390782222036" POSITION="right" TEXT="Filesystem Mounting">
<node CREATED="1390466320756" FOLDED="true" ID="ID_1467198402" MODIFIED="1390782212890" TEXT="Mounting a Generic Filesystem">
<node CREATED="1390529852805" ID="ID_1289092885" MODIFIED="1390539601224" TEXT="fs/mount.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390529874076" FOLDED="true" ID="ID_818732699" MODIFIED="1390782212889">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">mount</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_hash;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct mount *mnt_parent;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *mnt_mountpoint;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#6600ff">struct vfsmount&#160;mnt;</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_mounts;&#160;&#160;&#160;&#160;/* list of children, anchored here */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_child; /* and going through their mnt_child */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_instance;&#160;&#160;/* mount instance on sb-&gt;s_mounts */
    </p>
    <p>
      &#160;&#160;&#160;&#160;const char *mnt_devname;&#160;&#160;&#160;&#160;/* Name of device e.g. /dev/dsk/hda1 */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_list;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1390466161817" ID="ID_1076557367" MODIFIED="1390539601219" TEXT="include/linux/mount.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390466174712" ID="ID_1046638237" MODIFIED="1390539601222">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">vfsmount</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *mnt_root;&#160;&#160;&#160;&#160;/* root of the mounted tree */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct super_block *mnt_sb; /* pointer to superblock */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int mnt_flags;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390466770036" ID="ID_1614029978" MODIFIED="1390539625013" TEXT="fs/namespace.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390719293162" ID="ID_786173474" MODIFIED="1390725961221">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">$</font><font color="#ff0000">mount</font>&#160;-t ext2 /dev/fd0 /flp
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1390539190722" ID="ID_528865274" MODIFIED="1390719201281">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      SYSCALL_DEFINE5(<b><font color="#ff0000"><i>mount</i></font></b>, char __user *, dev_name, char __user *, dir_name,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;char __user *, type, unsigned long, flags, void __user *, data)
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1390466786651" ID="ID_312799230" MODIFIED="1390725934086">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>do_mount</b>(dev_name, dir_name, type_page, flags, data_page)
    </p>
    <p>
      &#160;&#160;&#160;&#160;kern_path(dir_name, ..., &amp;path);
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b>do_new_mount</b>()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct vfsmount *mnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt = <b>vfs_kern_mount</b>(type, flags, name, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct mount *mnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt = <b>alloc_vfsmnt</b>(name)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct mount *mnt = <b>kmem_cache_zalloc</b>(mnt_cache, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt_alloc_id(mnt);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt_devname = kstrdup(name, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;INIT_LIST_HEAD(&amp;mnt-&gt;mnt_hash);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct dentry *root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;root = <b>mount_fs</b>(type, flags, name, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;root = <b><font color="#ff0000"><i>type-&gt;mount</i></font></b>(type, flags, name, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt.mnt_root = root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt.mnt_sb = root-&gt;d_sb;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt_mountpoint = mnt-&gt;mnt.mnt_root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt_parent = mnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;list_add_tail(&amp;mnt-&gt;mnt_instance, &amp;root-&gt;d_sb-&gt;s_mounts);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>do_add_mount</b>()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;graft_tree();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>attach_recursive_mnt</b>();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1390466334988" FOLDED="true" ID="ID_348316753" MODIFIED="1390782212892" TEXT="Mounting the Root Filesystem">
<node CREATED="1390715914064" FOLDED="true" ID="ID_1514757978" MODIFIED="1390782212890">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The kernel mounts the special <b><i>rootfs</i></b>&#160;filesystem, which simply provides an empty directory that serves as initial mount point.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-1"/>
<node CREATED="1390725988057" ID="ID_1447513140" MODIFIED="1390726027951" TEXT="init/do_mounts.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390716742061" ID="ID_1921989238" MODIFIED="1390721988624">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type <b><font color="#6600ff"><i>rootfs_fs_type</i></font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;rootfs&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.mount&#160;&#160;&#160;&#160;&#160;&#160;= <b><font color="#0000ff"><i>rootfs_mount</i></font></b>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.kill_sb&#160;&#160;&#160;&#160;= kill_litter_super,
    </p>
    <p>
      };&#160;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1390718037455" FOLDED="true" ID="ID_1296322323" MODIFIED="1390782212890">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int __init <b><font color="#0000ff"><i>init_rootfs</i></font></b>(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;register_filesystem(&amp;<b><font color="#6600ff"><i>rootfs_fs_type</i></font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;init_ramfs_fs();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;register_filesystem(&amp;<b><font color="#6600ff"><i>ramfs_fs_type</i></font></b>);
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1390718702219" ID="ID_351392478" MODIFIED="1390719734020">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type <b><font color="#6600ff"><i>ramfs_fs_type</i></font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;ramfs&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.mount&#160;&#160;&#160;&#160;&#160;&#160;= ramfs_mount,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.kill_sb&#160;&#160;&#160;&#160;= ramfs_kill_sb,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.fs_flags&#160;&#160;&#160;= FS_USERNS_MOUNT,
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1390719608619" ID="ID_1770638017" MODIFIED="1390725779748">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct dentry *<b><font color="#0000ff"><i>rootfs_mount</i></font></b>(fs_type, flags, dev_name, data)
    </p>
    <p>
      &#160;&#160;&#160;&#160;mount_nodev(fs_type, flags, data, ramfs_fill_super);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct super_block *s;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;s = sget(fs_type, NULL, set_anon_super, flags, NULL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;s = alloc_super(type, flags);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kzalloc(sizeof(<b><font color="#ff0000"><i>struct super_block</i></font></b>),&#160;&#160;GFP_USER);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;set_anon_super(s, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;s-&gt;s_type = type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;strlcpy(s-&gt;s_id, type-&gt;name, sizeof(s-&gt;s_id));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>list_add_tail(&amp;<font color="#ff33ff">s-&gt;s_list</font>, &amp;<font color="#ff33ff">super_blocks</font>);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>hlist_add_head(&amp;<font color="#009900">s-&gt;s_instances</font>, &amp;<font color="#009900">type-&gt;fs_supers</font>);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ramfs_fill_super(s, data, flags &amp; MS_SILENT ? 1 : 0);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct inode *inode;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;inode = ramfs_get_inode(sb, ...);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kmem_cache_alloc(<b><font color="#ff0000"><i>inode_cachep</i></font></b>, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;inode-&gt;i_sb = sb;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>&#160;list_add(&amp;<font color="#0000ff">inode-&gt;i_sb_list</font>, &amp;<font color="#0000ff">inode-&gt;i_sb-&gt;s_inodes</font>);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sb-&gt;s_root = d_make_root(inode);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kmem_cache_alloc(<b><font color="#ff0000"><i>dentry_cache</i></font></b>, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><i>hlist_add_head(&amp;<font color="#ff9900">dentry-&gt;d_alias</font>, &amp;<font color="#ff9900">inode-&gt;i_dentry</font>);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;dentry-&gt;d_inode = inode;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return dget(<b><i>s-&gt;s_root</i></b>);
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1390715857104" ID="ID_1678381492" MODIFIED="1390715873600" TEXT="The kernel mounts the real root filesystem over the empty directory.">
<icon BUILTIN="full-2"/>
</node>
</node>
</node>
</node>
</map>
