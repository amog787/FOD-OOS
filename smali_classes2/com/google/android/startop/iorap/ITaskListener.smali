.class public interface abstract Lcom/google/android/startop/iorap/ITaskListener;
.super Ljava/lang/Object;
.source "ITaskListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/ITaskListener$Stub;,
        Lcom/google/android/startop/iorap/ITaskListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
