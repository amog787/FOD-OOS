.class Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionStack"


# instance fields
.field private final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field private final mCachedActiveLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

.field private mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

.field private final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecordImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/media/AudioPlayerStateMonitor;
    .param p2, "listener"    # Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 77
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 78
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 79
    return-void
.end method

.method private clearCache(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 428
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 431
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 432
    return-void
.end method

.method private findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 5
    .param p1, "uid"    # I

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 247
    .local v2, "session":Lcom/android/server/media/MediaSessionRecordImpl;
    instance-of v3, v2, Lcom/android/server/media/MediaSession2Record;

    if-eqz v3, :cond_0

    .line 249
    goto :goto_0

    .line 251
    :cond_0
    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 253
    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v3

    .line 252
    invoke-interface {v2, v3}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    return-object v2

    .line 258
    :cond_1
    if-nez v0, :cond_2

    .line 261
    move-object v0, v2

    .line 264
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecordImpl;
    :cond_2
    goto :goto_0

    .line 265
    :cond_3
    return-object v0
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 87
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 94
    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 117
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Media button session is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sessions Stack - have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 372
    .local v2, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    invoke-interface {v2, p1, v0}, Lcom/android/server/media/MediaSessionRecordImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 373
    .end local v2    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    .local v0, "cachedActiveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    if-nez v0, :cond_0

    .line 279
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    :cond_0
    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 5
    .param p1, "userId"    # I

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 357
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 358
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 359
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 360
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackTypeLocal()Z

    move-result v4

    if-nez v4, :cond_0

    .line 361
    return-object v3

    .line 358
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 6

    .line 339
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eqz v0, :cond_0

    .line 340
    return-object v0

    .line 342
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 343
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 344
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 345
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionRecord;

    .line 346
    .local v4, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v4, v1}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    iput-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 348
    return-object v4

    .line 344
    .end local v4    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    const-string v1, "MediaSessionStack"

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaButtonSession() mMediaButtonSession="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    return-object v0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 318
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 319
    .local v0, "size":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-nez v2, :cond_1

    if-lez v0, :cond_1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaButtonSession, mSessions.get(0):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    return-object v1

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    return-object v1
.end method

.method public getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .locals 4
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 127
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 128
    .local v1, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    instance-of v2, v1, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v1

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 130
    .local v2, "session1":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    return-object v2

    .line 134
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v2    # "session1":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriorityList(ZI)Ljava/util/List;
    .locals 7
    .param p1, "activeOnly"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v1, 0x0

    .line 393
    .local v1, "lastPlaybackActiveIndex":I
    const/4 v2, 0x0

    .line 395
    .local v2, "lastActiveIndex":I
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 396
    .local v4, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    instance-of v5, v4, Lcom/android/server/media/MediaSessionRecord;

    if-nez v5, :cond_1

    .line 397
    goto :goto_0

    .line 399
    :cond_1
    move-object v5, v4

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 401
    .local v5, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v6, -0x1

    if-eq p2, v6, :cond_2

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    if-eq p2, v6, :cond_2

    .line 403
    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v6

    if-nez v6, :cond_3

    .line 407
    if-nez p1, :cond_0

    .line 410
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "lastPlaybackActiveIndex":I
    .local v6, "lastPlaybackActiveIndex":I
    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 417
    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_1

    .line 419
    .end local v6    # "lastPlaybackActiveIndex":I
    .restart local v1    # "lastPlaybackActiveIndex":I
    :cond_4
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "lastActiveIndex":I
    .local v6, "lastActiveIndex":I
    invoke-interface {v0, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v6

    .line 421
    .end local v4    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v5    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v6    # "lastActiveIndex":I
    .restart local v2    # "lastActiveIndex":I
    :goto_1
    goto :goto_0

    .line 423
    :cond_5
    return-object v0
.end method

.method public getSession2Tokens(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "session2Records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Session2Token;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 295
    .local v2, "record":Lcom/android/server/media/MediaSessionRecordImpl;
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 296
    :cond_0
    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/android/server/media/MediaSession2Record;

    if-eqz v3, :cond_1

    .line 298
    move-object v3, v2

    check-cast v3, Lcom/android/server/media/MediaSession2Record;

    .line 299
    .local v3, "session2":Lcom/android/server/media/MediaSession2Record;
    invoke-virtual {v3}, Lcom/android/server/media/MediaSession2Record;->getSession2Token()Landroid/media/Session2Token;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v2    # "record":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v3    # "session2":Lcom/android/server/media/MediaSession2Record;
    :cond_1
    goto :goto_0

    .line 302
    :cond_2
    return-object v0
.end method

.method public onPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;
    .param p2, "shouldUpdatePriority"    # Z

    .line 146
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 149
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-interface {p1, v0}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 161
    invoke-interface {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0

    .line 162
    .local v0, "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eq v0, v1, :cond_2

    .line 163
    invoke-interface {v0}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 170
    .end local v0    # "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    :cond_2
    return-void
.end method

.method public onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 180
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 181
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 102
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-ne v0, p1, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 110
    :cond_0
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 111
    return-void
.end method

.method public updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2
    .param p1, "newMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 332
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 333
    .local v0, "oldMediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 334
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecordImpl;Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 336
    return-void
.end method

.method public updateMediaButtonSessionBySessionPolicyChange(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 225
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-ne p1, v0, :cond_1

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 233
    :cond_1
    :goto_0
    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .locals 9

    .line 190
    sget-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    const/4 v1, 0x2

    const-string v2, "MediaSessionStack"

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMediaButtonSessionIfNeeded, callers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getSortedAudioPlaybackClientUids()Landroid/util/IntArray;

    move-result-object v0

    .line 194
    .local v0, "audioPlaybackUids":Landroid/util/IntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 195
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 196
    .local v4, "audioPlaybackUid":I
    invoke-direct {p0, v4}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v5

    .line 197
    .local v5, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    if-nez v5, :cond_1

    .line 198
    sget-boolean v6, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMediaButtonSessionIfNeeded, skipping uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 205
    :cond_1
    nop

    .line 206
    invoke-interface {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 208
    .local v6, "ignoreButtonSession":Z
    :goto_1
    sget-boolean v7, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateMediaButtonSessionIfNeeded, checking uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mediaButtonSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", ignoreButtonSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    if-nez v6, :cond_5

    .line 214
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-interface {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->cleanUpAudioPlaybackUids(I)V

    .line 215
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eq v5, v1, :cond_4

    .line 216
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 218
    :cond_4
    return-void

    .line 194
    .end local v4    # "audioPlaybackUid":I
    .end local v5    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v6    # "ignoreButtonSession":Z
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "i":I
    :cond_6
    return-void
.end method
