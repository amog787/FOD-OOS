.class public interface abstract Landroid/gsi/IGsiService;
.super Ljava/lang/Object;
.source "IGsiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IGsiService$Stub;,
        Landroid/gsi/IGsiService$Default;
    }
.end annotation


# static fields
.field public static final BOOT_STATUS_DISABLED:I = 0x1

.field public static final BOOT_STATUS_ENABLED:I = 0x3

.field public static final BOOT_STATUS_NOT_INSTALLED:I = 0x0

.field public static final BOOT_STATUS_SINGLE_BOOT:I = 0x2

.field public static final BOOT_STATUS_WILL_WIPE:I = 0x4

.field public static final INSTALL_ERROR_FILE_SYSTEM_CLUTTERED:I = 0x3

.field public static final INSTALL_ERROR_GENERIC:I = 0x1

.field public static final INSTALL_ERROR_NO_SPACE:I = 0x2

.field public static final INSTALL_OK:I = 0x0

.field public static final STATUS_COMPLETE:I = 0x2

.field public static final STATUS_NO_OPERATION:I = 0x0

.field public static final STATUS_WORKING:I = 0x1


# virtual methods
.method public abstract beginGsiInstall(Landroid/gsi/GsiInstallParams;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelGsiInstall()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract commitGsiChunkFromMemory([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disableGsiInstall()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGsiBootStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInstallProgress()Landroid/gsi/GsiProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInstalledGsiImageDir()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUserdataImageSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isGsiEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isGsiInstallInProgress()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isGsiInstalled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isGsiRunning()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeGsiInstall()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setGsiBootable(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startGsiInstall(JJZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract wipeGsiUserdata()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
