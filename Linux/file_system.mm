<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1366184501690" ID="ID_106286176" MODIFIED="1400814934968" TEXT="File System">
<node CREATED="1369634187531" ID="ID_820278448" MODIFIED="1390808571182" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
      <tr>
        <td valign="top">
          <p class="docText">
            The Virtual Filesystem&#160;(also known as Virtual Filesystem Switch or <b><font color="#0000ff"><i>VFS</i></font></b>) is a kernel software layer that handles all system calls related to a standard Unix filesystem. Its main strength is providing a <b><font color="#0000ff"><i>common interface</i></font></b>&#160;to several kinds of filesystems.
          </p>
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1366189248236" ID="ID_1806333498" MODIFIED="1401184361127" POSITION="right" TEXT="The Common File Model">
<node CREATED="1390808647367" ID="ID_200050510" MODIFIED="1390808688107">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The kernel is responsible for <b><font color="#0000ff"><i>assigning the right set of pointers</i></font></b>&#160; to the file variable associated with each open file, and then for invoking the call specific to each filesystem that the f_op field points to.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1390808085478" ID="ID_725537960" MODIFIED="1390808102902">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/vfs-objects.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1366189506952" FOLDED="true" ID="ID_1566163540" MODIFIED="1401184389721" TEXT="Superblock Object">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1401084612168" ID="ID_1246098272" MODIFIED="1401084711410">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Stores information concerning a <b><i><font color="#0000ff">mounted filesystem</font></i></b>. For disk-based filesystems, this object usually corresponds to a <b><font color="#0000ff"><i>filesystem control block</i></font></b>&#160;stored on disk.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1369709722854" ID="ID_524176037" MODIFIED="1390460509440" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369709745280" ID="ID_425894147" MODIFIED="1401095910695">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>super_block</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct file_system_type *s_type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;<font color="#009900">s_instances</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#cc00cc">s_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *s_root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">s_inodes</font>; /* all inodes */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">s_files</font>; /* list of file objects */
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *<font color="#ff6600">s_fs_info</font>; /* Filesystem private info */
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct super_operations *<font color="#ff6600">s_op</font>;
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
<arrowlink COLOR="#ff6600" DESTINATION="ID_1924931812" ENDARROW="Default" ENDINCLINATION="1515;0;" ID="Arrow_ID_1719256538" STARTARROW="None" STARTINCLINATION="1515;0;"/>
<arrowlink COLOR="#ff6600" DESTINATION="ID_924113963" ENDARROW="Default" ENDINCLINATION="1101;0;" ID="Arrow_ID_1474680875" STARTARROW="None" STARTINCLINATION="1101;0;"/>
<arrowlink COLOR="#0000ff" DESTINATION="ID_1409554322" ENDARROW="Default" ENDINCLINATION="316;0;" ID="Arrow_ID_421093846" STARTARROW="None" STARTINCLINATION="316;0;"/>
<arrowlink COLOR="#0000ff" DESTINATION="ID_78514318" ENDARROW="Default" ENDINCLINATION="306;0;" ID="Arrow_ID_1076808875" STARTARROW="None" STARTINCLINATION="306;0;"/>
<node CREATED="1390460887973" ID="ID_1057163362" MODIFIED="1392193249893" TEXT="fs/super.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369710087938" ID="ID_1394783049" MODIFIED="1401094507456">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      spinlock_t sb_lock;
    </p>
    <p>
      struct list_head <font color="#cc00cc">super_blocks</font>; /* The first element of all superblock objects list */
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1401093893725" ID="ID_994060369" MODIFIED="1401094779672">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct super_block *<i><b>sget</b></i>(...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct super_block *s;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;s = alloc_super(type, flags);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;s-&gt;s_type = type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;list_add_tail(&amp;s-&gt;s_list, &amp;<font color="#ff00ff">super_blocks</font>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;hlist_add_head(&amp;s-&gt;s_instances, &amp;type-&gt;fs_supers);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1366189518401" FOLDED="true" ID="ID_494530525" MODIFIED="1401184390915" TEXT="inode Object">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1401090877793" ID="ID_1106429558" MODIFIED="1401090928236">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Stores <b><i><font color="#0000ff">general information</font></i></b>&#160;about a specific file. For disk-based filesystems, this object usually corresponds to a <b><font color="#0000ff"><i>file control block</i></font></b>&#160;stored on disk. Each inode object is associated with an inode number, which uniquely identifies the file within the filesystem.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1369723392961" ID="ID_57843421" MODIFIED="1390461489941" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369723297287" ID="ID_1409554322" MODIFIED="1401096459524">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>inode</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long i_ino;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct super_block *i_sb;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">i_sb_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff9900">i_dentry</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct inode_operations *i_op;
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
<node CREATED="1366189532051" FOLDED="true" ID="ID_198670532" MODIFIED="1401184392016" TEXT="Dentry Object">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1401088404812" ID="ID_1756749045" MODIFIED="1401092344361">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Stores information about the linking of a <b><i><font color="#0000ff">directory entry</font></i></b>&#160; (that is, a particular name of the file) with the corresponding file. Each disk-based filesystem stores this information in its <b><font color="#0000ff"><i>own particular way on disk</i></font></b>.&#160;
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1369729796600" ID="ID_370000365" MODIFIED="1390462018634" TEXT="include/linux/dcache.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369729854013" ID="ID_1560357739" MODIFIED="1401090718928">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>dentry</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct inode *d_inode;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head d_lru;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* LRU list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff9900">d_alias</font>; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* inode alias list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct hlist_bl_node d_hash;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* lookup hash list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct dentry_operations *d_op;
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
</node>
<node CREATED="1366189528521" FOLDED="true" ID="ID_1249395069" MODIFIED="1401184393020" TEXT="File Object">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1401091111484" ID="ID_1365965877" MODIFIED="1401155091859">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Stores information about the interaction&#160;between an<b><i><font color="#0000ff">&#160;open file </font></i></b>and a process. This information exists only in <b><font color="#0000ff"><i>kernel memory </i></font></b>during the period when a process has the file open.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1369636883365" ID="ID_65479377" MODIFIED="1390462325372" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369636711023" ID="ID_78514318" MODIFIED="1401097319894">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>file</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;loff_t f_pos;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *private_data;
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_long_t f_count;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct path <i><b>f_path</b></i>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">fu_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct file_operations *f_op;
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
<node CREATED="1369639073539" ID="ID_1376766354" MODIFIED="1390462302346" TEXT="include/linux/path.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369639104052" ID="ID_448584187" MODIFIED="1401097326493">
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
      &#160;&#160;&#160;&#160;struct dentry *<i><b>dentry</b></i>;
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
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
</node>
<node CREATED="1366185168265" FOLDED="true" ID="ID_1445111663" MODIFIED="1401180024572" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The Ext2 Filesystem Layout
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1392195627068" FOLDED="true" ID="ID_502109639" MODIFIED="1401174926075" TEXT="Layouts of an Ext2 partition and of an Ext2 block group">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="idea"/>
<node CREATED="1401173221918" ID="ID_545662573" MODIFIED="1401173229669">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The first block in each Ext2 partition is never managed by the Ext2 filesystem, because it is reserved for the partition boot sector. The rest of the Ext2 partition is split into block groups.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1401173233320" ID="ID_1691356969" MODIFIED="1401173342254" TEXT="Each block in a block group contains one of the following pieces of information">
<node CREATED="1401173343566" ID="ID_185199652" MODIFIED="1401173367894" TEXT="A copy of the filesystem&apos;s superblock"/>
<node CREATED="1401173368977" ID="ID_101298366" MODIFIED="1401173388018" TEXT="A copy of the group of block group descriptors"/>
<node CREATED="1401173389270" ID="ID_1870270391" MODIFIED="1401173400657" TEXT="A data block bitmap"/>
<node CREATED="1401173401752" ID="ID_16452209" MODIFIED="1401173413080" TEXT="An inode bitmap"/>
<node CREATED="1401173413627" ID="ID_668637812" MODIFIED="1401173425563" TEXT="A table of inodes"/>
<node CREATED="1401173426796" ID="ID_1468296194" MODIFIED="1401173446578" TEXT="A chunk of data that belongs to a file; i.e., data blocks"/>
</node>
</node>
<node CREATED="1391846743251" ID="ID_424384855" MODIFIED="1401155450112">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/ext2-layouts.jpg" />
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1392194982697" ID="ID_579282166" MODIFIED="1401156044251">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/ext2-super-block.jpg" />
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1391847080876" ID="ID_1315735517" MODIFIED="1401158028918" TEXT="Super Block">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1391847425869" ID="ID_1215890267" MODIFIED="1391847452433" TEXT="fs/ext2/ext2.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1391847454143" ID="ID_171018086" MODIFIED="1401155897192">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* second extended-fs super-block data <b><i><font color="#0000ff">in disk</font></i></b>&#160;*/
    </p>
    <p>
      struct <b><i>ext2_super_block</i></b>&#160;{&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;s_inodes_count;&#160;&#160;&#160;&#160;&#160;/* Inodes count */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;s_blocks_count;&#160;&#160;&#160;&#160;&#160;/* Blocks count */
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
<node CREATED="1391847425869" ID="ID_433791883" MODIFIED="1391847452433" TEXT="fs/ext2/ext2.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1392191240866" ID="ID_1924931812" MODIFIED="1401156763285">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* second extended-fs super-block data <b><i><font color="#0000ff">in memory </font></i></b>*/
    </p>
    <p>
      struct <b><i>ext2_sb_info</i></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Most of the disk superblock fields */
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct ext2_super_block * s_es;&#160;&#160;&#160;/* Pointer to the super block in the buffer */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct buffer_head * s_sbh;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Buffer containing the super block */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct buffer_head ** s_group_desc;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long s_desc_per_block; /* Number of group descriptors per block */
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
<node CREATED="1392191766927" ID="ID_210501989" MODIFIED="1401156739448" TEXT="They&apos;re always cached in RAM.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1392271880167" ID="ID_160407700" MODIFIED="1392271904305" TEXT="fs/ext2/super.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1392271652740" ID="ID_924113963" MODIFIED="1401155657287">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static const struct <i><b>super_operations</b></i>&#160;<i><font color="#6600ff"><b>ext2_sops</b></font></i>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.alloc_inode&#160;&#160;&#160;&#160;= <i><b>ext2_alloc_inode</b></i>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.destroy_inode&#160;&#160;= ext2_destroy_inode,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.write_inode&#160;&#160;&#160;&#160;= ext2_write_inode,
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1392272101091" ID="ID_606554033" MODIFIED="1401155734216">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      fs/ext2/super.c
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1401157101394" ID="ID_1161620696" MODIFIED="1401157156213">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct inode *<i><b>ext2_alloc_inode</b></i>(struct super_block *sb)
    </p>
    <p>
      {&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160; <i><b>struct ext2_inode_info *ei;</b></i>
    </p>
    <p>
      &#160;&#160;&#160;&#160;ei = (struct ext2_inode_info *)<i><b>kmem_cache_alloc</b></i>(ext2_inode_cachep, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160; <i><b>return &amp;ei-&gt;vfs_inode;</b></i>
    </p>
    <p>
      }&#160;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1391847746567" ID="ID_891006467" MODIFIED="1401158030526" TEXT="Blocks Group Descriptor">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1391847777035" ID="ID_993193935" MODIFIED="1391847798038" TEXT="fs/ext2/ext2.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1391847752473" ID="ID_97084042" MODIFIED="1401173539465">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>ext2_group_desc</b></i>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;bg_block_bitmap;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Blocks bitmap block */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;bg_inode_bitmap;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Inodes bitmap block */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;<b><i><font color="#0000ff">bg_inode_table</font></i></b>;&#160;&#160;&#160;&#160;&#160;/* Inodes table block */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le16&#160;&#160;bg_free_blocks_count;&#160;&#160;&#160;/* Free blocks count */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le16&#160;&#160;bg_free_inodes_count;&#160;&#160;&#160;/* Free inodes count */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le16&#160;&#160;bg_used_dirs_count; /* Directories count */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le16&#160;&#160;bg_pad;
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;bg_reserved[3];
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1392191766927" ID="ID_829881109" MODIFIED="1401156739448" TEXT="They&apos;re always cached in RAM.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1391848584238" ID="ID_125976382" MODIFIED="1401158031779" TEXT="inode">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1391847777035" ID="ID_701450684" MODIFIED="1391847798038" TEXT="fs/ext2/ext2.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1391849111548" ID="ID_1052189794" MODIFIED="1401156818123" TEXT="All inodes have the same size: 128 bytes.">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1391848594729" ID="ID_1113220723" MODIFIED="1401156860424">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* second extended file system inode data <b><i><font color="#0000ff">in disk</font></i></b>&#160;*/&#160;
    </p>
    <p>
      struct <b><i>ext2_inode</i></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;i_size;&#160;&#160;&#160;&#160;&#160;/* Size in bytes */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;i_blocks;&#160;&#160;&#160;/* Blocks count */
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
<node CREATED="1391847777035" ID="ID_619749437" MODIFIED="1392191624381" TEXT="fs/ext2/ext2.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1392191564885" FOLDED="true" ID="ID_722784429" MODIFIED="1401174945969">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* second extended file system inode data <b><i><font color="#0000ff">in memory</font></i></b>&#160;*/&#160;&#160;&#160;
    </p>
    <p>
      struct <b><i>ext2_inode_info</i></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Most of the fields found in the disk's inode structure */
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct inode <b><font color="#0000ff"><i>vfs_inode</i></font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;__u32&#160;&#160;&#160;i_block_group;
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
<node CREATED="1392362909035" ID="ID_921167744" MODIFIED="1392362923619">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;/*
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* i_block_group is the number of the block group which contains
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* this file's inode.&#160;&#160;Constant across the lifetime of the inode,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* it is used for making block allocation decisions - we try to
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* place a file's data blocks near its inode block, and new inodes
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* near to their parent directory's inode.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;*/
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1392191858862" ID="ID_797108993" MODIFIED="1401156800068" TEXT="They&apos;re dynamic cached in RAM.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1392360679061" ID="ID_583217440" MODIFIED="1401155786022" TEXT="Creating/Deleting inodes">
<node CREATED="1392360728445" ID="ID_1042050029" MODIFIED="1392360756307" TEXT="fs/ext2/ialloc.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1392360758404" ID="ID_342005397" MODIFIED="1401157156213">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>ext2_new_inode</b></i>(dir, mode, qstr)
    </p>
    <p>
      &#160;&#160;&#160;&#160;inode = <i><b>new_inode</b></i>(sb);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<i><font color="#0000ff"><b>sb-&gt;s_op-&gt;alloc_inode(sb);</b></font></i>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;group = <i><b>find_group_orlov</b></i>(sb, dir);
    </p>
    <p>
      &#160;&#160;&#160;&#160;bitmap_bh = <i><b>read_inode_bitmap</b></i>(sb, group);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1161620696" ENDARROW="Default" ENDINCLINATION="728;0;" ID="Arrow_ID_39435564" STARTARROW="None" STARTINCLINATION="728;0;"/>
