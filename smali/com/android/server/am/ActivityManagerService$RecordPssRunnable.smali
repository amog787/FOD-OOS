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
    accessFlags = 0x12
    name = "RecordPssRunnable"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDumpUri:Landroid/net/Uri;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "dumpUri"    # Landroid/net/Uri;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;

    .line 19306
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19307
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 19308
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 19309
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    .line 19310
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 19314
    const-string v0, "ActivityManager"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    const-string/jumbo v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19315
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v2

    .line 19316
    .local v9, "thread":Landroid/app/IApplicationThread;
    if-eqz v9, :cond_1

    .line 19318
    :try_start_2
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_0

    .line 19319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting dump heap from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 19320
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19319
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19322
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 19324
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 19322
    move-object v2, v9

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19327
    goto :goto_0

    .line 19326
    :catch_0
    move-exception v2

    .line 19329
    .end local v9    # "thread":Landroid/app/IApplicationThread;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 19334
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    goto :goto_2

    .line 19314
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;
    :cond_3
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 19329
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;
    :catch_1
    move-exception v1

    .line 19330
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to dump heap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19333
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 19335
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
