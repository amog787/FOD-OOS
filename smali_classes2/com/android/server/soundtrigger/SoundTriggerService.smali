.class public Lcom/android/server/soundtrigger/SoundTriggerService;
.super Lcom/android/server/SystemService;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;,
        Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;,
        Lcom/android/server/soundtrigger/SoundTriggerService$Operation;,
        Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;,
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;,
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SoundTriggerService"

.field private static final sEventLogger:Lcom/android/server/soundtrigger/SoundTriggerLogger;


# instance fields
.field private final mCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/IRecognitionStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksLock:Ljava/lang/Object;

.field final mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

.field private final mLoadedModels:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

.field private mLock:Ljava/lang/Object;

.field private final mNumOpsPerPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

.field private final mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

.field private mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1553
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger;

    const/16 v1, 0xc8

    const-string v2, "SoundTrigger activity"

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/soundtrigger/SoundTriggerService;->sEventLogger:Lcom/android/server/soundtrigger/SoundTriggerLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mNumOpsPerPackage:Landroid/util/ArrayMap;

    .line 192
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 193
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    .line 194
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 195
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 199
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/soundtrigger/SoundTriggerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->enforceDetectionPermissions(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mNumOpsPerPackage:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/server/soundtrigger/SoundTriggerService;->sEventLogger:Lcom/android/server/soundtrigger/SoundTriggerLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 98
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbacks:Ljava/util/TreeMap;

    return-object v0
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1534
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    return-void

    .line 1536
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not hold the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceDetectionPermissions(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "detectionService"    # Landroid/content/ComponentName;

    .line 1541
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1542
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1543
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1548
    return-void

    .line 1545
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized initSoundTriggerHelper()V
    .locals 2

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService;
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isInitialized()Z
    .locals 2

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_0

    .line 240
    const-string v0, "SoundTriggerService"

    const-string v1, "SoundTriggerHelper not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 243
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService;
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBootPhase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v0, 0x208

    if-ne v0, p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "not enabling SoundTriggerService in safe mode"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->initSoundTriggerHelper()V

    .line 218
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->setSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    goto :goto_0

    .line 219
    :cond_1
    const/16 v0, 0x258

    if-ne v0, p1, :cond_2

    .line 220
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 222
    :cond_2
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    const-string v1, "soundtrigger"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 205
    const-class v0, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public onStartUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .line 226
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .line 230
    return-void
.end method