</node>
<node CREATED="1392363597934" ID="ID_1674759035" MODIFIED="1392363672234">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>ext2_free_inode</b></i>&#160;(inode)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1392275083129" ID="ID_1821568784" MODIFIED="1401155786025" TEXT="File">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1392275095565" ID="ID_613126620" MODIFIED="1392275117116" TEXT="fs/ext2/file.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1392275119884" ID="ID_1449411037" MODIFIED="1392275210037">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const struct file_operations <i><b>ext2_file_operations</b></i>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.llseek&#160;&#160;&#160;&#160;&#160;= generic_file_llseek,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.read&#160;&#160;&#160;&#160;&#160;&#160;= do_sync_read,&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;.write&#160;&#160;&#160;&#160;&#160;&#160;= do_sync_write,&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...&#160;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1391849964587" ID="ID_965204423" MODIFIED="1401155786032" TEXT="File Types Vs. Disk Blocks">
<node CREATED="1391850038444" FOLDED="true" ID="ID_1178286778" MODIFIED="1401174997608">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><i><font color="#000000">Regular file</font></i></b>&#160;- When first created, a regular file is <b><font color="#0000ff"><i>empty</i></font></b>&#160; and needs <b><font color="#0000ff"><i>no data blocks</i></font></b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1392275095565" ID="ID_1338251099" MODIFIED="1392275634255" TEXT="fs/ext2/file.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1392275593676" ID="ID_1684740040" MODIFIED="1392275624816">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const struct inode_operations <i><b>ext2_file_inode_operations</b></i>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.setattr&#160;&#160;&#160;&#160;= ext2_setattr,&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;.get_acl&#160;&#160;&#160;&#160;= ext2_get_acl,&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;.fiemap&#160;&#160;&#160;&#160;&#160;= ext2_fiemap,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1391850291085" FOLDED="true" ID="ID_245446588" MODIFIED="1401157367460">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Directory</b></i>&#160;- Ext2 implements directories as a special kind of file whose data blocks store <i><font color="#0000ff"><b>filenames</b></font></i>&#160;together with the corresponding <i><font color="#0000ff"><b>inode numbers</b></font></i>.
    </p>
  </body>
