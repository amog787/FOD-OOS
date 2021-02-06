.class Lcom/android/server/broadcastradio/hal2/RadioModule;
.super Ljava/lang/Object;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.module"


# instance fields
.field private final mAidlTunerSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/broadcastradio/hal2/TunerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mAntennaConnected:Ljava/lang/Boolean;

.field private mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field private final mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

.field private mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field private final mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

.field private mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;


# direct methods
.method constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .locals 2
    .param p1, "service"    # Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .param p2, "properties"    # Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 71
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 74
    new-instance v1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-direct {v1, v0}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 77
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 81
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 136
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lockAndFireLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p1, "x1"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 55
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/broadcastradio/hal2/RadioModule;)Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 55
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 55
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 55
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;
    .param p1, "x1"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 55
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-object p1
.end method

.method private buildUnionOfTunerSessionFiltersLocked()Landroid/hardware/radio/ProgramList$Filter;
    .locals 9

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "idTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 216
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    const/4 v2, 0x0

    .line 217
    .local v2, "includeCategories":Z
    const/4 v3, 0x1

    .line 219
    .local v3, "excludeModifications":Z
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 220
    .local v5, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    nop

    .line 221
    invoke-virtual {v5}, Lcom/android/server/broadcastradio/hal2/TunerSession;->getProgramListFilter()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v6

    .line 222
    .local v6, "filter":Landroid/hardware/radio/ProgramList$Filter;
    if-nez v6, :cond_0

    .line 223
    goto :goto_0

    .line 226
    :cond_0
    if-nez v0, :cond_1

    .line 227
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    .line 228
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, v7

    .line 229
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v2

    .line 230
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v3

    .line 231
    goto :goto_0

    .line 233
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 234
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 235
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 241
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 242
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 243
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_2

    .line 245
    :cond_4
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 249
    :cond_5
    :goto_2
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v7

    or-int/2addr v2, v7

    .line 250
    invoke-virtual {v6}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v7

    and-int/2addr v3, v7

    .line 251
    .end local v5    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    .end local v6    # "filter":Landroid/hardware/radio/ProgramList$Filter;
    goto :goto_0

    .line 253
    :cond_6
    if-nez v0, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    new-instance v4, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    :goto_3
    return-object v4
.end method

.method private fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 6
    .param p1, "runnable"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 342
    const-string v0, "BcRadio2Srv.module"

    const/4 v1, 0x0

    .line 343
    .local v1, "deadSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/broadcastradio/hal2/TunerSession;>;"
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 345
    .local v3, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :try_start_0
    iget-object v4, v3, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p1, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 353
    :catch_0
    move-exception v4

    .line 354
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "Failed to invoke ITunerCallback: "

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 346
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 348
    .local v4, "ex":Landroid/os/DeadObjectException;
    const-string v5, "Removing dead TunerSession"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-nez v1, :cond_0

    .line 350
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 352
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v4    # "ex":Landroid/os/DeadObjectException;
    :goto_1
    nop

    .line 356
    .end local v3    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :goto_2
    goto :goto_0

    .line 357
    :cond_1
    if-eqz v1, :cond_2

    .line 358
    nop

    .line 359
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 358
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 361
    :cond_2
    return-void
.end method

