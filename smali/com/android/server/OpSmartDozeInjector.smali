.class public Lcom/android/server/OpSmartDozeInjector;
.super Ljava/lang/Object;
.source "OpSmartDozeInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpSmartDozeInjector"

.field private static opSmartDoze:Lcom/android/server/IOpSmartDoze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "OpSmartDozeInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpSmartDozeInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAfterInactiveTimeout()J
    .locals 2

    .line 145
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 149
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {v0}, Lcom/android/server/IOpSmartDoze;->getAfterInactiveTimeout()J

    move-result-wide v0

    return-wide v0

    .line 153
    :cond_1
    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public static getInactiveTimeout()J
    .locals 2

    .line 133
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 137
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0}, Lcom/android/server/IOpSmartDoze;->getInactiveTimeout()J

    move-result-wide v0

    return-wide v0

    .line 141
    :cond_1
    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public static getNotificationDirectRepliedUid(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/android/server/OpSmartDozeInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.getNotificationDirectRepliedUid()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    .line 75
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 77
    :cond_1
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->getNotificationDirectRepliedUid(Ljava/lang/String;)V

    .line 80
    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 2
    .param p0, "networkPolicyManagerService"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 47
    sget-boolean v0, Lcom/android/server/OpSmartDozeInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 53
    :cond_1
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    .line 54
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->initInstance(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 56
    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V
    .locals 2
    .param p0, "pmsInner"    # Lcom/android/server/power/PowerManagerService$PmsInner;

    .line 35
    sget-boolean v0, Lcom/android/server/OpSmartDozeInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    .line 39
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 41
    :cond_1
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V

    .line 44
    :cond_2
    return-void
.end method

.method public static isSmartDozeWhitelisted(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 83
    sget-boolean v0, Lcom/android/server/OpSmartDozeInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.isSmartDozeWhitelisted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 89
    :cond_1
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    .line 90
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->isSmartDozeWhitelisted(I)Z

    move-result v0

    return v0

    .line 92
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static setAlarmCauseExitDoze()V
    .locals 2

    .line 59
    sget-boolean v0, Lcom/android/server/OpSmartDozeInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.setAlarmCauseExitDoze()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 65
    :cond_1
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v0}, Lcom/android/server/IOpSmartDoze;->setAlarmCauseExitDoze()V

    .line 68
    :cond_2
    return-void
.end method

.method public static setAlarmToUpdateWakeLock()V
    .locals 2

    .line 96
    sget-boolean v0, Lcom/android/server/OpSmartDozeInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.setAlarmToUpdateWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    .line 100
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 102
    :cond_1
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v0}, Lcom/android/server/IOpSmartDoze;->setAlarmToUpdateWakeLock()V

    .line 105
    :cond_2
    return-void
.end method

.method public static shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2
    .param p0, "shell"    # Lcom/android/server/DeviceIdleController$Shell;
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 120
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "handled":Z
    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v1, p0, p1, p2}, Lcom/android/server/IOpSmartDoze;->shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    .line 129
    :cond_1
    return v0
.end method

.method public static updateRulesForSmartDozeWhitelistedAppIds(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p0, "uidRules"    # Landroid/util/SparseIntArray;

    .line 108
    sget-boolean v0, Lcom/android/server/OpSmartDozeInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "OpSmartDozeInjector"

    const-string v1, "call OpSmartDozeInjector.updateRulesForSmartDozeWhitelistedAppIds()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 114
    :cond_1
    sget-object v0, Lcom/android/server/OpSmartDozeInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->updateRulesForSmartDozeWhitelistedAppIds(Landroid/util/SparseIntArray;)V

    .line 117
    :cond_2
    return-void
.end method
