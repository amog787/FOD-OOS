.class public interface abstract Landroid/net/ipmemorystore/IOnStatusAndCountListener;
.super Ljava/lang/Object;
.source "IOnStatusAndCountListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;,
        Landroid/net/ipmemorystore/IOnStatusAndCountListener$Default;
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

.method public abstract onComplete(Landroid/net/ipmemorystore/StatusParcelable;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
