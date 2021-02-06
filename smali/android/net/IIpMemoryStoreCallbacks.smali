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
.field public static final HASH:Ljava/lang/String; = "31826566143ef882d67fac9f24566f73df4907b4"

.field public static final VERSION:I = 0x7


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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
