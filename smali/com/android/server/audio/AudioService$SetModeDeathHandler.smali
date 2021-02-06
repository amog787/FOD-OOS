.class Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPackage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .line 4300
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4292
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 4296
    const-string/jumbo p1, "origin"

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageName:Ljava/lang/String;

    .line 4301
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 4302
    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    .line 4303
    iput p4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 4304
    iput-object p5, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    .line 4305
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 4287
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 9

    .line 4308
    const/4 v0, 0x0

    .line 4309
    .local v0, "newModeOwnerPid":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4310
    :try_start_0
    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "setMode() client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4312
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 4313
    const-string v3, "AS.AudioService"

    const-string/jumbo v4, "unregistered setMode() client died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4315
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    iget v7, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    const-string v8, "AS.AudioService"

    invoke-static/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;IILjava/lang/String;)I

    move-result v3

    move v0, v3

    .line 4317
    .end local v2    # "index":I
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4320
    const-string v1, "AS.AudioService"

    const-string v2, "In binderDied(), calling setModeOwnerPid()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetModeOwnerPid(I)V

    .line 4322
    return-void

    .line 4317
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 4337
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 4333
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 4345
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 4355
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 4325
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 4341
    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 4329
    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    .line 4330
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 4352
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackageName:Ljava/lang/String;

    .line 4353
    return-void
.end method
