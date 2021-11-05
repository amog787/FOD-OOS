.class final Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteBufferRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 368
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 373
    .local v0, "time":J
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$300(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->run(JLandroid/util/AtomicFile;)V

    .line 374
    return-void
.end method

.method run(JLandroid/util/AtomicFile;)V
    .locals 4
    .param p1, "time"    # J
    .param p3, "file"    # Landroid/util/AtomicFile;

    .line 377
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$100(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 378
    :try_start_0
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NotiHistoryDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriteBufferRunnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v2, v2, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-static {v1, p3, v2}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$400(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V

    .line 382
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    new-instance v2, Landroid/app/NotificationHistory;

    invoke-direct {v2}, Landroid/app/NotificationHistory;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 385
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$500(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/io/File;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "NotiHistoryDatabase"

    const-string v3, "Failed to write buffer to disk. not flushing buffer"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
