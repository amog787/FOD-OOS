.class public interface abstract Landroid/net/IIpMemoryStoreCallbacks;
.super Ljava/lang/Object;
.source "IIpMemoryStoreCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpMemoryStoreCallbacks$Stub;,
        Landroid/net/IIpMemoryStoreCallbacks$Default;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x3


# virtual methods
.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
