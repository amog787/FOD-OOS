.class public Lcom/android/server/slice/PinnedSliceState;
.super Ljava/lang/Object;
.source "PinnedSliceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
    }
.end annotation


# static fields
.field private static final SLICE_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "PinnedSliceState"


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/slice/PinnedSliceState$ListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPinnedPkgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkg:Ljava/lang/String;

.field private final mService:Lcom/android/server/slice/SliceManagerService;

.field private mSlicePinned:Z

.field private mSupportedSpecs:[Landroid/app/slice/SliceSpec;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/slice/SliceManagerService;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 57
    new-instance v0, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$KzxFkvfomRuMb5PD8_pIHDIhUUE;

    invoke-direct {v0, p0}, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$KzxFkvfomRuMb5PD8_pIHDIhUUE;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 61
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 62
    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 63
    iput-object p3, p0, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/android/server/slice/SliceManagerService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private checkSelfRemove()V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V

    .line 169
    :cond_0
    return-void
.end method

.method private findSpec([Landroid/app/slice/SliceSpec;Ljava/lang/String;)Landroid/app/slice/SliceSpec;
    .locals 4
    .param p1, "specs"    # [Landroid/app/slice/SliceSpec;
    .param p2, "type"    # Ljava/lang/String;

    .line 94
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 95
    .local v2, "spec":Landroid/app/slice/SliceSpec;
    invoke-virtual {v2}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    return-object v2

    .line 94
    .end local v2    # "spec":Landroid/app/slice/SliceSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRecheckListeners()V
    .locals 4

    .line 172
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 175
    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;

    .line 176
    .local v2, "l":Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
    invoke-static {v2}, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->access$000(Lcom/android/server/slice/PinnedSliceState$ListenerInfo;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 174
    .end local v2    # "l":Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/slice/PinnedSliceState;->checkSelfRemove()V

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleSendPinned()V
    .locals 6

    .line 185
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->getClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 186
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    .line 194
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 186
    :cond_0
    return-void

    .line 187
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "slice_uri"

    iget-object v3, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    const-string v2, "pin"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "PinnedSliceState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 195
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_2
    return-void

    .line 185
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method private handleSendUnpinned()V
    .locals 6

    .line 198
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->getClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 199
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_1

    .line 207
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 199
    :cond_0
    return-void

    .line 200
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "slice_uri"

    iget-object v3, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :try_start_1
    const-string v2, "unpin"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "PinnedSliceState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 208
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_2
    return-void

    .line 198
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method public static synthetic lambda$KzxFkvfomRuMb5PD8_pIHDIhUUE(Lcom/android/server/slice/PinnedSliceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/slice/PinnedSliceState;->handleRecheckListeners()V

    return-void
.end method

.method public static synthetic lambda$TZdoqC_LDA8If7sQ7WXz9LM6VHg(Lcom/android/server/slice/PinnedSliceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/slice/PinnedSliceState;->handleSendPinned()V

    return-void
.end method

.method static synthetic lambda$mergeSpecs$1(Landroid/app/slice/SliceSpec;)Z
    .locals 1
    .param p0, "s"    # Landroid/app/slice/SliceSpec;

    .line 88
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$mergeSpecs$2(I)[Landroid/app/slice/SliceSpec;
    .locals 1
    .param p0, "x$0"    # I

    .line 88
    new-array v0, p0, [Landroid/app/slice/SliceSpec;

    return-object v0
.end method

.method public static synthetic lambda$t5Vl61Ns1u_83c4ri7920sczEu0(Lcom/android/server/slice/PinnedSliceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/slice/PinnedSliceState;->handleSendUnpinned()V

    return-void
.end method

.method private setSlicePinned(Z)V
    .locals 3
    .param p1, "pinned"    # Z

    .line 111
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    .line 113
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v1}, Lcom/android/server/slice/SliceManagerService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$TZdoqC_LDA8If7sQ7WXz9LM6VHg;

    invoke-direct {v2, p0}, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$TZdoqC_LDA8If7sQ7WXz9LM6VHg;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v1}, Lcom/android/server/slice/SliceManagerService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$t5Vl61Ns1u_83c4ri7920sczEu0;

    invoke-direct {v2, p0}, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$t5Vl61Ns1u_83c4ri7920sczEu0;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    :goto_0
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/slice/PinnedSliceState;->setSlicePinned(Z)V

    .line 108
    return-void
.end method

.method getClient()Landroid/content/ContentProviderClient;
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 159
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 160
    :cond_0
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 161
    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecs()[Landroid/app/slice/SliceSpec;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasPinOrListener()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isListening()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$mergeSpecs$0$PinnedSliceState([Landroid/app/slice/SliceSpec;Landroid/app/slice/SliceSpec;)Landroid/app/slice/SliceSpec;
    .locals 3
    .param p1, "supportedSpecs"    # [Landroid/app/slice/SliceSpec;
    .param p2, "s"    # Landroid/app/slice/SliceSpec;

    .line 82
    invoke-virtual {p2}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/PinnedSliceState;->findSpec([Landroid/app/slice/SliceSpec;Ljava/lang/String;)Landroid/app/slice/SliceSpec;

    move-result-object v0

    .line 83
    .local v0, "other":Landroid/app/slice/SliceSpec;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v1

    invoke-virtual {p2}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 85
    return-object v0

    .line 87
    :cond_1
    return-object p2
.end method

.method public mergeSpecs([Landroid/app/slice/SliceSpec;)V
    .locals 4
    .param p1, "supportedSpecs"    # [Landroid/app/slice/SliceSpec;

    .line 76
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    if-nez v1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "specs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$j_JfEZwPCa729MjgsTSd8MAItIw;

    invoke-direct {v3, p0, p1}, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$j_JfEZwPCa729MjgsTSd8MAItIw;-><init>(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$2PaYhOaggf1E5xg82LTTEwxmLE4;->INSTANCE:Lcom/android/server/slice/-$$Lambda$PinnedSliceState$2PaYhOaggf1E5xg82LTTEwxmLE4;

    .line 88
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/slice/-$$Lambda$PinnedSliceState$vxnx7v9Z67Tj9aywVmtdX48br1M;->INSTANCE:Lcom/android/server/slice/-$$Lambda$PinnedSliceState$vxnx7v9Z67Tj9aywVmtdX48br1M;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/slice/SliceSpec;

    iput-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 90
    .end local v1    # "specs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    :goto_0
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pin(Ljava/lang/String;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "specs"    # [Landroid/app/slice/SliceSpec;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 123
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    new-instance v9, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;

    const/4 v6, 0x1

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move-object v2, v9

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;-><init>(Lcom/android/server/slice/PinnedSliceState;Landroid/os/IBinder;Ljava/lang/String;ZII)V

    .line 124
    invoke-virtual {v1, p3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 130
    :goto_0
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/slice/PinnedSliceState;->mergeSpecs([Landroid/app/slice/SliceSpec;)V

    .line 131
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/slice/PinnedSliceState;->setSlicePinned(Z)V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unpin(Ljava/lang/String;Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 136
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 138
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 139
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
