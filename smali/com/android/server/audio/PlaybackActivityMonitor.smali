.class public final Lcom/android/server/audio/PlaybackActivityMonitor;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DUCK_ID:Landroid/media/VolumeShaper$Configuration;

.field private static final DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field private static final FLAGS_FOR_SILENCE_OVERRIDE:I = 0xc0

.field private static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field private static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

.field public static final TAG:Ljava/lang/String; = "AudioService.PlaybackActivityMonitor"

.field private static final UNDUCKABLE_PLAYER_TYPES:[I

.field private static final VOLUME_SHAPER_SYSTEM_DUCK_ID:I = 0x1

.field private static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final mBannedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

.field private mHasPublicClients:Z

.field private final mMaxAlarmVolume:I

.field private final mMutedPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerLock:Ljava/lang/Object;

.field private final mPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivilegedAlarmActiveCount:I

.field private mSavedAlarmVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 61
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    .line 64
    invoke-virtual {v0, v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 69
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 67
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 72
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    .line 74
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v1, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 76
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 80
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    .line 86
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 87
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 876
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x64

    const-string/jumbo v2, "playback activity as reported through PlayerBase"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0xd
        0x3
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxAlarmVolume"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 100
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 102
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 429
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>(Lcom/android/server/audio/PlaybackActivityMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 105
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 106
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    .line 107
    sput-object p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 108
    sput-object p0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    .line 109
    return-void
.end method

.method static synthetic access$100()Lcom/android/server/audio/AudioEventLogger;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$200()Landroid/media/VolumeShaper$Configuration;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method static synthetic access$300()Landroid/media/VolumeShaper$Operation;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static synthetic access$400()Landroid/media/VolumeShaper$Operation;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static synthetic access$500()Landroid/media/VolumeShaper$Configuration;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method private anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 413
    .local p1, "sysConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "publicConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 417
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v2    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_0
    goto :goto_0

    .line 421
    :cond_1
    return-object v0
.end method

.method private checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z
    .locals 7
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "uid"    # I

    .line 141
    const-string v0, " uid:"

    const-string v1, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 142
    .local v2, "toBan":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v3

    .line 145
    .local v3, "piid":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "banning player "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/PlayerProxy;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_1

    .line 147
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error banning player "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v3    # "piid":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return v2
.end method

.method private static checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z
    .locals 3
    .param p0, "piid"    # I
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "binderUid"    # I

    .line 350
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 351
    return v0

    .line 352
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forbidden operation from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for player "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioService.PlaybackActivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v0

    .line 356
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V
    .locals 6
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "event"    # I

    .line 196
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    const/16 v2, 0xc0

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 200
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v4

    .line 201
    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    .line 204
    if-ne p2, v0, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 206
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez v1, :cond_2

    .line 207
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 209
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_0

    .line 212
    :cond_1
    if-eq p2, v0, :cond_2

    .line 213
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 214
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez v1, :cond_2

    .line 215
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result v1

    iget v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    if-ne v1, v3, :cond_2

    .line 218
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 225
    :cond_2
    :goto_0
    return-void
.end method

.method private dispatchPlaybackChange(Z)V
    .locals 9
    .param p1, "iplayerReleased"    # Z

    .line 364
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    monitor-exit v0

    return-void

    .line 369
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 375
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    monitor-exit v1

    return-void

    .line 379
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    .local v0, "configsSystem":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v2

    .line 383
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    monitor-exit v2

    return-void

    .line 386
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 387
    .local v1, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 388
    .local v3, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 389
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    .local v4, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :try_start_3
    iget v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_5

    .line 393
    iget-boolean v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_4

    .line 394
    iget-object v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v5, v0, p1}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V

    goto :goto_2

    .line 399
    :cond_4
    iget-object v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    :cond_5
    :goto_2
    goto :goto_3

    .line 402
    :catch_0
    move-exception v5

    .line 403
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_4
    iget v6, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    .line 404
    const-string v6, "AudioService.PlaybackActivityMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") trying to dispatch playback config change to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v4    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_1

    .line 408
    .end local v3    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    :cond_6
    monitor-exit v2

    .line 409
    return-void

    .line 408
    .end local v1    # "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 380
    .end local v0    # "configsSystem":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 369
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method


# virtual methods
.method public disableAudioForUid(ZI)V
    .locals 4
    .param p1, "disable"    # Z
    .param p2, "uid"    # I

    .line 116
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 118
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 119
    if-nez p1, :cond_2

    .line 123
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 127
    :cond_0
    if-eqz p1, :cond_2

    .line 128
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 129
    .local v3, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-direct {p0, v3, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    .line 130
    nop

    .end local v3    # "apc":Landroid/media/AudioPlaybackConfiguration;
    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v1    # "index":I
    :cond_2
    :goto_1
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .locals 8
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "loser"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 437
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 439
    monitor-exit v0

    return v2

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 444
    .local v1, "apcIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPlaybackConfiguration;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v3, "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 447
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 448
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 449
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 450
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 452
    const/4 v5, 0x0

    if-nez p3, :cond_1

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 456
    const-string v2, "AudioService.PlaybackActivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not ducking player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - SPEECH"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 456
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-exit v0

    return v5

    .line 460
    :cond_1
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 461
    const-string v2, "AudioService.PlaybackActivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not ducking player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " due to type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v7

    .line 464
    invoke-static {v7}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 461
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v0

    return v5

    .line 468
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_3
    goto/16 :goto_0

    .line 474
    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->duckUid(ILjava/util/ArrayList;)V

    .line 475
    .end local v1    # "apcIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPlaybackConfiguration;>;"
    .end local v3    # "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v0

    .line 476
    return v2

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nPlaybackActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    const-string v1, "\n  playback listeners:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 305
    .local v3, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_0

    const-string v5, "(S)"

    goto :goto_1

    :cond_0
    const-string v5, "(P)"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .end local v3    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    goto :goto_0

    .line 308
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :try_start_2
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    const-string v1, "\n  players:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 313
    .local v1, "piidIntList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 314
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 315
    .local v3, "piidInt":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 316
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-eqz v4, :cond_2

    .line 317
    invoke-virtual {v4, p1}, Landroid/media/AudioPlaybackConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 319
    .end local v3    # "piidInt":Ljava/lang/Integer;
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_2
    goto :goto_2

    .line 321
    :cond_3
    const-string v2, "\n  ducked players piids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->dump(Ljava/io/PrintWriter;)V

    .line 324
    const-string v2, "\n  muted player piids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 326
    .local v3, "piid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    .end local v3    # "piid":I
    goto :goto_3

    .line 328
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 330
    const-string v2, "\n  banned uids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 332
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    .end local v3    # "uid":I
    goto :goto_4

    .line 334
    :cond_5
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 337
    .end local v1    # "piidIntList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    return-void

    .line 308
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :try_start_4
    throw v2

    .line 337
    .restart local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method getActivePlaybackConfigurations(Z)Ljava/util/List;
    .locals 4
    .param p1, "isPrivileged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    monitor-enter v0

    .line 604
    if-eqz p1, :cond_0

    .line 605
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 609
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 610
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 609
    invoke-direct {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 611
    .local v2, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 611
    .end local v2    # "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor;
    .end local p1    # "isPrivileged":Z
    :try_start_4
    throw v2

    .line 614
    .restart local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor;
    .restart local p1    # "isPrivileged":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public mutePlayersForCall([I)V
    .locals 11
    .param p1, "usagesToMute"    # [I

    .line 494
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 496
    .local v1, "piidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 498
    .local v2, "piidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 499
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 500
    .local v3, "piid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 501
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-nez v4, :cond_0

    .line 502
    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    .line 505
    .local v5, "playerUsage":I
    const/4 v6, 0x0

    .line 506
    .local v6, "mute":Z
    array-length v7, p1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, p1, v8

    .line 507
    .local v9, "usageToMute":I
    if-ne v5, v9, :cond_1

    .line 508
    const/4 v6, 0x1

    .line 509
    goto :goto_2

    .line 506
    .end local v9    # "usageToMute":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 512
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 515
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mutePlayersForCall piid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :try_start_1
    sget-object v7, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call: muting piid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v9, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v8

    .line 518
    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 520
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/PlayerProxy;->setVolume(F)V

    .line 521
    iget-object v7, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    goto :goto_3

    .line 522
    :catch_0
    move-exception v7

    .line 523
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "AudioService.PlaybackActivityMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call: error muting player "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v3    # "piid":Ljava/lang/Integer;
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v5    # "playerUsage":I
    .end local v6    # "mute":Z
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 527
    .end local v1    # "piidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "piidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;I)V
    .locals 5
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;
    .param p3, "binderUid"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 178
    .local v1, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-static {p1, v1, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 179
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;

    invoke-direct {v4, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;-><init>(ILandroid/media/AudioAttributes;)V

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 180
    invoke-virtual {v1, p2}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    move-result v2

    .local v2, "change":Z
    goto :goto_0

    .line 182
    .end local v2    # "change":Z
    :cond_0
    const-string v2, "AudioService.PlaybackActivityMonitor"

    const-string v4, "Error updating audio attributes"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move v2, v3

    .line 185
    .end local v1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .restart local v2    # "change":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v2, :cond_1

    .line 187
    invoke-direct {p0, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 189
    :cond_1
    return-void

    .line 185
    .end local v2    # "change":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public playerDeath(I)V
    .locals 1
    .param p1, "piid"    # I

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 295
    return-void
.end method

.method public playerEvent(III)V
    .locals 7
    .param p1, "piid"    # I
    .param p2, "event"    # I
    .param p3, "binderUid"    # I

    .line 230
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 232
    .local v1, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-nez v1, :cond_0

    .line 233
    monitor-exit v0

    return-void

    .line 235
    :cond_0
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 236
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 237
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 238
    .local v4, "uidInteger":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not starting piid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,is banned"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 242
    monitor-exit v0

    return-void

    .line 244
    .end local v4    # "uidInteger":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 248
    monitor-exit v0

    return-void

    .line 250
    :cond_3
    invoke-static {p1, v1, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 253
    invoke-virtual {v1, p2}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(I)Z

    move-result v3

    .local v3, "change":Z
    goto :goto_1

    .line 255
    .end local v3    # "change":Z
    :cond_4
    const-string v3, "AudioService.PlaybackActivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error handling event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v3, 0x0

    .line 258
    .restart local v3    # "change":Z
    :goto_1
    if-eqz v3, :cond_5

    if-ne p2, v2, :cond_5

    .line 259
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->checkDuck(Landroid/media/AudioPlaybackConfiguration;)V

    .line 261
    .end local v1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v3, :cond_7

    .line 263
    if-nez p2, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 265
    :cond_7
    return-void

    .line 261
    .end local v3    # "change":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public playerHasOpPlayAudio(IZI)V
    .locals 2
    .param p1, "piid"    # I
    .param p2, "hasOpPlayAudio"    # Z
    .param p3, "binderUid"    # I

    .line 269
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;-><init>(IZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 270
    return-void
.end method

.method registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .locals 3
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .line 564
    if-nez p1, :cond_0

    .line 565
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 568
    :try_start_0
    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;-><init>(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 569
    .local v1, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    invoke-virtual {v1}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->init()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 570
    if-nez p2, :cond_1

    .line 571
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v1    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :cond_2
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releasePlayer(II)V
    .locals 7
    .param p1, "piid"    # I
    .param p2, "binderUid"    # I

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 277
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-static {p1, v2, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    sget-object v3, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "releasing player piid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 280
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 282
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 283
    invoke-virtual {v2, v3}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(I)Z

    move-result v3

    move v0, v3

    .line 285
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    if-eqz v0, :cond_1

    .line 287
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 289
    :cond_1
    return-void

    .line 285
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .locals 5
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;

    .line 161
    invoke-static {}, Landroid/media/AudioSystem;->newAudioPlayerId()I

    move-result v0

    .line 163
    .local v0, "newPiid":I
    new-instance v1, Landroid/media/AudioPlaybackConfiguration;

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/media/PlayerBase$PlayerIdCard;III)V

    .line 166
    .local v1, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->init()V

    .line 167
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;

    invoke-direct {v3, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 168
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    monitor-exit v2

    .line 171
    return v0

    .line 170
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .locals 4
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;

    .line 482
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->unduckUid(ILjava/util/HashMap;)V

    .line 484
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unmutePlayersForCall()V
    .locals 8

    .line 535
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    monitor-exit v0

    return-void

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 540
    .local v2, "piid":I
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 541
    .local v3, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-eqz v3, :cond_1

    .line 544
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unmutePlayersForCall piid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :try_start_1
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: unmuting piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "AudioService.PlaybackActivityMonitor"

    .line 548
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 547
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 549
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/media/PlayerProxy;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    goto :goto_1

    .line 550
    :catch_0
    move-exception v4

    .line 551
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "AudioService.PlaybackActivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: error unmuting player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 551
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .end local v2    # "piid":I
    .end local v3    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto/16 :goto_0

    .line 556
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 557
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 5
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 579
    if-nez p1, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 584
    .local v1, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    const/4 v2, 0x0

    .line 587
    .local v2, "hasPublicClients":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 588
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 589
    .local v3, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    iget-object v4, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    invoke-virtual {v3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->release()V

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 593
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-nez v4, :cond_2

    .line 594
    const/4 v2, 0x1

    .line 597
    .end local v3    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :cond_2
    :goto_1
    goto :goto_0

    .line 598
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 599
    .end local v1    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    .end local v2    # "hasPublicClients":Z
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