</html></richcontent>
<node CREATED="1392275667587" ID="ID_796676072" MODIFIED="1392275674985" TEXT="fs/ext2/namei.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1392275677712" ID="ID_1765061878" MODIFIED="1392275725988">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const struct inode_operations <i><b>ext2_dir_inode_operations</b></i>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.create&#160;&#160;&#160;&#160;&#160;= ext2_create,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.lookup&#160;&#160;&#160;&#160;&#160;= ext2_lookup,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.link&#160;&#160;&#160;&#160;&#160;&#160;&#160;= ext2_link,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.unlink&#160;&#160;&#160;&#160;&#160;= ext2_unlink,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.symlink&#160;&#160;&#160;&#160;= ext2_symlink,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.mkdir&#160;&#160;&#160;&#160;&#160;&#160;= ext2_mkdir,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.rmdir&#160;&#160;&#160;&#160;&#160;&#160;= ext2_rmdir,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.mknod&#160;&#160;&#160;&#160;&#160;&#160;= ext2_mknod,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.rename&#160;&#160;&#160;&#160;&#160;= ext2_rename,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.setattr&#160;&#160;&#160;&#160;= ext2_setattr,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.get_acl&#160;&#160;&#160;&#160;= ext2_get_acl,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.tmpfile&#160;&#160;&#160;&#160;= ext2_tmpfile,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1391850651077" FOLDED="true" ID="ID_868870268" MODIFIED="1401157403236">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Symbolic link, Device file, pipe, and socket</b></i>&#160;-&#160;<b><i><font color="#0000ff">No data blocks</font></i></b>&#160;are required for these kinds of files. All the necessary information is stored in the inode.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1392275766461" ID="ID_1730765357" MODIFIED="1392275781912" TEXT="fs/ext2/symlink.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1392275783390" ID="ID_1088996281" MODIFIED="1392275834653">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const struct inode_operations <i><b>ext2_symlink_inode_operations</b></i>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.readlink&#160;&#160;&#160;= generic_readlink,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.follow_link&#160;&#160;&#160;&#160;= page_follow_link_light,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.put_link&#160;&#160;&#160;= page_put_link,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.setattr&#160;&#160;&#160;&#160;= ext2_setattr,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1392275786326" ID="ID_1857921724" MODIFIED="1392275823744">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const struct inode_operations <i><b>ext2_fast_symlink_inode_operations</b></i>&#160; = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.readlink&#160;&#160;&#160;= generic_readlink,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.follow_link&#160;&#160;&#160;&#160;= ext2_follow_link,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.setattr&#160;&#160;&#160;&#160;= ext2_setattr,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1392796491430" FOLDED="true" ID="ID_1161093724" MODIFIED="1401176189046" TEXT="Data Blocks Addressing">
<node CREATED="1392796741402" ID="ID_901181190" MODIFIED="1392796796456">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Derive from the offset <span class="docEmphasis">f</span>&#160;the <i><b>file block number</b></i>&#160;the index of the block that contains the character at offset <span class="docEmphasis">f</span>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1392796677932" ID="ID_422838152" MODIFIED="1392796808621">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Translate the file block number to the corresponding <i><b>logical block number</b></i>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1392797037480" ID="ID_98169533" MODIFIED="1392797056820">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/ext2-file-data-blocks.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1392260388458" FOLDED="true" ID="ID_843916933" MODIFIED="1401177266703" POSITION="right" TEXT="The Ext2 Filesystem Creating ">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1392260394342" ID="ID_66919459" MODIFIED="1392270701670" TEXT="format it so that the disk driver can read and write blocks on it. ">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1392260426701" ID="ID_1665032576" MODIFIED="1401174133299" TEXT="create a filesystem, which means setting up the data structures.">
<icon BUILTIN="full-2"/>
<node CREATED="1392261192603" ID="ID_1135311498" MODIFIED="1401155770650">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>mke2fs</b></i>
    </p>
  </body>
