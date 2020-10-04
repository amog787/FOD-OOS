.class final Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoricalBuffer"
.end annotation


# instance fields
.field final mData:[B

.field final mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 3
    .param p2, "active"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$200(Lcom/android/server/GraphicsStatsService;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    .line 443
    iget-object v0, p2, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    .line 444
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    .line 445
    iget-object v0, p2, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    invoke-static {p1}, Lcom/android/server/GraphicsStatsService;->access$200(Lcom/android/server/GraphicsStatsService;)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 446
    return-void
.end method
