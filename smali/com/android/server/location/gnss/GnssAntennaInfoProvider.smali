.class public abstract Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssAntennaInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssAntennaInfoListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssAntennaInfoProvider"


# instance fields
.field private mIsListeningStarted:Z

.field private final mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "GnssAntennaInfoProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "aNative"    # Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    .line 53
    const-string v0, "GnssAntennaInfoProvider"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 54
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    .line 55
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->native_is_antenna_info_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->native_start_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->native_stop_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getHandlerOperation$0(Landroid/location/IGnssAntennaInfoListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .param p0, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method private static native native_is_antenna_info_supported()Z
.end method

.method private static native native_start_antenna_info_listening()Z
.end method

.method private static native native_stop_antenna_info_listening()Z
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 1
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssAntennaInfoListener;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/android/server/location/gnss/-$$Lambda$GnssAntennaInfoProvider$6tStkOUFQdyPwrIlenWNx1CLtUg;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssAntennaInfoProvider$6tStkOUFQdyPwrIlenWNx1CLtUg;

    return-object v0
.end method

.method public isAvailableInPlatform()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;->isAntennaInfoSupported()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onGnssAntennaInfoAvailable$1$GnssAntennaInfoProvider(Ljava/util/List;Landroid/location/IGnssAntennaInfoListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 3
    .param p1, "gnssAntennaInfos"    # Ljava/util/List;
    .param p2, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .param p3, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string v1, "GnssAntennaInfoProvider"

    const-string v2, "GNSS antenna info"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-interface {p2, p1}, Landroid/location/IGnssAntennaInfoListener;->onGnssAntennaInfoReceived(Ljava/util/List;)V

    .line 119
    return-void
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 0
    .param p1, "isAntennaInfoSupported"    # Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->setSupported(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->updateResult()V

    .line 94
    return-void
.end method

.method public onGnssAntennaInfoAvailable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "gnssAntennaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssAntennaInfoProvider$jWS_iJ6LE00DEMXMePHMZafshRk;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssAntennaInfoProvider$jWS_iJ6LE00DEMXMePHMZafshRk;-><init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 120
    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->tryUpdateRegistrationWithService()V

    .line 99
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->updateResult()V

    .line 100
    return-void
.end method

.method protected registerWithService()I
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;->startAntennaInfoListening()Z

    move-result v0

    .line 75
    .local v0, "started":Z
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mIsListeningStarted:Z

    .line 77
    const/4 v1, 0x0

    return v1

    .line 79
    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method resumeIfStarted()V
    .locals 2

    .line 58
    sget-boolean v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "GnssAntennaInfoProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mIsListeningStarted:Z

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;->startAntennaInfoListening()Z

    .line 64
    :cond_1
    return-void
.end method

.method protected unregisterFromService()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNative:Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;->stopAntennaInfoListening()Z

    move-result v0

    .line 85
    .local v0, "stopped":Z
    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mIsListeningStarted:Z

    .line 88
    :cond_0
    return-void
.end method
