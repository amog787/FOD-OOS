.class public interface abstract Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
.super Ljava/lang/Object;
.source "IOnNetworkAttributesRetrievedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;,
        Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Default;
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

.method public abstract onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
