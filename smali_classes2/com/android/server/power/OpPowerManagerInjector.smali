.class public Lcom/android/server/power/OpPowerManagerInjector;
.super Ljava/lang/Object;
.source "OpPowerManagerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "OpPowerManagerInjector"

.field private static opPowerManager:Lcom/android/server/power/IOpPowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string v0, "OpPowerManagerInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "forNetReachability"    # Z

    .line 171
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/power/IOpPowerManager;->addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    :cond_0
    return-void
.end method

.method public static checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 133
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.checkForKeepWakeLocks()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    return v0

    .line 140
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkWakeUpOrDoze(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 120
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.checkWakeUpOrDoze()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0, p0, p1}, Lcom/android/server/power/IOpPowerManager;->checkWakeUpOrDoze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 127
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static clearExclusiveWakeLock(Z)V
    .locals 1
    .param p0, "forNetReachability"    # Z

    .line 179
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->clearExclusiveWakeLock(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public static disableExclusiveWakeLocks(Z)V
    .locals 1
    .param p0, "forNetReachability"    # Z

    .line 205
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->disableExclusiveWakeLocks(Z)V

    .line 208
    :cond_0
    return-void
.end method

.method public static enableExclusiveWakeLocks(Z)V
    .locals 1
    .param p0, "forNetReachability"    # Z

    .line 213
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->enableExclusiveWakeLocks(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public static flushExclusiveWakeLock()V
    .locals 1

    .line 187
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lcom/android/server/power/IOpPowerManager;->flushExclusiveWakeLock()V

    .line 190
    :cond_0
    return-void
.end method

.method public static getExclusiveWakeLock(Z)Ljava/util/HashMap;
    .locals 1
    .param p0, "forNetReachability"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->getExclusiveWakeLock(Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static handleForceStop(Landroid/os/Message;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .line 84
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.handleForceStop()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->handleForceStop(Landroid/os/Message;)V

    .line 91
    :cond_1
    return-void
.end method

.method public static handleLightIdleBlackList()V
    .locals 2

    .line 108
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.handleLightIdleBlackList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 113
    invoke-interface {v0}, Lcom/android/server/power/IOpPowerManager;->handleLightIdleBlackList()V

    .line 115
    :cond_1
    return-void
.end method

.method public static handleOnlineConfig()V
    .locals 2

    .line 96
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.handleOnlineConfig()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Lcom/android/server/power/IOpPowerManager;->handleOnlineConfig()V

    .line 103
    :cond_1
    return-void
.end method

.method public static ifEnableLogDump()Z
    .locals 2

    .line 158
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.ifEnableLogDump()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v0}, Lcom/android/server/power/IOpPowerManager;->ifEnableLogDump()Z

    move-result v0

    return v0

    .line 164
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 146
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.ifHandleCommand()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {v0, p0, p1}, Lcom/android/server/power/IOpPowerManager;->ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Landroid/content/res/Resources;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 59
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->init(Landroid/content/res/Resources;)V

    .line 66
    :cond_1
    return-void
.end method

.method public static initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V
    .locals 2
    .param p0, "pmsInner"    # Lcom/android/server/power/PowerManagerService$PmsInner;

    .line 44
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 49
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/IOpPowerManager;

    sput-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    .line 51
    :cond_1
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V

    .line 54
    :cond_2
    return-void
.end method

.method public static sendOemShutDownBroadcast(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p0, "br"    # Landroid/content/BroadcastReceiver;

    .line 221
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->sendOemShutDownBroadcast(Landroid/content/BroadcastReceiver;)V

    .line 224
    :cond_0
    return-void
.end method

.method public static setDeviceIdleAggressive(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .line 229
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->setDeviceIdleAggressive(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public static setWakelockDisabled(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 71
    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.setWakelockDisabled()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->setWakelockDisabled(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    return v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static updateBlockedUids(IZ)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "isBlocked"    # Z

    .line 237
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0, p0, p1}, Lcom/android/server/power/IOpPowerManager;->updateBlockedUids(IZ)V

    .line 240
    :cond_0
    return-void
.end method
