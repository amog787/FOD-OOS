.class public abstract Lcom/android/server/location/GnssNavigationMessageProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssNavigationMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;,
        Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/IGnssNavigationMessageListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssNavigationMessageProvider"


# instance fields
.field private mCollectionStarted:Z

.field private final mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "GnssNavigationMessageProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssNavigationMessageProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/GnssNavigationMessageProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;)V

    .line 45
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "aNative"    # Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 50
    const-string v0, "GnssNavigationMessageProvider"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 51
    iput-object p3, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    .line 52
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->native_stop_navigation_message_collection()Z

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

    .line 89
    invoke-interface {p1, p0}, Landroid/location/IGnssNavigationMessageListener;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V

    .line 90
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

    .line 108
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

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled addListener result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssNavigationMessageProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object v1

    .line 121
    :cond_0
    return-object v1

    .line 118
    :cond_1
    const/4 v0, 0x2

    .line 119
    .local v0, "status":I
    goto :goto_0

    .line 115
    .end local v0    # "status":I
    :cond_2
    const/4 v0, 0x0

    .line 116
    .restart local v0    # "status":I
    goto :goto_0

    .line 110
    .end local v0    # "status":I
    :cond_3
    const/4 v0, 0x1

    .line 111
    .restart local v0    # "status":I
    nop

    .line 126
    :goto_0
    new-instance v1, Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;-><init>(I)V

    return-object v1
.end method

.method protected isAvailableInPlatform()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->isNavigationMessageSupported()Z

    move-result v0

    return v0
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 0
    .param p1, "isGnssNavigationMessageSupported"    # Z

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->setSupported(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/location/GnssNavigationMessageProvider;->updateResult()V

    .line 98
    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/android/server/location/GnssNavigationMessageProvider;->tryUpdateRegistrationWithService()V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/location/GnssNavigationMessageProvider;->updateResult()V

    .line 103
    return-void
.end method

.method public onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 88
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssNavigationMessageProvider$FPgP5DRMyheqM1CQ4z7jkoJwIFg;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$GnssNavigationMessageProvider$FPgP5DRMyheqM1CQ4z7jkoJwIFg;-><init>(Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 92
    return-void
.end method

.method protected registerWithService()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->startNavigationMessageCollection()Z

    move-result v0

    .line 71
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mCollectionStarted:Z

    .line 73
    const/4 v1, 0x0

    return v1

    .line 75
    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method resumeIfStarted()V
    .locals 2

    .line 55
    sget-boolean v0, Lcom/android/server/location/GnssNavigationMessageProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "GnssNavigationMessageProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mCollectionStarted:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->startNavigationMessageCollection()Z

    .line 61
    :cond_1
    return-void
.end method

.method protected unregisterFromService()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->stopNavigationMessageCollection()Z

    move-result v0

    .line 82
    .local v0, "stopped":Z
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mCollectionStarted:Z

    .line 85
    :cond_0
    return-void
.end method
