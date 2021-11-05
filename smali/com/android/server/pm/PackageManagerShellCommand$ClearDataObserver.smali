.class Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearDataObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2091
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2097
    monitor-enter p0

    .line 2098
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z

    .line 2099
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    .line 2100
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2101
    monitor-exit p0

    .line 2102
    return-void

    .line 2101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