</html></richcontent>
<node CREATED="1392269945767" ID="ID_1087383176" MODIFIED="1392270560556" TEXT="default options:">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1392261577141" ID="ID_1727663025" MODIFIED="1392270080118">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;Block size: 1,024 bytes (default value for a small filesystem)
    </p>
    <p>
      &#160;&#160;&#160; Fragment size: block size (block fragmentation is not implemented)
    </p>
    <p>
      &#160;&#160;&#160; Number of allocated inodes: 1 inode for each 8,192 bytes
    </p>
    <p>
      &#160;&#160;&#160; Percentage of reserved blocks: 5 percent
    </p>
  </body>
</html></richcontent>
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1392261240767" ID="ID_612251895" MODIFIED="1392261539450" TEXT="Initializes the superblock and the group descriptors.">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1392261330464" ID="ID_1513893094" MODIFIED="1392261541928" TEXT="Optionally, checks whether the partition contains defective blocks; if so, it creates a list of defective blocks.">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1392261459336" ID="ID_1155158935" MODIFIED="1392261543950" TEXT="For each block group, reserves all the disk blocks needed to store the superblock, the group descriptors, the inode table, and the two bitmaps.">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1392261472247" ID="ID_1540010115" MODIFIED="1392261545879" TEXT="Initializes the inode bitmap and the data map bitmap of each block group to 0.">
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1392261488232" ID="ID_1753097283" MODIFIED="1392261548072" TEXT="Initializes the inode table of each block group.">
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1392261498224" ID="ID_421372869" MODIFIED="1392261550469" TEXT="Creates the /root directory.">
<icon BUILTIN="full-6"/>
</node>
<node CREATED="1392261514548" ID="ID_151351027" MODIFIED="1392261553031" TEXT="Creates the lost+found directory, which is used by e2fsck to link the lost and found defective blocks.">
<icon BUILTIN="full-7"/>
</node>
<node CREATED="1392261525635" ID="ID_1029021921" MODIFIED="1392261556412" TEXT="Updates the inode bitmap and the data block bitmap of the block group in which the two previous directories have been created.">
<icon BUILTIN="full-8"/>
</node>
<node CREATED="1392261533434" ID="ID_1495302522" MODIFIED="1392261559197" TEXT="Groups the defective blocks (if any) in the lost+found directory.">
<icon BUILTIN="full-9"/>
</node>
</node>
<node CREATED="1392270387188" ID="ID_1829571225" MODIFIED="1401155786079" TEXT="Ext2 block allocation for a floppy disk">
<node CREATED="1392270645557" ID="ID_496055575" MODIFIED="1392270645557" TEXT=""/>
<node CREATED="1392270290866" ID="ID_1438462216" MODIFIED="1392270305479">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/ext2-block-floppy.png" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1370239154930" FOLDED="true" ID="ID_282454318" MODIFIED="1401177268845" POSITION="right" TEXT="Filesystem Types">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1401155226209" ID="ID_840208795" MODIFIED="1401175902316">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Disk-based filesystems (<font color="#000000"><b>Ext2/Ext3</b></font>, DOS/<b>FAT</b>/NTFS)
    </p>
  </body>
