.class final Lcom/android/server/GraphicsStatsService$BufferInfo;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferInfo"
.end annotation


# instance fields
.field endTime:J

.field final packageName:Ljava/lang/String;

.field startTime:J

.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;

.field final versionCode:J


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;Ljava/lang/String;JJ)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .param p5, "startTime"    # J

    .line 397
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$BufferInfo;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p2, p0, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    .line 399
    iput-wide p3, p0, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    .line 400
    iput-wide p5, p0, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    .line 401
    return-void
.end method
