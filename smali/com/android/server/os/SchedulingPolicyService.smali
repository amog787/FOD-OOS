.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final MEDIA_PROCESS_NAMES:[Ljava/lang/String;

.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# instance fields
.field private mBoostedPid:I

.field private mClient:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string/jumbo v0, "media.swcodec"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$1;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    iput-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 67
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/os/-$$Lambda$SchedulingPolicyService$ao2OiSvvlyzmJ0li0c0nhHy-IDk;

    invoke-direct {v1, p0}, Lcom/android/server/os/-$$Lambda$SchedulingPolicyService$ao2OiSvvlyzmJ0li0c0nhHy-IDk;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    const-string v2, "SchedulingPolicyService.<init>"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 79
    return-void
.end method

.method private disableCpusetBoost(I)I
    .locals 8
    .param p1, "pid"    # I

    .line 180
    const-string v0, " back to group default"

    const-string v1, "SchedulingPolicyService"

    iget v2, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 183
    .local v2, "boostedPid":I
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 184
    iget-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 186
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v4, v7, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    throw v0

    .line 187
    :catch_0
    move-exception v4

    .line 189
    :goto_0
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 195
    :cond_0
    if-ne v2, p1, :cond_1

    .line 197
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p1, v3}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    goto :goto_1

    .line 199
    :catch_1
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t move pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return v5
.end method

.method private enableCpusetBoost(ILandroid/os/IBinder;)I
    .locals 6
    .param p1, "pid"    # I
    .param p2, "client"    # Landroid/os/IBinder;

    .line 141
    const-string v0, "SchedulingPolicyService"

    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 142
    return v2

    .line 148
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 149
    iget-object v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    .line 151
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v5, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    throw v0

    .line 152
    :catch_0
    move-exception v3

    .line 154
    :goto_0
    iput-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 159
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p1, v4}, Landroid/os/Process;->setProcessGroup(II)V

    .line 164
    iput p1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 165
    iput-object p2, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    return v2

    .line 168
    :catch_1
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed enableCpusetBoost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_2
    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 173
    :catch_2
    move-exception v0

    :goto_1
    nop

    .line 176
    .end local v3    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private isPermitted()Z
    .locals 3

    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 210
    return v2

    .line 213
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1

    const/16 v1, 0x411

    if-eq v0, v1, :cond_1

    const/16 v1, 0x417

    if-eq v0, v1, :cond_1

    .line 219
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_1
    return v2
.end method


# virtual methods
.method public synthetic lambda$new$0$SchedulingPolicyService()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-enter v0

    .line 70
    :try_start_0
    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 71
    sget-object v1, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 72
    .local v1, "nativePids":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 73
    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 74
    aget v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)I

    .line 77
    .end local v1    # "nativePids":[I
    :cond_0
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestCpusetBoost(ZLandroid/os/IBinder;)I
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "client"    # Landroid/os/IBinder;

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_0

    .line 122
    return v2

    .line 125
    :cond_0
    sget-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 126
    .local v0, "nativePids":[I
    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-enter v1

    .line 132
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 133
    :try_start_0
    aget v2, v0, v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/os/SchedulingPolicyService;->enableCpusetBoost(ILandroid/os/IBinder;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 135
    :cond_2
    aget v2, v0, v2

    invoke-direct {p0, v2}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)I

    move-result v2

    monitor-exit v1

    return v2

    .line 137
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 127
    :cond_3
    :goto_0
    const-string v1, "SchedulingPolicyService"

    const-string/jumbo v3, "requestCpusetBoost: can\'t find media.codec process"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v2
.end method

.method public requestPriority(IIIZ)I
    .locals 5
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I
    .param p4, "isForApp"    # Z

    .line 92
    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermitted()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    const/4 v0, 0x3

    if-gt p3, v0, :cond_3

    .line 93
    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_2

    .line 96
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3ea

    const-string v3, "SchedulingPolicyService"

    if-eq v0, v2, :cond_2

    .line 99
    if-nez p4, :cond_1

    .line 100
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 99
    :goto_0
    :try_start_0
    invoke-static {p2, v0}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed setThreadGroup: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v1

    .line 108
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_1
    const v0, 0x40000001    # 2.0000002f

    :try_start_1
    invoke-static {p2, v0, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    nop

    .line 114
    const/4 v0, 0x0

    return v0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed setThreadScheduler: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v1

    .line 94
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_2
    return v1
.end method