</html></richcontent>
<node CREATED="1401176355292" ID="ID_994584615" MODIFIED="1401176361605" TEXT="The Ext2 Filesystem"/>
<node CREATED="1392948950382" ID="ID_862362262" MODIFIED="1401173827135" TEXT="The Ext3 Filesystem">
<node CREATED="1392948955478" ID="ID_282656870" MODIFIED="1401158381697">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The goal of a <span class="docEmphasis"><i><b>journaling filesystem</b></i></span>&#160;is to avoid running time-consuming consistency checks on the whole filesystem by looking instead in a special disk area that contains the most recent disk write operations named <span class="docEmphasis"><i><b>journal</b></i></span>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1392949085322" ID="ID_1440452817" MODIFIED="1392949578186">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      First, a copy of the blocks to be <i><b>written is stored in the journal</b></i>;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1392949524834" ID="ID_567409617" MODIFIED="1392949590017">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      then, when the I/O data transfer to the journal is completed (in short, data is committed to the journal), the blocks are <i><b>written in the filesystem</b></i>. When the I/O data transfer to the filesystem terminates (data is committed to the filesystem), the copies of the blocks in the journal are discarded.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1392949631950" FOLDED="true" ID="ID_1190283307" MODIFIED="1401158437872" TEXT="It ensures consistency only at the system call level.">
<node CREATED="1392950704246" ID="ID_1099501848" MODIFIED="1392950744770">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <span class="docEmphBoldItalic"><i><b>The system failure occurred before a commit to the journal</b></i></span>
    </p>
    <p class="docList">
      Either the copies of the blocks relative to the high-level change are missing from the journal or they are incomplete; in both cases, <i>e2fsck</i>&#160; ignores them.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1392950748613" ID="ID_1406962962" MODIFIED="1392950775431">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <span class="docEmphBoldItalic"><i><b>The system failure occurred after a commit to the journal</b></i></span>
    </p>
    <p class="docList">
      The copies of the blocks are valid, and <i>e2fsck</i>&#160;writes them into the filesystem.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1392950812802" FOLDED="true" ID="ID_2071563" MODIFIED="1401158445862" TEXT="journaling modes">
