.class public final Lcom/android/server/am/MemoryStatUtil$MemoryStat;
.super Ljava/lang/Object;
.source "MemoryStatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryStatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryStat"
.end annotation


# instance fields
.field public cacheInBytes:J

.field public pgfault:J

.field public pgmajfault:J

.field public rssInBytes:J

.field public swapInBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
