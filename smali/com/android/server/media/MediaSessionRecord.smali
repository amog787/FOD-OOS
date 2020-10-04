.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbackHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mDuration:J

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mMetadataDescription:Ljava/lang/String;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mSessionInfo:Landroid/os/Bundle;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const-string v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V
    .locals 3
    .param p1, "ownerPid"    # I
    .param p2, "ownerUid"    # I
    .param p3, "userId"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "sessionInfo"    # Landroid/os/Bundle;
    .param p8, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p9, "handlerLooper"    # Landroid/os/Looper;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 114
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 116
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 117
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 120
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 123
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 789
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$3;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 129
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 130
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 131
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 132
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 133
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 134
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    .line 135
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 136
    new-instance v1, Landroid/media/session/MediaSession$Token;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v1, v2}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 137
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 138
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v1, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 139
    iput-object p8, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 140
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 141
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-direct {v1, p0, p9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 142
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 143
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 144
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 145
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # J

    .line 65
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # J

    .line 65
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/session/PlaybackState;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/AudioAttributes;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/session/ISessionControllerCallback;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/media/session/ISessionControllerCallback;
    .param p6, "x6"    # I
    .param p7, "x7"    # I

    .line 65
    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object v0
.end method

.method private getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .locals 3
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 761
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 762
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 763
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    return v1

    .line 762
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 767
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .locals 18

    .line 731
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 732
    :try_start_0
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 733
    .local v0, "state":Landroid/media/session/PlaybackState;
    iget-wide v3, v1, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 734
    .local v3, "duration":J
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    const/4 v2, 0x0

    .line 736
    .local v2, "result":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_3

    .line 737
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 738
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 739
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 740
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v5

    .line 741
    .local v5, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 742
    .local v14, "currentTime":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 743
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v9

    sub-long v10, v14, v5

    long-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-long v9, v9

    .line 744
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 745
    .local v9, "position":J
    cmp-long v11, v3, v7

    if-ltz v11, :cond_1

    cmp-long v11, v9, v3

    if-lez v11, :cond_1

    .line 746
    move-wide v7, v3

    move-wide/from16 v16, v7

    .end local v9    # "position":J
    .local v7, "position":J
    goto :goto_0

    .line 747
    .end local v7    # "position":J
    .restart local v9    # "position":J
    :cond_1
    cmp-long v7, v9, v7

    if-gez v7, :cond_2

    .line 748
    const-wide/16 v7, 0x0

    move-wide/from16 v16, v7

    .end local v9    # "position":J
    .restart local v7    # "position":J
    goto :goto_0

    .line 747
    .end local v7    # "position":J
    .restart local v9    # "position":J
    :cond_2
    move-wide/from16 v16, v9

    .line 750
    .end local v9    # "position":J
    .local v16, "position":J
    :goto_0
    new-instance v7, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v7, v0}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 751
    .local v7, "builder":Landroid/media/session/PlaybackState$Builder;
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v11

    move-wide/from16 v9, v16

    move-wide v12, v14

    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 753
    invoke-virtual {v7}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 757
    .end local v5    # "updateTime":J
    .end local v7    # "builder":Landroid/media/session/PlaybackState$Builder;
    .end local v14    # "currentTime":J
    .end local v16    # "position":J
    :cond_3
    if-nez v2, :cond_4

    move-object v5, v0

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    return-object v5

    .line 734
    .end local v0    # "state":Landroid/media/session/PlaybackState;
    .end local v2    # "result":Landroid/media/session/PlaybackState;
    .end local v3    # "duration":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 10

    .line 773
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 775
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :goto_0
    move v6, v1

    .line 776
    .local v6, "current":I
    new-instance v1, Landroid/media/session/MediaController$PlaybackInfo;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;)V

    monitor-exit v0

    return-object v1

    .line 779
    .end local v6    # "current":I
    :cond_1
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 780
    .local v3, "volumeType":I
    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 781
    .local v7, "attributes":Landroid/media/AudioAttributes;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-static {v7}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 783
    .local v0, "stream":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 784
    .local v1, "max":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 785
    .local v8, "current":I
    new-instance v9, Landroid/media/session/MediaController$PlaybackInfo;

    const/4 v4, 0x2

    move-object v2, v9

    move v5, v1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;)V

    return-object v9

    .line 781
    .end local v0    # "stream":I
    .end local v1    # "max":I
    .end local v3    # "volumeType":I
    .end local v7    # "attributes":Landroid/media/AudioAttributes;
    .end local v8    # "current":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$300(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V
    .locals 16
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingOpPackageName"    # Ljava/lang/String;
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "asSystemService"    # Z
    .param p8, "useSuggested"    # Z
    .param p9, "previousFlagPlaySound"    # I

    .line 519
    move-object/from16 v9, p0

    move/from16 v10, p7

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjusting local volume, stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asSystemService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useSuggested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p8

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    :cond_0
    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p8

    .line 526
    :goto_0
    if-eqz v10, :cond_1

    .line 527
    iget-object v0, v9, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "opPackageName":Ljava/lang/String;
    const/16 v1, 0x3e8

    move-object v14, v0

    move v15, v1

    .local v1, "uid":I
    goto :goto_1

    .line 530
    .end local v0    # "opPackageName":Ljava/lang/String;
    .end local v1    # "uid":I
    :cond_1
    move-object/from16 v0, p4

    .line 531
    .restart local v0    # "opPackageName":Ljava/lang/String;
    move/from16 v1, p6

    move-object v14, v0

    move v15, v1

    .line 533
    .end local v0    # "opPackageName":Ljava/lang/String;
    .local v14, "opPackageName":Ljava/lang/String;
    .local v15, "uid":I
    :goto_1
    iget-object v8, v9, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v7, Lcom/android/server/media/MediaSessionRecord$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p8

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v14

    move-object v9, v7

    move v7, v15

    move-object v10, v8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V

    invoke-virtual {v10, v9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 686
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 688
    monitor-exit v0

    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 691
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :goto_1
    goto :goto_2

    .line 697
    :catch_0
    move-exception v3

    .line 698
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    .line 694
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 695
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 696
    const-string v4, "Removing dead callback in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 690
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 701
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushExtrasUpdate()V
    .locals 5

    .line 647
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 649
    monitor-exit v0

    return-void

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 652
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    :goto_1
    goto :goto_2

    .line 658
    :catch_0
    move-exception v3

    .line 659
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushExtrasUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    .line 655
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 656
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 657
    const-string v4, "Removing dead callback in pushExtrasUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 651
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 662
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushMetadataUpdate()V
    .locals 5

    .line 588
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 590
    monitor-exit v0

    return-void

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    :goto_1
    goto :goto_2

    .line 599
    :catch_0
    move-exception v3

    .line 600
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushMetadataUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    .line 596
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 597
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 598
    const-string v4, "Removing dead callback in pushMetadataUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 592
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 603
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushPlaybackStateUpdate()V
    .locals 5

    .line 567
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 569
    monitor-exit v0

    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 572
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :goto_1
    goto :goto_2

    .line 579
    :catch_0
    move-exception v3

    .line 580
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushPlaybackStateUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    .line 575
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 576
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 577
    const-string v4, "Removing dead callback in pushPlaybackStateUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 571
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 584
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushQueueTitleUpdate()V
    .locals 5

    .line 627
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 629
    monitor-exit v0

    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 632
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :goto_1
    goto :goto_2

    .line 639
    :catch_0
    move-exception v3

    .line 640
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushQueueTitleUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    .line 635
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 636
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 637
    const-string v4, "Removing dead callback in pushQueueTitleUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 631
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 643
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushQueueUpdate()V
    .locals 6

    .line 607
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 609
    monitor-exit v0

    return-void

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 612
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 615
    :cond_1
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    invoke-direct {v4, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 614
    :goto_1
    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    :goto_2
    goto :goto_3

    .line 619
    :catch_0
    move-exception v3

    .line 620
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_3

    .line 616
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 617
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 618
    const-string v4, "Removing dead callback in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_2

    .line 611
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 623
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushSessionDestroyed()V
    .locals 5

    .line 705
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v1, :cond_0

    .line 709
    monitor-exit v0

    return-void

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 712
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    :goto_1
    goto :goto_2

    .line 719
    :catch_0
    move-exception v3

    .line 720
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "unexpected exception in pushSessionDestroyed"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    .line 715
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 716
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 717
    const-string v4, "Removing dead callback in pushSessionDestroyed"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 711
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 724
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 725
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushVolumeUpdate()V
    .locals 6

    .line 666
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 668
    monitor-exit v0

    return-void

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    .line 671
    .local v1, "info":Landroid/media/session/MediaController$PlaybackInfo;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 672
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    .local v3, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    :goto_1
    goto :goto_2

    .line 678
    :catch_0
    move-exception v4

    .line 679
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "unexpected exception in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    .line 675
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 676
    .local v4, "e":Landroid/os/DeadObjectException;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 677
    const-string v5, "Removing dead callback in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v4    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 671
    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 682
    .end local v1    # "info":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 683
    return-void

    .line 682
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVolumeTo(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p6, "value"    # I
    .param p7, "flags"    # I

    .line 315
    move-object v7, p0

    iget v0, v7, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, v7, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v8

    .line 317
    .local v8, "stream":I
    move/from16 v3, p6

    .line 318
    .local v3, "volumeValue":I
    iget-object v9, v7, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v10, Lcom/android/server/media/MediaSessionRecord$1;

    move-object v0, v10

    move-object v1, p0

    move v2, v8

    move/from16 v4, p7

    move-object/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;I)V

    invoke-virtual {v9, v10}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 330
    .end local v3    # "volumeValue":I
    .end local v8    # "stream":I
    move/from16 v0, p6

    move/from16 v3, p7

    goto/16 :goto_0

    .line 331
    :cond_0
    iget v0, v7, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 333
    return-void

    .line 335
    :cond_1
    iget v0, v7, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    move/from16 v1, p6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 336
    .end local p6    # "value":I
    .local v0, "value":I
    iget-object v8, v7, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move v13, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V

    .line 338
    iget v1, v7, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v1, :cond_2

    iget v1, v7, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 339
    .local v1, "volumeBefore":I
    :cond_2
    iget v3, v7, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 340
    iget-object v2, v7, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v3, v7, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    iget-object v2, v7, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v3, v7, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    iget v2, v7, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v1, v2, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 345
    :cond_3
    iget-object v2, v7, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    move/from16 v3, p7

    invoke-virtual {v2, v3, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 347
    sget-boolean v2, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set optimistic volume to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " max is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MediaSessionRecord"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v1    # "volumeBefore":I
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p6, "asSystemService"    # Z
    .param p7, "direction"    # I
    .param p8, "flags"    # I
    .param p9, "useSuggested"    # Z

    .line 270
    move-object v10, p0

    move/from16 v11, p7

    and-int/lit8 v12, p8, 0x4

    .line 271
    .local v12, "previousFlagPlaySound":I
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v13, p8

    goto :goto_1

    .line 272
    :cond_1
    :goto_0
    and-int/lit8 v0, p8, -0x5

    move v13, v0

    .line 274
    .end local p8    # "flags":I
    .local v13, "flags":I
    :goto_1
    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 276
    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v14

    .line 277
    .local v14, "stream":I
    move-object v0, p0

    move v1, v14

    move/from16 v2, p7

    move v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p9

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V

    .line 279
    .end local v14    # "stream":I
    move-object/from16 v8, p1

    move/from16 v9, p6

    goto/16 :goto_3

    .line 280
    :cond_2
    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-nez v0, :cond_3

    .line 282
    return-void

    .line 284
    :cond_3
    const/16 v0, 0x65

    const-string v7, "MediaSessionRecord"

    if-eq v11, v0, :cond_9

    const/16 v0, -0x64

    if-eq v11, v0, :cond_9

    const/16 v0, 0x64

    if-ne v11, v0, :cond_4

    move-object/from16 v8, p1

    move/from16 v9, p6

    goto/16 :goto_4

    .line 290
    :cond_4
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjusting volume, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asSystemService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 290
    :cond_5
    move-object/from16 v8, p1

    move/from16 v9, p6

    .line 294
    :goto_2
    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZI)V

    .line 296
    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_6

    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 297
    .local v0, "volumeBefore":I
    :cond_6
    add-int v1, v0, v11

    iput v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 298
    const/4 v1, 0x0

    iget v2, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget v3, v10, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 299
    iget-object v1, v10, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v10, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    iget-object v1, v10, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v10, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    iget v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v0, v1, :cond_7

    .line 302
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 304
    :cond_7
    iget-object v1, v10, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, v13, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 306
    sget-boolean v1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusted optimistic volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "volumeBefore":I
    :cond_8
    :goto_3
    return-void

    .line 284
    :cond_9
    move-object/from16 v8, p1

    move/from16 v9, p6

    .line 287
    :goto_4
    const-string v0, "Muting remote playback is not supported"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public binderDied()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    .line 447
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launchIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mediaButtonReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rating type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "controllers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->access$200(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method public getCurrentVolume()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method public getFlags()J
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public getMaxVolume()I
    .locals 1

    .line 417
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOptimisticVolume()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method public getPlaybackType()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method public hasFlag(I)Z
    .locals 4
    .param p1, "flag"    # I

    .line 217
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaybackActive()Z
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 379
    .local v0, "state":I
    :goto_0
    invoke-static {v0}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    return v1
.end method

.method public isSystemPriority()Z
    .locals 4

    .line 245
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransportControlEnabled()Z
    .locals 1

    .line 441
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 456
    monitor-exit v0

    return-void

    .line 458
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 459
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 460
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "ke"    # Landroid/view/KeyEvent;
    .param p6, "sequenceId"    # I
    .param p7, "cb"    # Landroid/os/ResultReceiver;

    .line 484
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