<node CREATED="1392950834609" ID="ID_591598790" MODIFIED="1392950874612" TEXT="Journal - All filesystem data and metadata changes are logged into the journal."/>
<node CREATED="1392950845337" ID="ID_951096010" MODIFIED="1392950923084" TEXT="Ordered - Only changes to filesystem metadata are logged into the journal. However, the Ext3 filesystem groups metadata and relative data blocks so that data blocks are written to disk before the metadata."/>
<node CREATED="1392950925150" ID="ID_1059379170" MODIFIED="1392950951292" TEXT="Writeback - Only changes to filesystem metadata are logged"/>
</node>
<node CREATED="1392950963749" FOLDED="true" ID="ID_312995911" MODIFIED="1401158452671" TEXT="JBD (Journaling Block Device)">
<node CREATED="1392951018978" ID="ID_596303847" MODIFIED="1392951055712" TEXT="Log record - Describes a single update of a disk block of the journaling filesystem."/>
<node CREATED="1392951056794" ID="ID_1899805679" MODIFIED="1392951095917" TEXT="Atomic operation handle - Includes log records relative to a single high-level change of the filesystem; typically, each system call modifying the filesystem gives rise to a single atomic operation handle."/>
<node CREATED="1392951130167" ID="ID_445433860" MODIFIED="1392951389177" TEXT="Transaction - Includes several atomic operation handles whose log records are marked valid for e2fsck at the same time."/>
</node>
</node>
</node>
<node CREATED="1366188682100" ID="ID_333407511" MODIFIED="1366188750105" TEXT="Network filesystems (NFS)"/>
<node CREATED="1366188692444" ID="ID_1349695691" MODIFIED="1366188743974" TEXT="Special filesystems (/proc)"/>
</node>
<node CREATED="1390462557543" FOLDED="true" ID="ID_1710226371" MODIFIED="1401177297691" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Register Filesystem
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1401169337756" ID="ID_1700202381" MODIFIED="1401169412399" TEXT="describe a specific variant of a filesystem">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1370239251786" ID="ID_1530967015" MODIFIED="1401174765310" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1370239310274" ID="ID_401191182" MODIFIED="1401160633951">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>file_system_type</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;const char *<b>name</b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int fs_flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *(*<b><i><font color="#ff0000">mount</font></i></b>) (struct file_system_type *, int, const char *, void *);
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
</html>
</richcontent>
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
<node CREATED="1370239712086" FOLDED="true" ID="ID_1677955300" MODIFIED="1401176423717">
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
      &#160;&#160;&#160;&#160;p = <b><i>find_filesystem</i></b>(fs-&gt;name, strlen(fs-&gt;name));
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><i>*p = fs;</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_unlock(&amp;file_systems_lock);
    </p>
  </body>
