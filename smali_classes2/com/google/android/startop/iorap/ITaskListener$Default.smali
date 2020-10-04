.class public Lcom/google/android/startop/iorap/ITaskListener$Default;
.super Ljava/lang/Object;
.source "ITaskListener.java"

# interfaces
.implements Lcom/google/android/startop/iorap/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/ITaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .locals 0
    .param p1, "requestId"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "result"    # Lcom/google/android/startop/iorap/TaskResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .locals 0
    .param p1, "requestId"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "result"    # Lcom/google/android/startop/iorap/TaskResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
