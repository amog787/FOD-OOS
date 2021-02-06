.class Lcom/android/server/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/CertBlacklister$BlacklistObserver;
    .param p2, "name"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v0}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$000(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-virtual {v1}, Lcom/android/server/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "blacklist":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    const-string v2, "CertBlacklister"

    const-string v3, "Certificate blacklist changed, updating..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    const/4 v2, 0x0

    .line 86
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v3, "journal"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$000(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 88
    .local v3, "tmp":Ljava/io/File;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 90
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 95
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$100(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 96
    const-string v4, "CertBlacklister"

    const-string v5, "Certificate blacklist updated"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v3    # "tmp":Ljava/io/File;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 97
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "CertBlacklister"

    const-string v5, "Failed to write blacklist"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    goto :goto_2

    .line 100
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    nop

    .end local p0    # "this":Lcom/android/server/CertBlacklister$BlacklistObserver$1;
    throw v3

    .line 103
    .end local v1    # "blacklist":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/CertBlacklister$BlacklistObserver$1;
    :cond_0
    :goto_2
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
