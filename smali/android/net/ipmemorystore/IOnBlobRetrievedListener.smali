.class public interface abstract Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
.super Ljava/lang/Object;
.source "IOnBlobRetrievedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;,
        Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Default;
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

.method public abstract onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
