.class Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;
.super Ljava/lang/Thread;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

.field final synthetic val$converter:Ljava/io/InputStreamReader;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;Ljava/io/InputStreamReader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    .line 1325
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1328
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1330
    .local v0, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1332
    .local v1, "count":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    monitor-enter v2

    .line 1333
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-nez v3, :cond_0

    .line 1334
    monitor-exit v2

    return-void

    .line 1336
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1337
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGotGdbPrint:Z

    .line 1338
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1340
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1343
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1344
    return-void

    .line 1346
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GDB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1348
    add-int/lit8 v1, v1, 0x1

    .line 1351
    goto :goto_0

    .line 1349
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1350
    .local v2, "e":Ljava/io/IOException;
    return-void

    .line 1340
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
