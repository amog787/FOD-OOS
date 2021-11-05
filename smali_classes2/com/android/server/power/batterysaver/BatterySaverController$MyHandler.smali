.class Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
.super Landroid/os/Handler;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final ARG_DONT_SEND_BROADCAST:I = 0x0

.field private static final ARG_SEND_BROADCAST:I = 0x1

.field private static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 282
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 283
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 284
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$500(Lcom/android/server/power/batterysaver/BatterySaverController;)[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 306
    .local v3, "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-interface {v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;->onSystemReady(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 305
    .end local v3    # "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->handleBatterySaverStateChanged(ZI)V

    .line 302
    nop

    .line 310
    :cond_3
    :goto_1
    return-void
.end method

.method postStateChanged(ZI)V
    .locals 2
    .param p1, "sendBroadcast"    # Z
    .param p2, "reason"    # I

    .line 287
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 288
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 287
    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    return-void
.end method

.method public postSystemReady()V
    .locals 2

    .line 292
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 293
    return-void
.end method
