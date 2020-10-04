.class final Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordPssRunnable"
.end annotation


# instance fields
.field private final mHeapdumpFile:Ljava/io/File;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/io/File;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "heapdumpFile"    # Ljava/io/File;

    .line 17859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17860
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17861
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 17862
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    .line 17863
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 17867
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 17868
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 17872
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 17867
    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 17873
    const/4 v0, 0x0

    .line 17875
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 17876
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    const/high16 v2, 0x2e000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 17881
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17882
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_1

    .line 17884
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_0

    .line 17885
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting dump heap from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17888
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    .line 17890
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 17888
    move-object v2, v1

    move-object v7, v0

    invoke-interface/range {v2 .. v8}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17893
    goto :goto_0

    .line 17892
    :catch_0
    move-exception v2

    .line 17898
    .end local v1    # "thread":Landroid/app/IApplicationThread;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 17900
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 17902
    :goto_1
    goto :goto_2

    .line 17901
    :catch_1
    move-exception v1

    goto :goto_1

    .line 17898
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 17895
    :catch_2
    move-exception v1

    .line 17896
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17898
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_2

    .line 17900
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 17905
    :cond_2
    :goto_2
    return-void

    .line 17898
    :goto_3
    if-eqz v0, :cond_3

    .line 17900
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 17902
    goto :goto_4

    .line 17901
    :catch_3
    move-exception v2

    .line 17902
    :cond_3
    :goto_4
    throw v1
.end method
