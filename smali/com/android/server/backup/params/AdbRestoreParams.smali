.class public Lcom/android/server/backup/params/AdbRestoreParams;
.super Lcom/android/server/backup/params/AdbParams;
.source "AdbRestoreParams.java"


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "input"    # Landroid/os/ParcelFileDescriptor;

    .line 23
    invoke-direct {p0}, Lcom/android/server/backup/params/AdbParams;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 25
    return-void
.end method
