.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .locals 20
    .param p0, "instream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteObserver"    # Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .param p5, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "I)Z"
        }
    .end annotation

    .line 78
    .local p3, "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .local p4, "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    move-object/from16 v1, p5

    const/4 v2, 0x1

    .line 81
    .local v2, "okay":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing from backup: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BackupManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v4, v0

    .line 86
    .local v4, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 87
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v6, v0

    .line 89
    .local v6, "installer":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c

    move-object v7, v0

    .line 90
    .local v7, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v8, p6

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    move v9, v0

    .line 93
    .local v9, "sessionId":I
    :try_start_2
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-object/from16 v16, v0

    .line 94
    .local v16, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_3
    iget-object v11, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-wide/16 v12, 0x0

    iget-wide v14, v1, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v10, v16

    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object v10, v0

    .line 96
    .local v10, "apkStream":Ljava/io/OutputStream;
    const v0, 0x8000

    :try_start_4
    new-array v11, v0, [B

    .line 97
    .local v11, "buffer":[B
    iget-wide v12, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 98
    .local v12, "size":J
    :goto_0
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    const/4 v15, 0x0

    if-lez v14, :cond_2

    .line 99
    :try_start_5
    array-length v14, v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    int-to-long v0, v14

    cmp-long v0, v0, v12

    if-gez v0, :cond_0

    :try_start_6
    array-length v0, v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-long v0, v0

    goto :goto_1

    .line 94
    .end local v11    # "buffer":[B
    .end local v12    # "size":J
    :catchall_0
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    move-object/from16 v15, p7

    move v14, v2

    move-object v2, v0

    goto/16 :goto_a

    .line 99
    .restart local v11    # "buffer":[B
    .restart local v12    # "size":J
    :cond_0
    move-wide v0, v12

    .line 100
    .local v0, "toRead":J
    :goto_1
    long-to-int v14, v0

    move-wide/from16 v18, v0

    move-object/from16 v1, p0

    .end local v0    # "toRead":J
    .local v18, "toRead":J
    :try_start_7
    invoke-virtual {v1, v11, v15, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 101
    .local v0, "didRead":I
    if-ltz v0, :cond_1

    .line 102
    move v14, v2

    .end local v2    # "okay":Z
    .local v14, "okay":Z
    int-to-long v1, v0

    move-object/from16 v15, p7

    :try_start_8
    invoke-interface {v15, v1, v2}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_2

    .line 101
    .end local v14    # "okay":Z
    .restart local v2    # "okay":Z
    :cond_1
    move-object/from16 v15, p7

    move v14, v2

    .line 104
    .end local v2    # "okay":Z
    .restart local v14    # "okay":Z
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v10, v11, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 105
    int-to-long v1, v0

    sub-long/2addr v12, v1

    .line 106
    .end local v0    # "didRead":I
    .end local v18    # "toRead":J
    move-object/from16 v1, p5

    move v2, v14

    const v0, 0x8000

    goto :goto_0

    .line 94
    .end local v11    # "buffer":[B
    .end local v12    # "size":J
    :catchall_1
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    move-object v2, v0

    goto/16 :goto_a

    .end local v14    # "okay":Z
    .restart local v2    # "okay":Z
    :catchall_2
    move-exception v0

    move-object/from16 v15, p7

    move v14, v2

    move-object/from16 v1, p2

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    goto/16 :goto_9

    .line 98
    .restart local v11    # "buffer":[B
    .restart local v12    # "size":J
    :cond_2
    move-object/from16 v15, p7

    move v14, v2

    .line 107
    .end local v2    # "okay":Z
    .end local v11    # "buffer":[B
    .end local v12    # "size":J
    .restart local v14    # "okay":Z
    if-eqz v10, :cond_3

    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 110
    .end local v10    # "apkStream":Ljava/io/OutputStream;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 112
    if-eqz v16, :cond_4

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    .line 195
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v9    # "sessionId":I
    .end local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_0
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    goto/16 :goto_10

    .line 113
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v9    # "sessionId":I
    :catch_1
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    goto/16 :goto_f

    .line 117
    :cond_4
    :goto_3
    nop

    .line 120
    const/4 v1, 0x0

    .line 124
    .local v1, "result":Landroid/content/Intent;
    const/4 v2, 0x1

    .line 128
    .local v2, "status":I
    if-eqz v2, :cond_6

    .line 132
    move-object/from16 v11, p5

    :try_start_b
    iget-object v0, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    move-object/from16 v12, p4

    :try_start_c
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-eq v0, v3, :cond_5

    .line 133
    const/4 v0, 0x0

    move-object/from16 v1, p2

    move v2, v0

    .end local v14    # "okay":Z
    .local v0, "okay":Z
    goto/16 :goto_7

    .line 132
    .end local v0    # "okay":Z
    .restart local v14    # "okay":Z
    :cond_5
    move-object/from16 v1, p2

    move v2, v14

    goto/16 :goto_7

    .line 195
    .end local v1    # "result":Landroid/content/Intent;
    .end local v2    # "status":I
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v9    # "sessionId":I
    :catch_2
    move-exception v0

    move-object/from16 v12, p4

    goto/16 :goto_8

    .line 137
    .restart local v1    # "result":Landroid/content/Intent;
    .restart local v2    # "status":I
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v9    # "sessionId":I
    :cond_6
    move-object/from16 v12, p4

    move-object/from16 v11, p5

    const/4 v10, 0x0

    .line 138
    .local v10, "uninstall":Z
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 140
    .local v13, "installedPackageName":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "result":Landroid/content/Intent;
    .local v16, "result":Landroid/content/Intent;
    const-string v1, "Restore stream claimed to include apk for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but apk was really "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 145
    const/4 v0, 0x0

    .line 146
    .end local v14    # "okay":Z
    .restart local v0    # "okay":Z
    const/4 v10, 0x1

    move/from16 v18, v2

    move v2, v0

    goto/16 :goto_6

    .line 149
    .end local v0    # "okay":Z
    .end local v16    # "result":Landroid/content/Intent;
    .restart local v1    # "result":Landroid/content/Intent;
    .restart local v14    # "okay":Z
    :cond_7
    move-object/from16 v16, v1

    .end local v1    # "result":Landroid/content/Intent;
    .restart local v16    # "result":Landroid/content/Intent;
    :try_start_d
    iget-object v0, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    const/high16 v1, 0x8000000

    move/from16 v18, v2

    move/from16 v2, p8

    .end local v2    # "status":I
    .local v18, "status":I
    :try_start_e
    invoke-virtual {v5, v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 151
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v17, 0x8000

    and-int v1, v1, v17

    if-nez v1, :cond_8

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore stream contains apk of package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but it disallows backup/restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v2, 0x0

    .end local v14    # "okay":Z
    .local v2, "okay":Z
    goto/16 :goto_4

    .line 159
    .end local v2    # "okay":Z
    .restart local v14    # "okay":Z
    :cond_8
    iget-object v1, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    .line 160
    .local v1, "sigs":[Landroid/content/pm/Signature;
    const-class v17, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v19, v17

    .line 162
    .local v19, "pmi":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v2, v19

    .end local v19    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v2, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {v1, v0, v2}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v17
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    move-object/from16 v19, v1

    .end local v1    # "sigs":[Landroid/content/pm/Signature;
    .local v19, "sigs":[Landroid/content/pm/Signature;
    const-string v1, "Installed app "

    if-eqz v17, :cond_a

    .line 165
    move-object/from16 v17, v2

    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v17, "pmi":Landroid/content/pm/PackageManagerInternal;
    :try_start_f
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has restricted uid and no agent"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v2, 0x0

    .end local v14    # "okay":Z
    .local v2, "okay":Z
    goto :goto_4

    .line 182
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "okay":Z
    .end local v17    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    .restart local v14    # "okay":Z
    :cond_9
    move v2, v14

    goto :goto_4

    .line 172
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v2, "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v19    # "sigs":[Landroid/content/pm/Signature;
    :cond_a
    move-object/from16 v17, v2

    .end local v2    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v17    # "pmi":Landroid/content/pm/PackageManagerInternal;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signatures do not match restore manifest"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 174
    const/4 v2, 0x0

    .line 175
    .end local v14    # "okay":Z
    .local v2, "okay":Z
    const/4 v1, 0x1

    move v10, v1

    .line 182
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v17    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    :goto_4
    goto :goto_6

    .line 178
    .end local v2    # "okay":Z
    .restart local v14    # "okay":Z
    :catch_3
    move-exception v0

    goto :goto_5

    .end local v18    # "status":I
    .local v2, "status":I
    :catch_4
    move-exception v0

    move/from16 v18, v2

    .line 179
    .end local v2    # "status":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v18    # "status":I
    :goto_5
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install of package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " succeeded but now not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 181
    const/4 v1, 0x0

    move v2, v1

    .line 187
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "okay":Z
    .local v2, "okay":Z
    :goto_6
    if-eqz v10, :cond_b

    .line 188
    :try_start_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 189
    move-object/from16 v1, p2

    const/4 v14, 0x0

    :try_start_12
    invoke-virtual {v5, v13, v1, v14}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto :goto_7

    .line 195
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v9    # "sessionId":I
    .end local v10    # "uninstall":Z
    .end local v13    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "result":Landroid/content/Intent;
    .end local v18    # "status":I
    :catch_5
    move-exception v0

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_12

    .line 187
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v9    # "sessionId":I
    .restart local v10    # "uninstall":Z
    .restart local v13    # "installedPackageName":Ljava/lang/String;
    .restart local v16    # "result":Landroid/content/Intent;
    .restart local v18    # "status":I
    :cond_b
    move-object/from16 v1, p2

    .line 198
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v9    # "sessionId":I
    .end local v10    # "uninstall":Z
    .end local v13    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "result":Landroid/content/Intent;
    .end local v18    # "status":I
    :goto_7
    goto/16 :goto_13

    .line 195
    .end local v2    # "okay":Z
    .restart local v14    # "okay":Z
    :catch_7
    move-exception v0

    :goto_8
    move-object/from16 v1, p2

    goto :goto_10

    .line 93
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v9    # "sessionId":I
    .local v16, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_3
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    goto :goto_c

    .line 94
    .end local v14    # "okay":Z
    .restart local v2    # "okay":Z
    .local v10, "apkStream":Ljava/io/OutputStream;
    :catchall_4
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v11, v1

    move v14, v2

    move-object/from16 v1, p2

    :goto_9
    move-object v2, v0

    .end local v2    # "okay":Z
    .restart local v14    # "okay":Z
    :goto_a
    if-eqz v10, :cond_c

    :try_start_13
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v13, v0

    :try_start_14
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v9    # "sessionId":I
    .end local v14    # "okay":Z
    .end local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    :cond_c
    :goto_b
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 93
    .end local v10    # "apkStream":Ljava/io/OutputStream;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v9    # "sessionId":I
    .restart local v14    # "okay":Z
    .restart local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catchall_6
    move-exception v0

    :goto_c
    move-object v2, v0

    goto :goto_d

    .end local v14    # "okay":Z
    .restart local v2    # "okay":Z
    :catchall_7
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v11, v1

    move v14, v2

    move-object/from16 v1, p2

    move-object v2, v0

    .end local v2    # "okay":Z
    .restart local v14    # "okay":Z
    :goto_d
    if-eqz v16, :cond_d

    :try_start_15
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object v10, v0

    :try_start_16
    invoke-virtual {v2, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v9    # "sessionId":I
    .end local v14    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    :cond_d
    :goto_e
    throw v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    .line 113
    .end local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v9    # "sessionId":I
    .restart local v14    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catch_8
    move-exception v0

    goto :goto_f

    .end local v14    # "okay":Z
    .restart local v2    # "okay":Z
    :catch_9
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v11, v1

    move v14, v2

    move-object/from16 v1, p2

    .line 114
    .end local v2    # "okay":Z
    .local v0, "t":Ljava/lang/Exception;
    .restart local v14    # "okay":Z
    :goto_f
    :try_start_17
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 116
    nop

    .end local v14    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    .line 195
    .end local v0    # "t":Ljava/lang/Exception;
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v9    # "sessionId":I
    .restart local v14    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catch_a
    move-exception v0

    :goto_10
    move v2, v14

    goto :goto_12

    .end local v14    # "okay":Z
    .restart local v2    # "okay":Z
    :catch_b
    move-exception v0

    move-object/from16 v12, p4

    goto :goto_11

    :catch_c
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v8, p6

    :goto_11
    move-object/from16 v15, p7

    move-object v11, v1

    move v14, v2

    move-object/from16 v1, p2

    .line 196
    .local v0, "e":Ljava/io/IOException;
    :goto_12
    const-string v4, "Unable to transcribe restored apk for install"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v2, 0x0

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13
    return v2
.end method
