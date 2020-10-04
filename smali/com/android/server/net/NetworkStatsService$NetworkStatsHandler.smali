.class final Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;
.super Landroid/os/Handler;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkStatsHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 337
    return-void
.end method
