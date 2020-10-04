.class Lcom/android/server/am/ActivityManagerService$23;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 11046
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$23;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$23;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$23;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 11049
    const-string v0, "-b"

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$23;->val$report:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11050
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11053
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logcat_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11054
    .local v1, "setting":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$23;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 11055
    .local v2, "lines":I
    const/high16 v4, 0x60000

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x64

    sub-int/2addr v4, v5

    .line 11058
    .local v4, "maxDataFileSize":I
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dataFile:Ljava/io/File;

    const-string v6, "ActivityManager"

    if-eqz v5, :cond_1

    if-lez v4, :cond_1

    .line 11060
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    const-string v8, "\n\n[[TRUNCATED]]"

    invoke-static {v5, v4, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11064
    goto :goto_0

    .line 11062
    :catch_0
    move-exception v5

    .line 11063
    .local v5, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dataFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11066
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$23;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 11067
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$23;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v7, v7, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11070
    :cond_2
    if-lez v2, :cond_5

    .line 11071
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11074
    const/4 v5, 0x0

    .line 11076
    .local v5, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/16 v8, 0x11

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "/system/bin/timeout"

    aput-object v9, v8, v3

    const-string v9, "-k"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    const-string v11, "15s"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "10s"

    aput-object v11, v8, v9

    const/4 v9, 0x4

    const-string v11, "/system/bin/logcat"

    aput-object v11, v8, v9

    const/4 v9, 0x5

    const-string v11, "-v"

    aput-object v11, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v11, "threadtime"

    aput-object v11, v8, v9

    const/4 v9, 0x7

    aput-object v0, v8, v9

    const/16 v9, 0x8

    const-string v11, "events"

    aput-object v11, v8, v9

    const/16 v9, 0x9

    aput-object v0, v8, v9

    const/16 v9, 0xa

    const-string/jumbo v11, "system"

    aput-object v11, v8, v9

    const/16 v9, 0xb

    aput-object v0, v8, v9

    const/16 v9, 0xc

    const-string/jumbo v11, "main"

    aput-object v11, v8, v9

    const/16 v9, 0xd

    aput-object v0, v8, v9

    const/16 v0, 0xe

    const-string v9, "crash"

    aput-object v9, v8, v0

    const/16 v0, 0xf

    const-string v9, "-t"

    aput-object v9, v8, v0

    const/16 v0, 0x10

    .line 11079
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 11080
    invoke-virtual {v7, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11082
    .local v0, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    .line 11083
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v7

    .line 11084
    :goto_2
    :try_start_4
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v7

    .line 11087
    const/16 v7, 0x2000

    new-array v7, v7, [C

    .line 11088
    .local v7, "buf":[C
    :goto_3
    invoke-virtual {v5, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    move v9, v8

    .local v9, "num":I
    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7, v3, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 11092
    .end local v0    # "logcat":Ljava/lang/Process;
    .end local v7    # "buf":[C
    .end local v9    # "num":I
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 11089
    :catch_4
    move-exception v0

    .line 11090
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v3, "Error running logcat"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 11092
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :goto_4
    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :cond_4
    :goto_5
    throw v0

    .line 11096
    .end local v5    # "input":Ljava/io/InputStreamReader;
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dropboxTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 11097
    return-void
.end method
