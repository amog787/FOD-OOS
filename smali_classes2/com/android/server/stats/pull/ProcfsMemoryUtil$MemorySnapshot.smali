.class public final Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
.super Ljava/lang/Object;
.source "ProcfsMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/ProcfsMemoryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemorySnapshot"
.end annotation


# instance fields
.field public anonRssInKilobytes:I

.field public rssHighWaterMarkInKilobytes:I

.field public rssInKilobytes:I

.field public swapInKilobytes:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
