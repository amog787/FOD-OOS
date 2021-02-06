.class Lcom/android/server/pm/ParallelPackageParser;
.super Ljava/lang/Object;
.source "ParallelPackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    }
.end annotation


# static fields
.field private static final MAX_THREADS:I = 0x4

.field private static final QUEUE_CAPACITY:I = 0x1e


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private volatile mInterruptedInThread:Ljava/lang/String;

.field private final mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/server/pm/ParallelPackageParser$ParseResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

    .line 60
    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    return-void
.end method

.method static makeExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 50
    const/4 v0, 0x4

    const-string/jumbo v1, "package-parsing-thread"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$submit$0$ParallelPackageParser(Ljava/io/File;I)V
    .locals 4
    .param p1, "scanFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I

    .line 104
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-direct {v0}, Lcom/android/server/pm/ParallelPackageParser$ParseResult;-><init>()V

    .line 105
    .local v0, "pr":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parallel parsePackage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 107
    :try_start_0
    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    iput-object v1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 113
    nop

    .line 115
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    .line 123
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 112
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 113
    throw v1
.end method

.method protected parsePackage(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 2
    .param p1, "scanFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/io/File;I)V
    .locals 2
    .param p1, "scanFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 124
    return-void
.end method

.method public take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .locals 3

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/ParallelPackageParser;
    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .restart local p0    # "this":Lcom/android/server/pm/ParallelPackageParser;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
