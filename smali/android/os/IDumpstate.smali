.class public interface abstract Landroid/os/IDumpstate;
.super Ljava/lang/Object;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstate$Stub;,
        Landroid/os/IDumpstate$Default;
    }
.end annotation


# static fields
.field public static final BUGREPORT_MODE_DEFAULT:I = 0x6

.field public static final BUGREPORT_MODE_FULL:I = 0x0

.field public static final BUGREPORT_MODE_INTERACTIVE:I = 0x1

.field public static final BUGREPORT_MODE_REMOTE:I = 0x2

.field public static final BUGREPORT_MODE_TELEPHONY:I = 0x4

.field public static final BUGREPORT_MODE_WEAR:I = 0x3

.field public static final BUGREPORT_MODE_WIFI:I = 0x5


# virtual methods
.method public abstract cancelBugreport()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
