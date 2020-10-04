.class public Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.super Ljava/lang/Object;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_TETHER_OFFLOAD_DISABLED:I = 0x0

.field private static final NO_INTERFACE_NAME:Ljava/lang/String; = ""

.field private static final NO_IPV4_ADDRESS:Ljava/lang/String; = ""

.field private static final NO_IPV4_GATEWAY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;

.field private static final YIELDS:Ljava/lang/String; = " -> "


# instance fields
.field private mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

.field private mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/SharedLog;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "log"    # Landroid/net/util/SharedLog;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    .line 91
    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    .line 92
    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 39
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->networkProtocolToOsConstant(I)I

    move-result v0

    return v0
.end method

.method private static native configOffload()Z
.end method

.method static synthetic lambda$addDownstreamPrefix$6(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 252
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 253
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 254
    return-void
.end method

.method static synthetic lambda$getForwardedStats$2(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;JJ)V
    .locals 4
    .param p0, "stats"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    .param p1, "rxBytes"    # J
    .param p3, "txBytes"    # J

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    .line 166
    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    move-wide v0, p3

    :cond_1
    iput-wide v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    .line 167
    return-void
.end method

.method static synthetic lambda$initOffloadControl$0(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 128
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 129
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 130
    return-void
.end method

.method static synthetic lambda$removeDownstreamPrefix$7(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 271
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 272
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 273
    return-void
.end method

.method static synthetic lambda$setDataLimit$4(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 206
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 207
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 208
    return-void
.end method

.method static synthetic lambda$setLocalPrefixes$3(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 185
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 186
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 187
    return-void
.end method

.method static synthetic lambda$setUpstreamParameters$5(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 233
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 234
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    .line 235
    return-void
.end method

.method private static networkProtocolToOsConstant(I)I
    .locals 1
    .param p0, "proto"    # I

    .line 344
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    .line 350
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    return v0

    .line 346
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    return v0

    .line 345
    :cond_1
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    return v0
.end method

.method private record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "logmsg":Ljava/lang/String;
    iget-boolean v1, p2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void
.end method

.method private record(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 285
    return-void
.end method


# virtual methods
.method public addDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 246
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "addDownstreamPrefix(%s, %s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 250
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$GhKYJ09_bq-n9xoRpQeCc3ZpQPU;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$GhKYJ09_bq-n9xoRpQeCc3ZpQPU;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .line 260
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 261
    iget-boolean v1, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v1

    .line 255
    :catch_0
    move-exception v3

    .line 256
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    return v1
.end method

.method public getDefaultTetherOffloadDisabled()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getForwardedStats(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    .locals 5
    .param p1, "upstream"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "getForwardedStats(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "logmsg":Ljava/lang/String;
    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-direct {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;-><init>()V

    .line 162
    .local v1, "stats":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v3, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;

    invoke-direct {v3, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;)V

    invoke-interface {v2, p1, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    nop

    .line 173
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 174
    return-object v1

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-object v1
.end method

.method public initOffloadConfig()Z
    .locals 1

    .line 99
    invoke-static {}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->configOffload()Z

    move-result v0

    return v0
.end method

.method public initOffloadControl(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;)Z
    .locals 6
    .param p1, "controlCb"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 103
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 105
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    :try_start_0
    invoke-static {}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getService()Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 112
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering IOffloadControl.getService() returned null"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 114
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tethering offload control not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 110
    return v1

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    if-nez p1, :cond_1

    const-string/jumbo v2, "null"

    goto :goto_0

    .line 120
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v0, v1

    .line 118
    const-string v2, "initOffloadControl(%s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;Landroid/net/util/SharedLog;)V

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    .line 123
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 125
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    new-instance v5, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$324leYOM3BvGJiK4Wade-B0d5jE;

    invoke-direct {v5, v2}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$324leYOM3BvGJiK4Wade-B0d5jE;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, v4, v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    nop

    .line 136
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 137
    iget-boolean v1, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v1

    .line 131
    :catch_1
    move-exception v3

    .line 132
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    return v1
.end method

.method public synthetic lambda$stopOffloadControl$1$OffloadHardwareInterface(ZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 145
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopOffload failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 265
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string/jumbo v2, "removeDownstreamPrefix(%s, %s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 269
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$w6w__dI5-bH4oSI_P9WIdOzlG28;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$w6w__dI5-bH4oSI_P9WIdOzlG28;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    nop

    .line 279
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 280
    iget-boolean v1, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v1

    .line 274
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    return v1
.end method

.method public setDataLimit(Ljava/lang/String;J)Z
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "limit"    # J

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string/jumbo v2, "setDataLimit(%s, %d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 203
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$4gz9PGx-iHz6VaJglXvPXV_YCTo;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$4gz9PGx-iHz6VaJglXvPXV_YCTo;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, p3, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    nop

    .line 214
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 215
    iget-boolean v1, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v1

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return v1
.end method

.method public setLocalPrefixes(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 178
    .local p1, "localPrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    const-string v1, ","

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "setLocalPrefixes([%s])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "logmsg":Ljava/lang/String;
    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    .line 183
    .local v1, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;

    invoke-direct {v4, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    nop

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 194
    iget-boolean v2, v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v2

    .line 188
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return v2
.end method

.method public setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "v4addr"    # Ljava/lang/String;
    .param p3, "v4gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 220
    .local p4, "v6gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object p1, v1

    .line 221
    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    move-object p2, v1

    .line 222
    if-eqz p3, :cond_2

    move-object v0, p3

    :cond_2
    move-object p3, v0

    .line 223
    if-eqz p4, :cond_3

    move-object v0, p4

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    move-object p4, v0

    .line 225
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    .line 226
    const-string v3, ","

    invoke-static {v3, p4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 225
    const-string/jumbo v2, "setUpstreamParameters(%s, %s, %s, [%s])"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    move-object v8, v2

    .line 230
    .local v8, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v7, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$2RWDK-fyqU5SThZDqBkZ1L_XSJA;

    invoke-direct {v7, v8}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$2RWDK-fyqU5SThZDqBkZ1L_XSJA;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .line 241
    invoke-direct {p0, v0, v8}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 242
    iget-boolean v1, v8, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v1

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return v1
.end method

.method public stopOffloadControl()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    new-instance v1, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;)V

    invoke-interface {v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to stopOffload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 152
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    .line 153
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 154
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "stopOffloadControl()"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 155
    return-void
.end method
