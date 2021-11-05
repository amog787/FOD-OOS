.class Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeakerphoneClient"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field private final mOn:Z

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;IZ)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "on"    # Z

    .line 1474
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    .line 1476
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mPid:I

    .line 1477
    iput-boolean p4, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mOn:Z

    .line 1478
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker;->postSpeakerphoneClientDied(Ljava/lang/Object;)V

    .line 1502
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method getPid()I
    .locals 1

    .line 1509
    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mPid:I

    return v0
.end method

.method isOn()Z
    .locals 1

    .line 1513
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mOn:Z

    return v0
.end method

.method public registerDeathRecipient()Z
    .locals 4

    .line 1481
    const/4 v0, 0x0

    .line 1483
    .local v0, "status":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    const/4 v0, 0x1

    .line 1487
    goto :goto_0

    .line 1485
    :catch_0
    move-exception v1

    .line 1486
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpeakerphoneClient could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioDeviceBroker"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public unregisterDeathRecipient()V
    .locals 3

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$SpeakerphoneClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    goto :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "SpeakerphoneClient could not not unregistered to binder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    return-void
.end method
