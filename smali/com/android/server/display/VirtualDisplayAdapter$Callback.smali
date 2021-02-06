.class Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# static fields
.field private static final MSG_ON_DISPLAY_PAUSED:I = 0x0

.field private static final MSG_ON_DISPLAY_RESUMED:I = 0x1

.field private static final MSG_ON_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 443
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 444
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 445
    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .locals 1

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 468
    return-void
.end method

.method public dispatchDisplayResumed()V
    .locals 1

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 472
    return-void
.end method

.method public dispatchDisplayStopped()V
    .locals 1

    .line 475
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 476
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 450
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v0}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v0}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    .line 456
    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v0}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    nop

    .line 463
    :goto_0
    goto :goto_1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VirtualDisplayAdapter"

    const-string v2, "Failed to notify listener of virtual display event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
