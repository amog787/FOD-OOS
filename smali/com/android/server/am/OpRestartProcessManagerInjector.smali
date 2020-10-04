.class public Lcom/android/server/am/OpRestartProcessManagerInjector;
.super Ljava/lang/Object;
.source "OpRestartProcessManagerInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final PROPERTY_RESTART_PROCESS:Ljava/lang/String; = "persist.sys.rp.debug"

.field private static final TAG:Ljava/lang/String;

.field private static sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/android/server/am/OpRestartProcessManagerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAddNewPackages(Ljava/lang/String;)V
    .locals 2
    .param p0, "mPackageName"    # Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doAddNewPackages()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 76
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doAddNewPackages(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static doCleanAllData(J)V
    .locals 2
    .param p0, "mCurTime"    # J

    .line 48
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doCleanAllData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 52
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpRestartProcessManager;->doCleanAllData(J)V

    .line 53
    return-void
.end method

.method public static doDump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p0, "mPw"    # Ljava/io/PrintWriter;
    .param p2, "mAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 104
    .local p1, "mWhitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doDump()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 108
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpRestartProcessManager;->doDump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V

    .line 109
    return-void
.end method

.method public static doGetGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p0, "mNeedUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.getGeneralUsedPackageList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 166
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doGetGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static doGetHighUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p0, "mNeedUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.getHighUsedPackageList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 158
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doGetHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static doGetLowUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p0, "mNeedUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.getLowUsedPackageList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 174
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doGetLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static doHandleCommand([Ljava/lang/String;)V
    .locals 2
    .param p0, "sargs"    # [Ljava/lang/String;

    .line 112
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doHandleCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 116
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doHandleCommand([Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static doIsHighUsedPackages(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mPkgName"    # Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doIsHighUsedPackages()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 68
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static doRemovePackage(Ljava/lang/String;)V
    .locals 2
    .param p0, "mPkgName"    # Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doRemovePackage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 84
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doRemovePackage(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static doUpdateDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPkgName"    # Ljava/lang/String;
    .param p2, "mFinishTime"    # J

    .line 88
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doUpdateDuration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 92
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpRestartProcessManager;->doUpdateDuration(Landroid/content/Context;Ljava/lang/String;J)V

    .line 93
    return-void
.end method

.method public static doUpdateLaunchTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPkgName"    # Ljava/lang/String;
    .param p2, "mTime"    # J

    .line 96
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doUpdateLaunchTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 100
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpRestartProcessManager;->doUpdateLaunchTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 101
    return-void
.end method

.method public static doWriteRecord(Z)V
    .locals 2
    .param p0, "mForce"    # Z

    .line 120
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.doWriteRecord()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 124
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->doWriteRecord(Z)V

    .line 125
    return-void
.end method

.method public static getInitPackagesFromSystemReady()Z
    .locals 2

    .line 136
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.getInitPackagesFromSystemReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 140
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0}, Lcom/android/server/am/IOpRestartProcessManager;->getInitPackagesFromSystemReady()Z

    move-result v0

    return v0
.end method

.method private static initInstance()V
    .locals 2

    .line 38
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    if-nez v0, :cond_1

    .line 42
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_restartprocessmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 43
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpRestartProcessManager;

    sput-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    .line 45
    :cond_1
    return-void
.end method

.method public static setInitPackagesFromSystemReady(Z)V
    .locals 2
    .param p0, "mValue"    # Z

    .line 144
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.setInitPackagesFromSystemReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 148
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->setInitPackagesFromSystemReady(Z)V

    .line 149
    return-void
.end method

.method public static setScreenState(Z)V
    .locals 2
    .param p0, "isOff"    # Z

    .line 56
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.setScreenState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 60
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->setScreenState(Z)V

    .line 61
    return-void
.end method

.method public static setUpdatingPackage(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 128
    sget-boolean v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpRestartProcessManager.setUpdatingPackage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-static {}, Lcom/android/server/am/OpRestartProcessManagerInjector;->initInstance()V

    .line 132
    sget-object v0, Lcom/android/server/am/OpRestartProcessManagerInjector;->sOpRestartProcessManager:Lcom/android/server/am/IOpRestartProcessManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpRestartProcessManager;->setUpdatingPackage(Ljava/lang/String;)V

    .line 133
    return-void
.end method
