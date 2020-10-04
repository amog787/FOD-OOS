.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/RecoverySystemService;
    .param p2, "x1"    # Lcom/android/server/RecoverySystemService$1;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .locals 8

    .line 204
    const/4 v0, 0x0

    .local v0, "retry":I
    :goto_0
    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 205
    const-string v1, "init.svc.uncrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "uncryptService":Ljava/lang/String;
    const-string v3, "init.svc.setup-bcb"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "setupBcbService":Ljava/lang/String;
    const-string v4, "init.svc.clear-bcb"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "clearBcbService":Ljava/lang/String;
    const-string/jumbo v5, "running"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 209
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v2, v7

    .line 217
    .local v2, "busy":Z
    :cond_1
    if-nez v2, :cond_2

    .line 218
    return v7

    .line 222
    :cond_2
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_1

    .line 223
    :catch_0
    move-exception v5

    .line 224
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "RecoverySystemService"

    const-string v7, "Interrupted:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v1    # "uncryptService":Ljava/lang/String;
    .end local v2    # "busy":Z
    .end local v3    # "setupBcbService":Ljava/lang/String;
    .end local v4    # "clearBcbService":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "retry":I
    :cond_3
    return v2
.end method

.method private connectService()Landroid/net/LocalSocket;
    .locals 7

    .line 232
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 233
    .local v0, "socket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    .line 237
    .local v1, "done":Z
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_0
    const/16 v3, 0x1e

    const-string v4, "RecoverySystemService"

    if-ge v2, v3, :cond_0

    .line 239
    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v5, "uncrypt"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    const/4 v1, 0x1

    .line 242
    goto :goto_2

    .line 243
    :catch_0
    move-exception v3

    .line 245
    .local v3, "ignored":Ljava/io/IOException;
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    goto :goto_1

    .line 246
    :catch_1
    move-exception v5

    .line 247
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "Interrupted:"

    invoke-static {v4, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v3    # "ignored":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "retry":I
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    .line 252
    const-string v2, "Timed out connecting to uncrypt socket"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x0

    return-object v2

    .line 255
    :cond_1
    return-object v0
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .locals 9
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v0}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 262
    .local v0, "available":Z
    const-string v1, "RecoverySystemService"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 263
    const-string/jumbo v3, "uncrypt service is unavailable."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v2

    .line 267
    :cond_0
    const-string v3, "ctl.start"

    if-eqz p1, :cond_1

    .line 268
    const-string/jumbo v4, "setup-bcb"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    const-string v4, "clear-bcb"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v3

    .line 275
    .local v3, "socket":Landroid/net/LocalSocket;
    if-nez v3, :cond_2

    .line 276
    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v2

    .line 280
    :cond_2
    const/4 v4, 0x0

    .line 281
    .local v4, "dis":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 283
    .local v5, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 284
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 287
    if-eqz p1, :cond_3

    .line 288
    const-string v6, "UTF-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 289
    .local v6, "cmdUtf8":[B
    array-length v7, v6

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 290
    array-length v7, v6

    invoke-virtual {v5, v6, v2, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 291
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 295
    .end local v6    # "cmdUtf8":[B
    :cond_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 299
    .local v6, "status":I
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 301
    const/16 v7, 0x64

    if-ne v6, v7, :cond_5

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string/jumbo v8, "setup"

    goto :goto_1

    :cond_4
    const-string v8, "clear"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " bcb successfully finished."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v6    # "status":I
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    nop

    .line 318
    const/4 v1, 0x1

    return v1

    .line 306
    .restart local v6    # "status":I
    :cond_5
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt failed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    nop

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 307
    return v2

    .line 313
    .end local v6    # "status":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 309
    :catch_0
    move-exception v6

    .line 310
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "IOException when communicating with uncrypt:"

    invoke-static {v1, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    nop

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 311
    return v2

    .line 313
    .end local v6    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public clearBcb()Z
    .locals 3

    .line 170
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 187
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    monitor-exit v0

    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 193
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 194
    .end local v1    # "pm":Landroid/os/PowerManager;
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 179
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 80
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v1

    .line 84
    .local v1, "available":Z
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 85
    const-string v3, "RecoverySystemService"

    const-string/jumbo v4, "uncrypt service is unavailable."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v0

    return v2

    .line 91
    :cond_0
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 93
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 94
    .local v3, "uncryptFile":Ljava/io/FileWriter;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 99
    .end local v3    # "uncryptFile":Ljava/io/FileWriter;
    nop

    .line 102
    :try_start_4
    const-string v3, "ctl.start"

    const-string/jumbo v4, "uncrypt"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v3

    .line 106
    .local v3, "socket":Landroid/net/LocalSocket;
    if-nez v3, :cond_1

    .line 107
    const-string v4, "RecoverySystemService"

    const-string v5, "Failed to connect to uncrypt socket"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return v2

    .line 112
    :cond_1
    const/4 v4, 0x0

    .line 113
    .local v4, "dis":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 115
    .local v5, "dos":Ljava/io/DataOutputStream;
    :try_start_5
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 116
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 117
    const/high16 v6, -0x80000000

    move v7, v6

    .line 119
    .local v7, "lastStatus":I
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 121
    .local v8, "status":I
    if-ne v8, v7, :cond_2

    if-eq v7, v6, :cond_2

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    move v7, v8

    .line 126
    if-ltz v8, :cond_5

    const/16 v9, 0x64

    if-gt v8, v9, :cond_5

    .line 128
    const-string v10, "RecoverySystemService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uncrypt read status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    if-eqz p2, :cond_3

    .line 131
    :try_start_6
    invoke-interface {p2, v8}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    goto :goto_1

    .line 132
    :catch_0
    move-exception v10

    .line 133
    .local v10, "ignored":Landroid/os/RemoteException;
    :try_start_7
    const-string v11, "RecoverySystemService"

    const-string v12, "RemoteException when posting progress"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v10    # "ignored":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    if-ne v8, v9, :cond_4

    .line 137
    const-string v6, "RecoverySystemService"

    const-string/jumbo v9, "uncrypt successfully finished."

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    nop

    .line 158
    .end local v7    # "lastStatus":I
    .end local v8    # "status":I
    :try_start_8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    nop

    .line 163
    const/4 v2, 0x1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return v2

    .line 153
    .restart local v7    # "lastStatus":I
    :cond_4
    goto :goto_0

    .line 146
    .restart local v8    # "status":I
    :cond_5
    :try_start_9
    const-string v6, "RecoverySystemService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncrypt failed with status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 151
    nop

    .line 158
    :try_start_a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 151
    return v2

    .line 158
    .end local v7    # "lastStatus":I
    .end local v8    # "status":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 154
    :catch_1
    move-exception v6

    .line 155
    .local v6, "e":Ljava/io/IOException;
    :try_start_b
    const-string v7, "RecoverySystemService"

    const-string v8, "IOException when reading status: "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 156
    nop

    .line 158
    :try_start_c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    .line 156
    return v2

    .line 158
    .end local v6    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/RecoverySystemService$BinderService;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 93
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v3, "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/RecoverySystemService$BinderService;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :catchall_1
    move-exception v4

    .end local v1    # "available":Z
    .end local v3    # "uncryptFile":Ljava/io/FileWriter;
    .end local p0    # "this":Lcom/android/server/RecoverySystemService$BinderService;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 95
    .restart local v1    # "available":Z
    .restart local v3    # "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/RecoverySystemService$BinderService;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :catchall_2
    move-exception v5

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v6

    :try_start_f
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/RecoverySystemService$BinderService;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :goto_3
    throw v5
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .end local v3    # "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/RecoverySystemService$BinderService;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/os/IRecoverySystemProgressListener;
    :catch_2
    move-exception v3

    .line 96
    .local v3, "e":Ljava/io/IOException;
    :try_start_10
    const-string v4, "RecoverySystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when writing \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    monitor-exit v0

    return v2

    .line 164
    .end local v1    # "available":Z
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v1
.end method
