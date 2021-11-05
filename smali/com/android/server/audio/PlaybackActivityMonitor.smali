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
.field private final mAllowedCapturePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

    .line 976
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

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 528
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

    .line 512
    .local p1, "sysConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
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

    .line 516
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .end local v2    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_0
    goto :goto_0

    .line 520
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

    .line 449
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 450
    return v0

    .line 451
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 452
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

    .line 453
    return v0

    .line 455
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V
    .locals 6
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "event"    # I

    .line 209
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    const/16 v2, 0xc0

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 213
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v4

    .line 214
    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    .line 217
    if-ne p2, v0, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 219
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez v1, :cond_2

    .line 220
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 222
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_0

    .line 225
    :cond_1
    if-eq p2, v0, :cond_2

    .line 226
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 227
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez v1, :cond_2

    .line 228
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result v1

    iget v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    if-ne v1, v3, :cond_2

    .line 231
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 238
    :cond_2
    :goto_0
    return-void
.end method

.method private dispatchPlaybackChange(Z)V
    .locals 9
    .param p1, "iplayerReleased"    # Z

    .line 463
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    monitor-exit v0

    return-void

    .line 468
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 474
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    monitor-exit v1

    return-void

    .line 478
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    .local v0, "configsSystem":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 480
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v2

    .line 482
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    monitor-exit v2

    return-void

    .line 485
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 486
    .local v1, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 487
    .local v3, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 488
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    .local v4, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :try_start_3
    iget v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_5

    .line 492
    iget-boolean v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_4

    .line 493
    iget-object v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v5, v0, p1}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V

    goto :goto_2

    .line 498
    :cond_4
    iget-object v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    :cond_5
    :goto_2
    goto :goto_3

    .line 501
    :catch_0
    move-exception v5

    .line 502
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_4
    iget v6, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    .line 503
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

    .line 506
    .end local v4    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_1

    .line 507
    .end local v3    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    :cond_6
    monitor-exit v2

    .line 508
    return-void

    .line 507
    .end local v1    # "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 479
    .end local v0    # "configsSystem":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 468
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V
    .locals 3
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "capturePolicy"    # I

    .line 358
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 359
    .local v0, "attr":Landroid/media/AudioAttributes;
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result v1

    if-lt v1, p2, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 363
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 364
    invoke-virtual {v1, p2}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 362
    invoke-virtual {p1, v1}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    .line 365
    return-void
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

    .line 537
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 539
    monitor-exit v0

    return v2

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 544
    .local v1, "apcIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPlaybackConfiguration;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v3, "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 547
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 548
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 549
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 550
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 552
    const/4 v5, 0x0

    if-nez p3, :cond_1

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 556
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

    .line 557
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

    .line 556
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    monitor-exit v0

    return v5

    .line 560
    :cond_1
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 561
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

    .line 562
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

    .line 565
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v7

    .line 564
    invoke-static {v7}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 561
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    monitor-exit v0

    return v5

    .line 568
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_3
    goto/16 :goto_0

    .line 574
    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->duckUid(ILjava/util/ArrayList;)V

    .line 575
    .end local v1    # "apcIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPlaybackConfiguration;>;"
    .end local v3    # "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v0

    .line 576
    return v2

    .line 575
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

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nPlaybackActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    const-string v1, "\n  playback listeners:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 397
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

    .line 398
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

    .line 399
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    .end local v3    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    goto :goto_0

    .line 401
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    :try_start_2
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string v1, "\n  players:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 406
    .local v1, "piidIntList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 407
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 408
    .local v3, "piidInt":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 409
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {v4, p1}, Landroid/media/AudioPlaybackConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 412
    .end local v3    # "piidInt":Ljava/lang/Integer;
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_2
    goto :goto_2

    .line 414
    :cond_3
    const-string v2, "\n  ducked players piids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->dump(Ljava/io/PrintWriter;)V

    .line 417
    const-string v2, "\n  muted player piids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
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

    .line 419
    .local v3, "piid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    .end local v3    # "piid":I
    goto :goto_3

    .line 421
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 423
    const-string v2, "\n  banned uids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
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

    .line 425
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    .end local v3    # "uid":I
    goto :goto_4

    .line 427
    :cond_5
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 430
    .end local v1    # "piidIntList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 431
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 432
    :try_start_3
    const-string v0, "\n  allowed capture policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 434
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_5

    .line 436
    :cond_6
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 401
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :try_start_5
    throw v2

    .line 430
    .restart local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

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

    .line 703
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    monitor-enter v0

    .line 704
    if-eqz p1, :cond_0

    .line 705
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 709
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 710
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 709
    invoke-direct {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 711
    .local v2, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 711
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

    .line 714
    .restart local p0    # "this":Lcom/android/server/audio/PlaybackActivityMonitor;
    .restart local p1    # "isPrivileged":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getAllAllowedCapturePolicies()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAllowedCapturePolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 347
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isPlaybackActiveForUid(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 380
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 382
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 383
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 385
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_0
    goto :goto_0

    .line 386
    :cond_1
    monitor-exit v0

    .line 387
    const/4 v0, 0x0

    return v0

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mutePlayersForCall([I)V
    .locals 11
    .param p1, "usagesToMute"    # [I

    .line 594
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 596
    .local v1, "piidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 598
    .local v2, "piidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 599
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 600
    .local v3, "piid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 601
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-nez v4, :cond_0

    .line 602
    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    .line 605
    .local v5, "playerUsage":I
    const/4 v6, 0x0

    .line 606
    .local v6, "mute":Z
    array-length v7, p1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, p1, v8

    .line 607
    .local v9, "usageToMute":I
    if-ne v5, v9, :cond_1

    .line 608
    const/4 v6, 0x1

    .line 609
    goto :goto_2

    .line 606
    .end local v9    # "usageToMute":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 612
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 615
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

    .line 618
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

    .line 619
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v9, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v8

    .line 618
    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 620
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/PlayerProxy;->setVolume(F)V

    .line 621
    iget-object v7, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    goto :goto_3

    .line 622
    :catch_0
    move-exception v7

    .line 623
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

    .line 626
    .end local v3    # "piid":Ljava/lang/Integer;
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v5    # "playerUsage":I
    .end local v6    # "mute":Z
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 627
    .end local v1    # "piidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "piidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;I)V
    .locals 4
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;
    .param p3, "binderUid"    # I

    .line 182
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 185
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1, p2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 186
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    move-object p2, v1

    .line 188
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 191
    .local v0, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-static {p1, v0, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;-><init>(ILandroid/media/AudioAttributes;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 193
    invoke-virtual {v0, p2}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    move-result v2

    .local v2, "change":Z
    goto :goto_0

    .line 195
    .end local v2    # "change":Z
    :cond_1
    const-string v2, "AudioService.PlaybackActivityMonitor"

    const-string v3, "Error updating audio attributes"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v2, 0x0

    .line 198
    .end local v0    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .restart local v2    # "change":Z
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    if-eqz v2, :cond_2

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 202
    :cond_2
    return-void

    .line 198
    .end local v2    # "change":Z
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 188
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public playerDeath(I)V
    .locals 1
    .param p1, "piid"    # I

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 371
    return-void
.end method

.method public playerEvent(III)V
    .locals 7
    .param p1, "piid"    # I
    .param p2, "event"    # I
    .param p3, "binderUid"    # I

    .line 243
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 245
    .local v1, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-nez v1, :cond_0

    .line 246
    monitor-exit v0

    return-void

    .line 248
    :cond_0
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 249
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 250
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

    .line 251
    .local v4, "uidInteger":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
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

    .line 255
    monitor-exit v0

    return-void

    .line 257
    .end local v4    # "uidInteger":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 261
    monitor-exit v0

    return-void

    .line 263
    :cond_3
    invoke-static {p1, v1, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 266
    invoke-virtual {v1, p2}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(I)Z

    move-result v3

    .local v3, "change":Z
    goto :goto_1

    .line 268
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

    .line 269
    const/4 v3, 0x0

    .line 271
    .restart local v3    # "change":Z
    :goto_1
    if-eqz v3, :cond_5

    if-ne p2, v2, :cond_5

    .line 272
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->checkDuck(Landroid/media/AudioPlaybackConfiguration;)V

    .line 274
    .end local v1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-eqz v3, :cond_7

    .line 276
    if-nez p2, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 278
    :cond_7
    return-void

    .line 274
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

    .line 282
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;-><init>(IZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 283
    return-void
.end method

.method registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .locals 3
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .line 664
    if-nez p1, :cond_0

    .line 665
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 668
    :try_start_0
    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;-><init>(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 669
    .local v1, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    invoke-virtual {v1}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->init()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    if-nez p2, :cond_1

    .line 671
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 673
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    .end local v1    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :cond_2
    monitor-exit v0

    .line 676
    return-void

    .line 675
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

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 290
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-static {p1, v2, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
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

    .line 293
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 295
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 296
    invoke-virtual {v2, v3}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(I)Z

    move-result v3

    move v0, v3

    .line 298
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-eqz v0, :cond_1

    .line 300
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 302
    :cond_1
    return-void

    .line 298
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAllowedCapturePolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "capturePolicy"    # I

    .line 321
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 322
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    monitor-exit v0

    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 331
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 333
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 334
    invoke-direct {p0, v2, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 336
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_1
    goto :goto_0

    .line 337
    :cond_2
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 330
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .locals 6
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
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 168
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    .line 169
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 172
    .end local v3    # "uid":I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;

    invoke-direct {v3, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 174
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit v3

    .line 177
    return v0

    .line 176
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 172
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .locals 4
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;

    .line 582
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->unduckUid(ILjava/util/HashMap;)V

    .line 584
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unmutePlayersForCall()V
    .locals 8

    .line 635
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    monitor-exit v0

    return-void

    .line 639
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

    .line 640
    .local v2, "piid":I
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 641
    .local v3, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-eqz v3, :cond_1

    .line 644
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

    .line 647
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

    .line 648
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 647
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 649
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/media/PlayerProxy;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    goto :goto_1

    .line 650
    :catch_0
    move-exception v4

    .line 651
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

    .line 652
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 651
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    .end local v2    # "piid":I
    .end local v3    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto/16 :goto_0

    .line 656
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 657
    monitor-exit v0

    .line 658
    return-void

    .line 657
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

    .line 679
    if-nez p1, :cond_0

    .line 680
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 684
    .local v1, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    const/4 v2, 0x0

    .line 687
    .local v2, "hasPublicClients":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 688
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 689
    .local v3, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    iget-object v4, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 690
    invoke-virtual {v3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->release()V

    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 693
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-nez v4, :cond_2

    .line 694
    const/4 v2, 0x1

    .line 697
    .end local v3    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :cond_2
    :goto_1
    goto :goto_0

    .line 698
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 699
    .end local v1    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    .end local v2    # "hasPublicClients":Z
    monitor-exit v0

    .line 700
    return-void

    .line 699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
