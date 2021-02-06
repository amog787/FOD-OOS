.class public interface abstract Landroid/hardware/rebootescrow/IRebootEscrow;
.super Ljava/lang/Object;
.source "IRebootEscrow.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/rebootescrow/IRebootEscrow$Stub;,
        Landroid/hardware/rebootescrow/IRebootEscrow$Default;
    }
.end annotation


# static fields
.field public static final HASH:Ljava/lang/String; = "ba450432e0dab8ee7bbc30013819ea8aef12054b"

.field public static final VERSION:I = 0x1


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

.method public abstract retrieveKey()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract storeKey([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
