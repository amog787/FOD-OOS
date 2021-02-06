.class Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSoundTriggerDetectionService"
.end annotation


# static fields
.field private static final MSG_STOP_ALL_PENDING_OPERATIONS:I = 0x1


# instance fields
.field private final mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

.field private mDestroyOnceRunningOpsDone:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field private mIsDestroyed:Z

.field private final mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

.field private mNumTotalOpsPerformed:I

.field private final mParams:Landroid/os/Bundle;

.field private final mPendingOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/soundtrigger/SoundTriggerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPuuid:Landroid/os/ParcelUuid;

.field private final mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private final mRemoteServiceLock:Ljava/lang/Object;

.field private final mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mRunningOpIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

.field private final mServiceName:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .locals 5
    .param p2, "modelUuid"    # Ljava/util/UUID;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "serviceName"    # Landroid/content/ComponentName;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 982
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    .line 919
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    .line 940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    .line 943
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    .line 983
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-direct {v0, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    .line 984
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mParams:Landroid/os/Bundle;

    .line 985
    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    .line 986
    iput-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    .line 987
    iput-object p6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 988
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    .line 990
    iget-object v0, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 991
    .local v0, "pm":Landroid/os/PowerManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteSoundTriggerDetectionService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    .line 992
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    .line 993
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 995
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 996
    :try_start_0
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$1100(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    .line 997
    .local v2, "numOps":Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;
    if-nez v2, :cond_0

    .line 998
    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    move-object v2, v3

    .line 999
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$1100(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :cond_0
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    .line 1002
    .end local v2    # "numOps":Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    .line 1025
    return-void

    .line 1002
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$1300(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    .line 915
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    .line 915
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    .line 915
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    .line 915
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    .line 915
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    .line 915
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    return-void
.end method

.method private bind()V
    .locals 11

    .line 1119
    const-string v0, ": Could not bind to "

    const-string v1, " does not require "

    const-string v2, " not found"

    const-string v3, "android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1121
    .local v4, "token":J
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1122
    .local v6, "i":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1124
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v7, v7, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const v8, 0x10000084

    iget-object v9, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    .line 1126
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 1124
    invoke-virtual {v7, v6, v8, v9}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    const-string v8, "SoundTriggerService"

    const-string v9, ": "

    if-nez v7, :cond_0

    .line 1129
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    return-void

    .line 1137
    :cond_0
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 1138
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1163
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1146
    return-void

    .line 1149
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const v2, 0x4001001

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    .line 1153
    if-eqz v1, :cond_2

    .line 1154
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 1156
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1163
    .end local v6    # "i":Landroid/content/Intent;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    nop

    .line 1165
    return-void

    .line 1163
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    throw v0
.end method

.method private createAudioRecordForEvent(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)Landroid/media/AudioRecord;
    .locals 8
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 1288
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1289
    .local v0, "attributesBuilder":Landroid/media/AudioAttributes$Builder;
    const/16 v1, 0x7cf

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 1290
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1293
    .local v1, "attributes":Landroid/media/AudioAttributes;
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    .line 1294
    .local v2, "originalFormat":Landroid/media/AudioFormat;
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1295
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 1296
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 1297
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 1298
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 1301
    .local v3, "captureFormat":Landroid/media/AudioFormat;
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    if-nez v4, :cond_0

    .line 1302
    const v4, 0x2ee00

    goto :goto_0

    .line 1303
    :cond_0
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    .line 1304
    :goto_0
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1305
    const/16 v5, 0xc

    goto :goto_1

    .line 1306
    :cond_1
    const/16 v5, 0x10

    .line 1307
    :goto_1
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    .line 1300
    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    .line 1309
    .local v4, "bufferSize":I
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v7, "createAudioRecordForEvent"

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1311
    new-instance v5, Landroid/media/AudioRecord;

    .line 1312
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getCaptureSession()I

    move-result v6

    invoke-direct {v5, v1, v3, v4, v6}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 1311
    return-object v5
.end method

.method private destroy()V
    .locals 4

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": destroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    .line 1073
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    .line 1074
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1077
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1079
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1074
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private disconnectLocked()V
    .locals 5

    .line 1037
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v0, :cond_0

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->removeClient(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Cannot remove client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot remove client"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1048
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    .line 1051
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1053
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    .line 1055
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1056
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1057
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1059
    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic lambda$wfDlqQ7aPvu9qZCZ24jJu4tfUMY(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->stopAllPendingOperations()V

    return-void
.end method

.method private runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V
    .locals 12
    .param p1, "op"    # Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    .line 1174
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1175
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1186
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-nez v1, :cond_1

    .line 1187
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-nez v1, :cond_5

    .line 1190
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->bind()V

    goto/16 :goto_1

    .line 1193
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1194
    .local v1, "currentTime":J
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->clearOldOps(J)V

    .line 1197
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v3, v3, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "max_sound_trigger_detection_service_ops_per_day"

    const v5, 0x7fffffff

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1202
    .local v3, "opsAllowed":I
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v4}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->getOpsAdded()I

    move-result v4

    .line 1224
    .local v4, "opsAdded":I
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->addOp(J)V

    .line 1227
    iget v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    .line 1229
    .local v5, "opId":I
    :cond_2
    iget v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    .line 1230
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 1234
    :try_start_1
    const-string v6, "SoundTriggerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": runOp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v6

    new-instance v8, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": runOp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1239
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    invoke-virtual {p1, v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    .line 1240
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1247
    goto :goto_0

    .line 1241
    :catch_0
    move-exception v6

    .line 1242
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "SoundTriggerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": Could not run operation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v8

    new-instance v9, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": Could not run operation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1251
    .end local v5    # "opId":I
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1252
    iget-boolean v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-eqz v5, :cond_3

    .line 1253
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    goto :goto_1

    .line 1255
    :cond_3
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    goto :goto_1

    .line 1258
    :cond_4
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$wfDlqQ7aPvu9qZCZ24jJu4tfUMY;->INSTANCE:Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$wfDlqQ7aPvu9qZCZ24jJu4tfUMY;

    invoke-static {v6, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1261
    invoke-virtual {v6, v7}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v7, v7, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 1262
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sound_trigger_detection_service_op_timeout"

    const-wide v9, 0x7fffffffffffffffL

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 1259
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1267
    .end local v1    # "currentTime":J
    .end local v3    # "opsAllowed":I
    .end local v4    # "opsAdded":I
    :cond_5
    :goto_1
    monitor-exit v0

    .line 1268
    return-void

    .line 1176
    :cond_6
    :goto_2
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Dropped operation as already destroyed or marked for destruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":Dropped operation as already destroyed or marked for destruction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1182
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->drop()V

    .line 1183
    monitor-exit v0

    return-void

    .line 1267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private stopAllPendingOperations()V
    .locals 8

    .line 1088
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    .line 1090
    monitor-exit v0

    return-void

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v1, :cond_2

    .line 1094
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    .local v1, "numOps":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1097
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onStopOperation(Landroid/os/ParcelUuid;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    goto :goto_1

    .line 1098
    :catch_0
    move-exception v3

    .line 1099
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Could not stop operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    .line 1100
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1099
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1102
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": Could not stop operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    .line 1103
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1095
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1111
    .end local v1    # "numOps":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    .line 1112
    monitor-exit v0

    .line 1113
    return-void

    .line 1112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public synthetic lambda$onError$3$SoundTriggerService$RemoteSoundTriggerDetectionService()V
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    .line 1364
    return-void

    .line 1362
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onError$4$SoundTriggerService$RemoteSoundTriggerDetectionService(IILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "opId"    # I
    .param p3, "service"    # Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {p3, v0, p2, p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onError(Landroid/os/ParcelUuid;II)V

    return-void
.end method

.method public synthetic lambda$onGenericSoundTriggerDetected$0$SoundTriggerService$RemoteSoundTriggerDetectionService()V
    .locals 3

    .line 1325
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    goto :goto_0

    .line 1329
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1332
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$onGenericSoundTriggerDetected$1$SoundTriggerService$RemoteSoundTriggerDetectionService(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .param p2, "opId"    # I
    .param p3, "service"    # Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {p3, v0, p2, p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onGenericRecognitionEvent(Landroid/os/ParcelUuid;ILandroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return-void
.end method

.method public synthetic lambda$onGenericSoundTriggerDetected$2$SoundTriggerService$RemoteSoundTriggerDetectionService(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 1337
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->createAudioRecordForEvent(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)Landroid/media/AudioRecord;

    move-result-object v0

    .line 1342
    .local v0, "capturedData":Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 1343
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 1345
    .end local v0    # "capturedData":Landroid/media/AudioRecord;
    :cond_0
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onBindingDied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": onBindingDied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    .line 1433
    monitor-exit v0

    .line 1434
    return-void

    .line 1433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onError(I)V
    .locals 5
    .param p1, "status"    # I

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1355
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    new-instance v1, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$t5mBYXswwLAAdm47WS10stLjYng;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$t5mBYXswwLAAdm47WS10stLjYng;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    new-instance v2, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    .line 1369
    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Generic sound trigger event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1322
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    new-instance v1, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$yqLMvkOmrO13yWrggtSaVrLgsWo;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$yqLMvkOmrO13yWrggtSaVrLgsWo;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    new-instance v2, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    new-instance v3, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$pFqiq_C9KJsoa_HQOdj7lmMixsI;

    invoke-direct {v3, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$pFqiq_C9KJsoa_HQOdj7lmMixsI;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    .line 1346
    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onKeyphraseDetected("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SoundTriggerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1278
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for model "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a null binding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned a null binding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1443
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    .line 1445
    monitor-exit v0

    .line 1446
    return-void

    .line 1445
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRecognitionPaused()V
    .locals 6

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onRecognitionPaused"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoundTriggerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1378
    return-void
.end method

.method public onRecognitionResumed()V
    .locals 6

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onRecognitionResumed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoundTriggerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1387
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onServiceConnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": onServiceConnected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1396
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1397
    :try_start_0
    invoke-static {p2}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mParams:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    invoke-interface {v1, v2, v3, v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->setClient(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1404
    nop

    .line 1406
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    goto :goto_0

    .line 1409
    :cond_0
    monitor-exit v0

    .line 1410
    return-void

    .line 1401
    :catch_0
    move-exception v1

    .line 1402
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SoundTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Could not init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    monitor-exit v0

    return-void

    .line 1409
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": onServiceDisconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1419
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1420
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    .line 1421
    monitor-exit v0

    .line 1422
    return-void

    .line 1421
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pingBinder()Z
    .locals 1

    .line 1029
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
