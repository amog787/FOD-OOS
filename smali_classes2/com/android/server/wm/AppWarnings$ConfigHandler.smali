.class final Lcom/android/server/wm/AppWarnings$ConfigHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigHandler"
.end annotation


# static fields
.field private static final DELAY_MSG_WRITE:I = 0x2710

.field private static final MSG_WRITE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 450
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$ConfigHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 451
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 452
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 456
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$ConfigHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v0}, Lcom/android/server/wm/AppWarnings;->access$600(Lcom/android/server/wm/AppWarnings;)V

    .line 461
    :goto_0
    return-void
.end method

.method public scheduleWrite()V
    .locals 3

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->removeMessages(I)V

    .line 465
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 466
    return-void
.end method
