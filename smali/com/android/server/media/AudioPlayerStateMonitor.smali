.class Lcom/android/server/media/AudioPlayerStateMonitor;
.super Ljava/lang/Object;
.source "AudioPlayerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;,
        Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;,
        Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;


# instance fields
.field final mActiveAudioUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;",
            "Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final mSortedAudioPlaybackClientUids:Landroid/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/AudioPlayerStateMonitor;->DEBUG:Z

    .line 44
    const-string v0, "AudioPlayerStateMonitor"

    sput-object v0, Lcom/android/server/media/AudioPlayerStateMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    .line 95
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 105
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    .line 119
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 120
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v1, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/AudioPlayerStateMonitor$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/AudioPlayerStateMonitor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 42
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/media/AudioPlayerStateMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/server/media/AudioPlayerStateMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/media/AudioPlayerStateMonitor;Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/AudioPlayerStateMonitor;
    .param p1, "x1"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "x2"    # Z

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/AudioPlayerStateMonitor;->sendAudioPlayerActiveStateChangedMessageLocked(Landroid/media/AudioPlaybackConfiguration;Z)V

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    const-class v0, Lcom/android/server/media/AudioPlayerStateMonitor;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/android/server/media/AudioPlayerStateMonitor;->sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/media/AudioPlayerStateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/media/AudioPlayerStateMonitor;->sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 114
    :cond_0
    sget-object v1, Lcom/android/server/media/AudioPlayerStateMonitor;->sInstance:Lcom/android/server/media/AudioPlayerStateMonitor;

    monitor-exit v0

    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendAudioPlayerActiveStateChangedMessageLocked(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 2
    .param p1, "config"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "isRemoved"    # Z

    .line 217
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;

    .line 218
    .local v1, "messageHandler":Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;->sendAudioPlayerActiveStateChangedMessage(Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 219
    .end local v1    # "messageHandler":Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;
    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUpAudioPlaybackUids(I)V
    .locals 5
    .param p1, "mediaButtonSessionUid"    # I

    .line 174
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 176
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 177
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 178
    goto :goto_1

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 181
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 182
    invoke-virtual {p0, v3}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->remove(I)V

    .line 176
    .end local v3    # "uid":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 190
    .end local v1    # "userId":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Audio playback (lastly played comes first)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "indent":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 202
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " packages="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 205
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 209
    .end local v5    # "j":I
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 200
    .end local v3    # "uid":I
    .end local v4    # "packages":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "indent":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSortedAudioPlaybackClientUids()Landroid/util/IntArray;
    .locals 3

    .line 149
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 150
    .local v0, "sortedAudioPlaybackClientUids":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 152
    monitor-exit v1

    .line 153
    return-object v0

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPlaybackActive(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 128
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;

    if-nez p2, :cond_0

    .line 130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3, p1}, Lcom/android/server/media/AudioPlayerStateMonitor$MessageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;)V

    .line 129
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;

    .line 138
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