.method static synthetic lambda$addAnnouncementListener$5(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .locals 0
    .param p0, "halResult"    # Landroid/util/MutableInt;
    .param p1, "hwCloseHandle"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p2, "result"    # I
    .param p3, "closeHnd"    # Landroid/hardware/broadcastradio/V2_0/ICloseHandle;

    .line 382
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 383
    iput-object p3, p1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 384
    return-void
.end method

.method static synthetic lambda$openSession$2(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .locals 1
    .param p0, "hwSession"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "session"    # Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 176
    const-string/jumbo v0, "openSession"

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 177
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 178
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$0(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .locals 0
    .param p0, "amfmConfig"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "config"    # Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 148
    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 149
    :cond_0
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$1(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "dabConfig"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "config"    # Ljava/util/ArrayList;

    .line 153
    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 154
    :cond_0
    return-void
.end method

.method private lockAndFireLater(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 325
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tYabuulPwbVXcGUDicZUG2Lh3f8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tYabuulPwbVXcGUDicZUG2Lh3f8;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method private onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 264
    nop

    .line 265
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->buildUnionOfTunerSessionFiltersLocked()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v0

    .line 266
    .local v0, "newFilter":Landroid/hardware/radio/ProgramList$Filter;
    const-string v1, "BcRadio2Srv.module"

    if-nez v0, :cond_1

    .line 268
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    if-nez v2, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->stopProgramListUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "mHalTunerSession.stopProgramListUpdates() failed: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0, v2}, Landroid/hardware/radio/ProgramList$Filter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    if-eqz p1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-virtual {p1, v1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->updateProgramInfoFromHalCache(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;)V

    .line 286
    :cond_2
    return-void

    .line 291
    :cond_3
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 293
    :try_start_1
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result v2

    .line 295
    .local v2, "halResult":I
    const-string/jumbo v3, "startProgramListUpdates"

    invoke-static {v3, v2}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    .end local v2    # "halResult":I
    goto :goto_1

    .line 296
    :catch_1
    move-exception v2

    .line 297
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "mHalTunerSession.startProgramListUpdates() failed: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private varargs onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .locals 4
    .param p1, "tunerSessions"    # [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 308
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 309
    .local v2, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    .end local v2    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-eqz v1, :cond_1

    .line 313
    const-string v1, "BcRadio2Srv.module"

    const-string v2, "closing HAL tuner session"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_1

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "mHalTunerSession.close() failed: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 321
    :cond_1
    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;
    .locals 7
    .param p0, "idx"    # I
    .param p1, "fqName"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v1

    .line 144
    .local v1, "service":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    if-nez v1, :cond_0

    return-object v0

    .line 146
    :cond_0
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 147
    .local v2, "amfmConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;>;"
    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is;

    invoke-direct {v4, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V

    .line 151
    new-instance v3, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v3}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 152
    .local v3, "dabConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;>;"
    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;

    invoke-direct {v4, v3}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V

    .line 156
    nop

    .line 157
    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    iget-object v6, v3, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 156
    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/server/broadcastradio/hal2/Convert;->propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object v4

    .line 159
    .local v4, "prop":Landroid/hardware/radio/RadioManager$ModuleProperties;
    new-instance v5, Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {v5, v1, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 160
    .end local v1    # "service":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .end local v2    # "amfmConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;>;"
    .end local v3    # "dabConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;>;"
    .end local v4    # "prop":Landroid/hardware/radio/RadioManager$ModuleProperties;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BcRadio2Srv.module"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    return-object v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 7
    .param p1, "enabledTypes"    # [I
    .param p2, "listener"    # Landroid/hardware/radio/IAnnouncementListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "enabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 367
    .local v3, "type":I
    int-to-byte v4, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v3    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_0
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 371
    .local v1, "halResult":Landroid/util/MutableInt;
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 372
    .local v2, "hwCloseHandle":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ICloseHandle;>;"
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$2;

    invoke-direct {v3, p0, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V

    .line 380
    .local v3, "hwListener":Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter v4

    .line 381
    :try_start_0
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    new-instance v6, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$QlTfH9411GzmESnxSlsnKbLa8hw;

    invoke-direct {v6, v1, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$QlTfH9411GzmESnxSlsnKbLa8hw;-><init>(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v5, v0, v3, v6}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V

    .line 385
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget v4, v1, Landroid/util/MutableInt;->value:I

    const-string v5, "addAnnouncementListener"

    invoke-static {v5, v4}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 388
    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$3;

    invoke-direct {v4, p0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$3;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    return-object v4

    .line 385
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public closeSessions(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Integer;

    .line 202
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 204
    .local v1, "tunerSessions":[Lcom/android/server/broadcastradio/hal2/TunerSession;
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 205
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 208
    .local v3, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    invoke-virtual {v3, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    .line 207
    .end local v3    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-void

    .line 206
    .end local v1    # "tunerSessions":[Lcom/android/server/broadcastradio/hal2/TunerSession;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 1
    .param p1, "runnable"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 338
    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lockAndFireLater(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method getImage(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "id"    # I

    .line 400
    if-eqz p1, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter v0

    .line 404
    :try_start_0
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$7jNXPMuvH-DQ1rLv9_WZ2s1UiPQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$7jNXPMuvH-DQ1rLv9_WZ2s1UiPQ;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;I)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 405
    .local v1, "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 406
    .local v2, "rawImage":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 407
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    array-length v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_1
    const/4 v0, 0x0

    array-length v1, v2

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 409
    .end local v2    # "rawImage":[B
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 400
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image ID is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    return-object v0
.end method

.method public synthetic lambda$fanoutAidlCallback$4$RadioModule(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .locals 0
    .param p1, "runnable"    # Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public synthetic lambda$getImage$6$RadioModule(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    invoke-interface {v0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getImage(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$lockAndFireLater$3$RadioModule(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 326
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 328
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .locals 3
    .param p1, "tunerSession"    # Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 302
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 258
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;
    .locals 5
    .param p1, "userCb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 175
    .local v1, "hwSession":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ITunerSession;>;"
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$PbMDkfYDR1vn12EtbZSZscvNDM8;

    invoke-direct {v4, v1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$PbMDkfYDR1vn12EtbZSZscvNDM8;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v2, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V

    .line 179
    iget-object v2, v1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 181
    .end local v1    # "hwSession":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ITunerSession;>;"
    :cond_0
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession;

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;)V

    .line 182
    .local v1, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 193
    :cond_2
    monitor-exit v0

    return-object v1

    .line 194
    .end local v1    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
