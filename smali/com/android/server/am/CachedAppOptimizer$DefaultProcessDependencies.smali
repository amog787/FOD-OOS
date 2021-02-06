.class final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultProcessDependencies"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/CachedAppOptimizer$1;

    .line 1111
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public getRss(I)[J
    .locals 1
    .param p1, "pid"    # I

    .line 1115
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object v0

    return-object v0
.end method

.method public performCompaction(Ljava/lang/String;I)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/reclaim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1124
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    return-void

    .line 1121
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
