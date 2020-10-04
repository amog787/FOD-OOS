.class public interface abstract Landroid/os/IDumpstateListener;
.super Ljava/lang/Object;
.source "IDumpstateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstateListener$Stub;,
        Landroid/os/IDumpstateListener$Default;
    }
.end annotation


# static fields
.field public static final BUGREPORT_ERROR_ANOTHER_REPORT_IN_PROGRESS:I = 0x5

.field public static final BUGREPORT_ERROR_INVALID_INPUT:I = 0x1

.field public static final BUGREPORT_ERROR_RUNTIME_ERROR:I = 0x2

.field public static final BUGREPORT_ERROR_USER_CONSENT_TIMED_OUT:I = 0x4

.field public static final BUGREPORT_ERROR_USER_DENIED_CONSENT:I = 0x3


# virtual methods
.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMaxProgressUpdated(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProgressUpdated(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSectionComplete(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
