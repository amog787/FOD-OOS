.class public Lcom/android/server/backup/params/AdbBackupParams;
.super Lcom/android/server/backup/params/AdbParams;
.source "AdbBackupParams.java"


# instance fields
.field public allApps:Z

.field public doCompress:Z

.field public doWidgets:Z

.field public includeApks:Z

.field public includeKeyValue:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 0
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "saveApks"    # Z
    .param p3, "saveObbs"    # Z
    .param p4, "saveShared"    # Z
    .param p5, "alsoWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "doSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "doKeyValue"    # Z
    .param p10, "pkgList"    # [Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/android/server/backup/params/AdbParams;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 37
    iput-boolean p2, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    .line 38
    iput-boolean p3, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    .line 39
    iput-boolean p4, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    .line 40
    iput-boolean p5, p0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    .line 41
    iput-boolean p6, p0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    .line 42
    iput-boolean p7, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    .line 43
    iput-boolean p8, p0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    .line 44
    iput-boolean p9, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    .line 45
    iput-object p10, p0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    .line 46
    return-void
.end method
