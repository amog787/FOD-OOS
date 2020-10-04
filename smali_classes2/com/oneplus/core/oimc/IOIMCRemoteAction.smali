.class public interface abstract Lcom/oneplus/core/oimc/IOIMCRemoteAction;
.super Ljava/lang/Object;
.source "IOIMCRemoteAction.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;,
        Lcom/oneplus/core/oimc/IOIMCRemoteAction$Default;
    }
.end annotation


# virtual methods
.method public abstract onConfig(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStart([Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStop([Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
