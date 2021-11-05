.class public abstract Lcom/android/server/backup/transport/DelegatingTransport;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "DelegatingTransport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I

    move-result v0

    return v0
.end method

.method public cancelFullBackup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 322
    return-void
.end method

.method public checkFullBackupSize(J)I
    .locals 1
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/backup/IBackupTransport;->checkFullBackupSize(J)I

    move-result v0

    return v0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public dataManagementIntentLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntentLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public finishBackup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V

    .line 296
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    return-object v0
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRestoreSet()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getDelegate()Lcom/android/internal/backup/IBackupTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public getTransportFlags()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v0

    return v0
.end method

.method public initializeDevice()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v0

    return v0
.end method

.method public isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "isFullBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    return-object v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public requestBackupTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 1
    .param p1, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v0

    return v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/android/server/backup/transport/DelegatingTransport;->getDelegate()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