</html></richcontent>
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
</node>
<node CREATED="1390466308341" FOLDED="true" ID="ID_1895733499" MODIFIED="1401178237557" POSITION="right" TEXT="Mounting Filesystem">
<node CREATED="1401169291158" ID="ID_946653108" MODIFIED="1401170008674" TEXT="describes a mounted instance of a filesystem">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1390529852805" ID="ID_1289092885" MODIFIED="1390539601224" TEXT="fs/mount.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390529874076" ID="ID_818732699" MODIFIED="1401084059564">
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
<node CREATED="1390466334988" ID="ID_348316753" MODIFIED="1401178222564" TEXT="Mounting the Root Filesystem">
<node CREATED="1390715914064" ID="ID_1514757978" MODIFIED="1401175454456">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The kernel mounts the special <b><i>rootfs</i></b>&#160;filesystem, which simply provides an empty directory that serves as initial mount point.
    </p>
  </body>
</html></richcontent>
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
</html></richcontent>
</node>
<node CREATED="1390718037455" ID="ID_1296322323" MODIFIED="1401084059568">
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
</html></richcontent>
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
<node CREATED="1390715857104" ID="ID_1678381492" MODIFIED="1401175457673" TEXT="The kernel mounts the real root filesystem over the empty directory.">
<icon BUILTIN="full-2"/>
<node CREATED="1390725988057" ID="ID_1412475266" MODIFIED="1390726027951" TEXT="init/do_mounts.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390789538625" ID="ID_1202772895" MODIFIED="1390792387676">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      prepare_namespace()
    </p>
    <p>
      &#160;&#160;&#160;&#160;mount_root()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#ff0000"><i>create_dev</i></font><i>(&quot;/dev/root&quot;, ROOT_DEV);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sys_mknod();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mount_block_root(&quot;/dev/root&quot;, root_mountflags);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;get_fs_names(fs_names);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;do_mount_root();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>&#160;&#160;&#160;&#160;<font color="#ff0000">sys_mount</font>(&quot;/dev/root&quot;, &quot;/root&quot;, fs, flags, data); </i></b>
    </p>
    <p>
      <b><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </i></b>&#160;&#160;&#160;&#160;sys_chdir(&quot;/root&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;sys_mount(&quot;.&quot;, &quot;/&quot;, NULL, MS_MOVE, NULL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;sys_chroot(&quot;.&quot;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1390466320756" ID="ID_1467198402" MODIFIED="1401178224476" TEXT="Mounting a Generic Filesystem">
