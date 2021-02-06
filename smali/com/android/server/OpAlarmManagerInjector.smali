.class public Lcom/android/server/OpAlarmManagerInjector;
.super Ljava/lang/Object;
.source "OpAlarmManagerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final DESKCLOCK:Ljava/lang/String; = "com.oneplus.deskclock"

.field public static final FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final FLAG_WAKE_FROM_IDLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpAlarmManagerInjector"

.field private static opAlarmManager:Lcom/android/server/IOpAlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OpAlarmManagerInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alleviateFirePendingLocked(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)Z"
        }
    .end annotation

    .line 176
    .local p0, "pendingWhileIdleAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 179
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->alleviateFirePendingLocked(Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    .line 182
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p1, "mSystemUiUid"    # I
    .param p2, "mAppStateTracker"    # Lcom/android/server/AppStateTracker;

    .line 165
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 168
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpAlarmManager;->checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I

    move-result v0

    return v0

    .line 171
    :cond_1
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    return v0
.end method

.method public static dumpNextWakeFromIdleInfo()V
    .locals 1

    .line 119
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 122
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Lcom/android/server/IOpAlarmManager;->dumpNextWakeFromIdleInfo()V

    .line 125
    :cond_1
    return-void
.end method

.method public static ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p1, "isHead"    # Z

    .line 155
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 158
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmManager;->ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z

    move-result v0

    return v0

    .line 161
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifEnableLogDump()Z
    .locals 1

    .line 75
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 78
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0}, Lcom/android/server/IOpAlarmManager;->ifEnableLogDump()Z

    move-result v0

    return v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmManager;->ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifNeedPending(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 106
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 109
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->ifNeedPending(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0

    .line 112
    :cond_1
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0xe

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static initInstance(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAlarmManager;->initInstance(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V

    .line 53
    :cond_1
    return-void
.end method

.method public static modifyMinTrigger(JJJILandroid/app/PendingIntent;ILjava/lang/String;J)[J
    .locals 14
    .param p0, "nowElapsed"    # J
    .param p2, "nominalTrigger"    # J
    .param p4, "triggerAtTime"    # J
    .param p6, "type"    # I
    .param p7, "operation"    # Landroid/app/PendingIntent;
    .param p8, "callingUid"    # I
    .param p9, "callingPackage"    # Ljava/lang/String;
    .param p10, "defaultMin"    # J

    .line 85
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 88
    :cond_0
    sget-object v1, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v1, :cond_1

    .line 89
    move-wide v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-interface/range {v1 .. v13}, Lcom/android/server/IOpAlarmManager;->modifyMinTrigger(JJJILandroid/app/PendingIntent;ILjava/lang/String;J)[J

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p10, v0, v1

    const/4 v1, 0x1

    aput-wide p4, v0, v1

    .line 92
    .local v0, "pairs":[J
    return-object v0
.end method

.method public static needDeferred(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x1

    .line 189
    .local v0, "result":Z
    const-string v1, "com.oneplus.deskclock"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :cond_0
    return v0
.end method

.method public static onStart(Lcom/android/server/AlarmManagerService$AmsInner;)V
    .locals 1
    .param p0, "amsInner"    # Lcom/android/server/AlarmManagerService$AmsInner;

    .line 56
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->onStart(Lcom/android/server/AlarmManagerService$AmsInner;)V

    .line 62
    :cond_1
    return-void
.end method

.method public static setDeepSleepMode(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .line 137
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 140
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->setDeepSleepMode(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public static setDeepSleepWhitelist([I)V
    .locals 1
    .param p0, "appids"    # [I

    .line 128
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 131
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->setDeepSleepWhitelist([I)V

    .line 134
    :cond_1
    return-void
.end method

.method public static setPkgNetworkAlarmRestriction(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .line 146
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 149
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {v0, p0}, Lcom/android/server/IOpAlarmManager;->setPkgNetworkAlarmRestriction(Z)V

    .line 152
    :cond_1
    return-void
.end method

.method public static updateFlag(Ljava/lang/String;ILandroid/app/AlarmManager$AlarmClockInfo;Ljava/lang/String;)I
    .locals 1
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p3, "listenerTag"    # Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAlarmManager;

    sput-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    .line 99
    :cond_0
    sget-object v0, Lcom/android/server/OpAlarmManagerInjector;->opAlarmManager:Lcom/android/server/IOpAlarmManager;

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/IOpAlarmManager;->updateFlag(Ljava/lang/String;ILandroid/app/AlarmManager$AlarmClockInfo;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 102
    :cond_1
    return p1
.end method
