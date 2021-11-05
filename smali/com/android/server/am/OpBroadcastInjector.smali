.class Lcom/android/server/am/OpBroadcastInjector;
.super Ljava/lang/Object;
.source "OpBroadcastInjector.java"


# static fields
.field public static final SCENE_OF_RECEVIER_TOOK_TIME:I = 0x1

.field public static final SCENE_OF_TIME_TO_RECEVIER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpBroadcastInjector"

.field private static sIBroadcast:Lcom/android/server/am/IBroadcast;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustIfAppNotExist(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p0, "broadcastRecord"    # Lcom/android/server/am/BroadcastRecord;

    .line 88
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 89
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p0}, Lcom/android/server/am/IBroadcast;->adjustIfAppNotExist(Lcom/android/server/am/BroadcastRecord;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static adjustReceiverListForSMS(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p0, "receivers"    # Ljava/util/List;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 95
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 96
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->adjustReceiverListForSMS(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    return-object p0
.end method

.method public static dumpsys(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 74
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 75
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->dumpsys(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static enqueueBroadcastLocked(ZLcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p0, "isOrder"    # Z
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 60
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 61
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->enqueueBroadcastLocked(ZLcom/android/server/am/BroadcastRecord;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static init()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 47
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->init()V

    .line 50
    :cond_0
    return-void
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 53
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 54
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p0}, Lcom/android/server/am/IBroadcast;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static initInstance()V
    .locals 1

    .line 32
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vip_broadcast:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 34
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IBroadcast;

    sput-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    .line 36
    :cond_0
    return-void
.end method

.method public static isEnableDelayStrategy()Z
    .locals 1

    .line 152
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 153
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->isEnableDelayStrategy()Z

    move-result v0

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableFeature()Z
    .locals 1

    .line 161
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 162
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->isEnableFeature()Z

    move-result v0

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static processOrderedBroadcastForPriorityLocked(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1
    .param p0, "broadcastRecord"    # Lcom/android/server/am/BroadcastRecord;
    .param p1, "numReceivers"    # I

    .line 81
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 82
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->processOrderedBroadcastForPriorityLocked(Lcom/android/server/am/BroadcastRecord;I)V

    .line 85
    :cond_0
    return-void
.end method

.method public static processParallelBroadcastLocked()V
    .locals 1

    .line 67
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 68
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->processParallelBroadcastLocked()V

    .line 71
    :cond_0
    return-void
.end method

.method public static skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 1
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .line 143
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 144
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IBroadcast;->skipBroadcastLocked(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 134
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 135
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IBroadcast;->skipBroadcastLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static speedMonitor(ZI)V
    .locals 1
    .param p0, "isdequeue"    # Z
    .param p1, "count"    # I

    .line 39
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 40
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBroadcast;->speedMonitor(ZI)V

    .line 43
    :cond_0
    return-void
.end method

.method public static systemReady(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 128
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p0}, Lcom/android/server/am/IBroadcast;->systemReady(Landroid/content/Context;)V

    .line 131
    :cond_0
    return-void
.end method

.method public static updateAnrCount()V
    .locals 1

    .line 120
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 121
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->updateAnrCount()V

    .line 124
    :cond_0
    return-void
.end method

.method public static updateRcvInfo(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
    .locals 10
    .param p0, "scenes"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "receiverTookTime"    # J
    .param p5, "timeFromSendtorcv"    # J
    .param p7, "appVersionCode"    # Ljava/lang/String;
    .param p8, "queueFlag"    # I

    .line 105
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 106
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 107
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/server/am/IBroadcast;->updateRcvInfo(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    .line 110
    :cond_0
    return-void
.end method

.method public static updateReceiverCount()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/android/server/am/OpBroadcastInjector;->initInstance()V

    .line 114
    sget-object v0, Lcom/android/server/am/OpBroadcastInjector;->sIBroadcast:Lcom/android/server/am/IBroadcast;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/android/server/am/IBroadcast;->updateReceiverCount()V

    .line 117
    :cond_0
    return-void
.end method