<node CREATED="1390719293162" ID="ID_786173474" MODIFIED="1401169995618">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">$</font><font color="#ff0000">mount</font>&#160;-t ext2 /dev/fd0 /flp
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1390466770036" ID="ID_1614029978" MODIFIED="1401169985182" TEXT="fs/namespace.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390466786651" ID="ID_312799230" MODIFIED="1392271561658">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><font color="#ff0000"><b>do_mount</b></font></i>(dev_name, dir_name, type_page, flags, data_page)
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
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;root = <i><font color="#ff0000"><b>type-&gt;mount</b></font></i>(type, flags, name, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <i><font color="#ff0000"><b>ext2_fill_super</b></font><font color="#000000">(struct super_block *sb, void *data, int silent); </font></i>
    </p>
    <p>
      <i><font color="#000000">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...</font></i>
    </p>
    <p>
      <i><font color="#ff0000"><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </b></font></i><font color="#000000">sb-&gt;s_op = &amp;</font><i><font color="#0000ff"><b>ext2_sops</b></font></i><font color="#000000">; </font>
    </p>
    <p>
      <font color="#000000">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...</font>
    </p>
    <p>
      <i><font color="#0000ff"><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </b></font></i>...
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
</html></richcontent>
</node>
</node>
<node CREATED="1390795376383" FOLDED="true" ID="ID_1295606713" MODIFIED="1401177881839" TEXT="Unmounting a Filesystem">
<node CREATED="1390466770036" ID="ID_1131833807" MODIFIED="1390539625013" TEXT="fs/namespace.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390795496731" ID="ID_781774070" MODIFIED="1390796556613">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000"><i>do_umount</i></font></b>(mnt, flags)
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct super_block *sb = mnt-&gt;mnt.mnt_sb;
    </p>
    <p>
      &#160;&#160;&#160;&#160;sb-&gt;s_op-&gt;umount_begin(sb);
    </p>
    <p>
      &#160;&#160;&#160;&#160;do_remount_sb(sb, MS_RDONLY, NULL, 0);
    </p>
    <p>
      &#160;&#160;&#160; <b><i>umount_tree</i></b>(mnt, 2);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1390806941757" FOLDED="true" ID="ID_1020061402" MODIFIED="1401178267452" POSITION="right" TEXT="VFS System Calls">
<node CREATED="1390808421418" ID="ID_1535044358" MODIFIED="1390808427617" TEXT="$ cp /floppy/TEST /tmp/test">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1390808325603" ID="ID_612790801" MODIFIED="1390808371712">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/vfs-operation.jpg" />
  </body>
</html></richcontent>
</node>
<node CREATED="1390797145579" ID="ID_1345245329" MODIFIED="1401083982545" TEXT="Pathname Lookup">
<node CREATED="1390797228437" ID="ID_1730871698" MODIFIED="1390804945709">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      How it derives an <b><font color="#ff0000"><i>inode</i></font></b>&#160;from the corresponding file pathname.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1390804515032" ID="ID_1295065751" MODIFIED="1390804536052" TEXT="include/linux/namei.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390804516976" ID="ID_1860249032" MODIFIED="1401084059572">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff"><i>nameidata</i></font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><i>struct path <font color="#6600ff">path</font>;</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct qstr last;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct path root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct inode&#160;&#160;&#160;&#160;*inode; /* path.dentry.d_inode */
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned&#160;&#160;&#160;&#160;seq, m_seq;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;last_type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned&#160;&#160;&#160;&#160;depth;
    </p>
    <p>
      &#160;&#160;&#160;&#160;char *saved_names[MAX_NESTED_LINKS + 1];
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1390804414918" ID="ID_1409903065" MODIFIED="1390804471865" TEXT="include/linux/path.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390804448298" ID="ID_1135010221" MODIFIED="1390804814053">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff"><i>path</i></font></b>&#160;{
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
<node CREATED="1390804399572" ID="ID_140812146" MODIFIED="1390804412946" TEXT="fs/namei.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390797224885" ID="ID_7807152" MODIFIED="1390807602529">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      vfs_path_lookup(dentry, mnt, name, flags, <b><font color="#6600ff"><i>path</i></font></b>)
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#6600ff"><i>struct nameidata nd;</i></font></b>&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;nd.root.dentry = dentry;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;nd.root.mnt = mnt;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;do_path_lookup(AT_FDCWD, name, flags | LOOKUP_ROOT, &amp;nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;filename_lookup(dfd, &amp;filename, flags, nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#ff0000"><i>path_lookupat</i></font></b>(dfd, name-&gt;name, flags | LOOKUP_RCU, nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>path_init</i></b>(dfd, name, flags | LOOKUP_PARENT, nd, &amp;base);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>link_path_walk</i></b>(name, nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>lookup_last</i></b>(nd, &amp;path);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><i>follow_link</i></b>(&amp;link, nd, &amp;cookie);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><i>complete_walk</i></b>(nd);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390806966677" ID="ID_519837347" MODIFIED="1401083988374" TEXT="open()">
<node CREATED="1390807002602" ID="ID_917440337" MODIFIED="1390807022860" TEXT="fs/open.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390807025275" ID="ID_66555935" MODIFIED="1390807610358">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      SYSCALL_DEFINE3(<b><font color="#ff0000"><i>open</i></font></b>, const char __user *, filename, int, flags, umode_t, mode)
    </p>
    <p>
      &#160;&#160;&#160;&#160;do_sys_open(AT_FDCWD, filename, flags, mode);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;do_filp_open(dfd, tmp, &amp;op);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#ff0000"><i>path_openat</i></font></b>(dfd, pathname, &amp;nd, op, flags | LOOKUP_RCU);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>path_init</i></b>(dfd, pathname-&gt;name, flags | LOOKUP_PARENT, nd, &amp;base);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>link_path_walk</i></b>(pathname-&gt;name, nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>do_last</i></b>(nd, &amp;path, file, op, &amp;opened, pathname);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><i>follow_link</i></b>(&amp;link, nd, &amp;cookie);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390806992034" ID="ID_276835583" MODIFIED="1390806994390" TEXT="read()"/>
<node CREATED="1390806995089" ID="ID_976246064" MODIFIED="1390806997221" TEXT="write()"/>
<node CREATED="1390806997898" ID="ID_733685696" MODIFIED="1390806999933" TEXT="close()"/>
</node>
</node>
</map>
