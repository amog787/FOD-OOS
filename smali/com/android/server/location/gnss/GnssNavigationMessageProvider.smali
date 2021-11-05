.class public abstract Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssNavigationMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;,
        Lcom/android/server/location/gnss/GnssNavigationMessageProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssNavigationMessageListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssNavigationMessageProvider"


# instance fields
.field private mCollectionStarted:Z

.field private final mNative:Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "GnssNavigationMessageProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "aNative"    # Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    .line 52
    const-string v0, "GnssNavigationMessageProvider"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 53
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    .line 54
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onNavigationMessageAvailable$0(Landroid/location/GnssNavigationMessage;Landroid/location/IGnssNavigationMessageListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .param p0, "event"    # Landroid/location/GnssNavigationMessage;
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-interface {p1, p0}, Landroid/location/IGnssNavigationMessageListener;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    .line 92
    return-void
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_start_navigation_message_collection()Z
.end method

.method private static native native_stop_navigation_message_collection()Z
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssNavigationMessageListener;",
            ">;"
        }
    .end annotation

    .line 110
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled addListener result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssNavigationMessageProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v1

    .line 123
    :cond_0
    return-object v1

    .line 120
    :cond_1
    const/4 v0, 0x2

    .line 121
    .local v0, "status":I
    goto :goto_0

    .line 117
    .end local v0    # "status":I
    :cond_2
    const/4 v0, 0x0

    .line 118
    .restart local v0    # "status":I
    goto :goto_0

    .line 112
    .end local v0    # "status":I
    :cond_3
    const/4 v0, 0x1

    .line 113
    .restart local v0    # "status":I
    nop

    .line 128
    :goto_0
    new-instance v1, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$StatusChangedOperation;-><init>(I)V

    return-object v1
.end method

.method protected isAvailableInPlatform()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->isNavigationMessageSupported()Z

    move-result v0

    return v0
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 0
    .param p1, "isGnssNavigationMessageSupported"    # Z

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->setSupported(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->updateResult()V

    .line 100
    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->tryUpdateRegistrationWithService()V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->updateResult()V

    .line 105
    return-void
.end method

.method public onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 90
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssNavigationMessageProvider$D5t4Ipp10sVG9cnfR_zUPXq4hl8;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssNavigationMessageProvider$D5t4Ipp10sVG9cnfR_zUPXq4hl8;-><init>(Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 94
    return-void
.end method

.method protected registerWithService()I
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->startNavigationMessageCollection()Z

    move-result v0

    .line 73
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mCollectionStarted:Z

    .line 75
    const/4 v1, 0x0

    return v1

    .line 77
    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method resumeIfStarted()V
    .locals 2

    .line 57
    sget-boolean v0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "GnssNavigationMessageProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mCollectionStarted:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->startNavigationMessageCollection()Z

    .line 63
    :cond_1
    return-void
.end method

.method protected unregisterFromService()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->stopNavigationMessageCollection()Z

    move-result v0

    .line 84
    .local v0, "stopped":Z
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->mCollectionStarted:Z

    .line 87
    :cond_0
    return-void
.end method
