.class final Lcom/android/server/GraphicsStatsService$ActiveBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field final mCallback:Landroid/view/IGraphicsStatsCallback;

.field final mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

.field final mPid:I

.field mProcessBuffer:Landroid/os/MemoryFile;

.field final mToken:Landroid/os/IBinder;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V
    .locals 8
    .param p2, "token"    # Landroid/view/IGraphicsStatsCallback;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "versionCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance v7, Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, v7

    move-object v1, p1

    move-object v2, p5

    move-wide v3, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/GraphicsStatsService$BufferInfo;-><init>(Lcom/android/server/GraphicsStatsService;Ljava/lang/String;JJ)V

    iput-object v7, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    .line 416
    iput p3, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    .line 417
    iput p4, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    .line 418
    iput-object p2, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    .line 419
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v0}, Landroid/view/IGraphicsStatsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    .line 420
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 421
    new-instance v0, Landroid/os/MemoryFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GFXStats-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/GraphicsStatsService;->access$200(Lcom/android/server/GraphicsStatsService;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    .line 422
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-static {p1}, Lcom/android/server/GraphicsStatsService;->access$300(Lcom/android/server/GraphicsStatsService;)[B

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/GraphicsStatsService;->access$200(Lcom/android/server/GraphicsStatsService;)I

    move-result p1

    invoke-virtual {v0, v2, v1, v1, p1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 423
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 428
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0, p0}, Lcom/android/server/GraphicsStatsService;->access$400(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 429
    return-void
.end method

.method closeAllBuffers()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    .line 436
    :cond_0
    return-void
.end method
