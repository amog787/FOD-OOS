.class Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;
.super Ljava/lang/Object;
.source "PackageManagerBackupAgent.java"

# interfaces
.implements Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/PackageManagerBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyRestoreDataConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/PackageManagerBackupAgent;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/backup/PackageManagerBackupAgent;
    .param p2, "x1"    # Lcom/android/server/backup/PackageManagerBackupAgent$1;

    .line 670
    invoke-direct {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;)V

    return-void
.end method


# virtual methods
.method public consumeRestoreData(Landroid/app/backup/BackupDataInput;)V
    .locals 17
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v1, "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 675
    .local v2, "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;>;"
    const/4 v3, -0x1

    .line 681
    .local v3, "storedSystemVersion":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 682
    .local v4, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v5

    .line 687
    .local v5, "dataSize":I
    new-array v6, v5, [B

    .line 688
    .local v6, "inputBytes":[B
    const/4 v7, 0x0

    move-object/from16 v8, p1

    invoke-virtual {v8, v6, v7, v5}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 689
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 690
    .local v7, "inputBuffer":Ljava/io/ByteArrayInputStream;
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 692
    .local v9, "inputBufferStream":Ljava/io/DataInputStream;
    const-string v10, "@meta@"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 693
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 695
    .local v10, "storedSdkVersion":I
    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v11, v10}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$202(Lcom/android/server/backup/PackageManagerBackupAgent;I)I

    .line 696
    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$302(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$402(Lcom/android/server/backup/PackageManagerBackupAgent;Z)Z

    .line 704
    .end local v10    # "storedSdkVersion":I
    move-object/from16 v16, v1

    goto :goto_2

    :cond_0
    const-string v10, "@home@"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 705
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 706
    .local v10, "cn":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$502(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 707
    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$602(Lcom/android/server/backup/PackageManagerBackupAgent;J)J

    .line 708
    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$702(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v9}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$802(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 716
    .end local v10    # "cn":Ljava/lang/String;
    move-object/from16 v16, v1

    goto :goto_2

    .line 718
    :cond_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 720
    .local v10, "versionCodeInt":I
    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_2

    .line 721
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .local v11, "versionCode":J
    goto :goto_1

    .line 723
    .end local v11    # "versionCode":J
    :cond_2
    int-to-long v11, v10

    .line 725
    .restart local v11    # "versionCode":J
    :goto_1
    invoke-static {v9}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$900(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v13

    .line 732
    .local v13, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v16, v1

    goto :goto_3

    .line 738
    :cond_3
    new-instance v14, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v14}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 739
    .local v14, "app":Landroid/content/pm/ApplicationInfo;
    iput-object v4, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 740
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v15, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-object/from16 v16, v1

    .end local v1    # "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v16, "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v1, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-direct {v15, v1, v11, v12, v13}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .end local v10    # "versionCodeInt":I
    .end local v11    # "versionCode":J
    .end local v13    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v14    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    .line 745
    .local v1, "readNextHeader":Z
    if-nez v1, :cond_4

    .line 748
    nop

    .line 753
    .end local v1    # "readNextHeader":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "dataSize":I
    .end local v6    # "inputBytes":[B
    .end local v7    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .end local v9    # "inputBufferStream":Ljava/io/DataInputStream;
    iget-object v1, v0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-static {v1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->access$1002(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 754
    return-void

    .line 750
    :cond_4
    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 732
    .end local v16    # "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v1, "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "dataSize":I
    .restart local v6    # "inputBytes":[B
    .restart local v7    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "inputBufferStream":Ljava/io/DataInputStream;
    .restart local v10    # "versionCodeInt":I
    .restart local v11    # "versionCode":J
    .restart local v13    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_5
    move-object/from16 v16, v1

    .line 733
    .end local v1    # "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v16    # "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not restoring package "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " since it appears to have no signatures."

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "PMBA"

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v1, v16

    goto/16 :goto_0
.end method
