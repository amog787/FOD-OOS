.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$Callback;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    }
.end annotation


# static fields
.field static final TAG_ENABLED_DND_APPS:Ljava/lang/String; = "dnd_apps"


# instance fields
.field private mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviderNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p3, "pm"    # Landroid/content/pm/IPackageManager;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    .line 62
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "system.condition.providers"

    const v2, 0x1070076

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/PropConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ConditionProviders;->mApprovalLevel:I

    .line 66
    return-void
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .locals 5
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "create"    # Z

    .line 280
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 282
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 283
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 284
    .local v3, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    return-object v3

    .line 282
    .end local v3    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v2    # "i":I
    :cond_2
    if-eqz p3, :cond_3

    .line 289
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$1;)V

    move-object v0, v2

    .line 290
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    return-object v0

    .line 293
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    return-object v0

    .line 280
    .end local v1    # "N":I
    :cond_4
    :goto_1
    return-object v0
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 432
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 436
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/IConditionProvider;

    :goto_0
    return-object v0
.end method

.method private removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    .line 259
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_3

    .line 260
    :cond_0
    array-length v1, p2

    .line 261
    .local v1, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 262
    .local v2, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 263
    aget-object v4, p2, v3

    iget-object v4, v4, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 264
    .local v4, "id":Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for duplicate id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    goto :goto_1

    .line 268
    :cond_1
    aget-object v5, p2, v3

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v4    # "id":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    return-object v0

    .line 271
    :cond_3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    return-object p2

    .line 272
    :cond_4
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/Condition;

    .line 273
    .local v0, "rt":[Landroid/service/notification/Condition;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 274
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/Condition;

    aput-object v4, v0, v3

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 276
    .end local v3    # "i":I
    :cond_5
    return-object v0

    .line 259
    .end local v0    # "rt":[Landroid/service/notification/Condition;
    .end local v1    # "N":I
    .end local v2    # "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    :cond_6
    :goto_3
    return-object v0
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 403
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 404
    .local v0, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 405
    :cond_0
    array-length v1, p0

    .line 406
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 407
    aget-object v3, p0, v2

    .line 408
    .local v3, "item":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 409
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    .end local v2    # "i":I
    :cond_2
    return-object v0

    .line 404
    .end local v1    # "N":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 385
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribeLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 387
    .local v0, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v1, 0x0

    .line 388
    .local v1, "re":Landroid/os/RemoteException;
    if-eqz v0, :cond_1

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscribing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v0, v2}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V

    .line 392
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    .line 394
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    move-object v1, v2

    .line 398
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 399
    return-void
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 416
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsubscribeLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 418
    .local v0, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v1, 0x0

    .line 419
    .local v1, "re":Landroid/os/RemoteException;
    if-eqz v0, :cond_1

    .line 421
    :try_start_0
    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v0, v2}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    goto :goto_0

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unsubscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    move-object v1, v2

    .line 426
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    .line 428
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 429
    return-void
.end method


# virtual methods
.method public addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/notification/SystemConditionProviderService;

    .line 77
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/notification/SystemConditionProviderService;->attachBase(Landroid/content/Context;)V

    .line 79
    nop

    .line 80
    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 79
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerSystemService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 81
    return-void
.end method

.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 157
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 2
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    .line 253
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;

    .line 162
    instance-of v0, p1, Landroid/service/notification/IConditionProvider;

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    const-string v1, "    mRecords("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 141
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "countdownDesc":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 145
    const-string v4, "        ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .end local v3    # "countdownDesc":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const-string v0, "    mSystemConditionProviders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 153
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 148
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "provider"    # Landroid/service/notification/IConditionProvider;

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v1

    .line 342
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 350
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    goto :goto_0

    .line 351
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v4, "checkServiceToken exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 330
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 333
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    :cond_1
    monitor-exit v1

    return-object v0

    .line 334
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 330
    :cond_2
    :goto_0
    return-object v0
.end method

.method public findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 320
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ConditionProviders;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 322
    .local v2, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    invoke-static {v2}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0

    .line 325
    .end local v2    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_1
    goto :goto_0

    .line 326
    :cond_2
    return-object v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    .line 122
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 123
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 124
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 125
    const-string v1, "enabled_notification_policy_access_packages"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 126
    const-string v1, "dnd_apps"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 127
    const-string v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    .line 128
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 129
    const-string v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 130
    const v1, 0x10401ca

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 131
    return-object v0
.end method

.method protected getRequiredPermission()Ljava/lang/String;
    .locals 1

    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemProviders()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    return-object v0
.end method

.method public isSystemProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isValidEntry(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageOrComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method protected loadDefaultsFromConfig()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "defaultDndAccess":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 203
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "dnds":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 205
    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    goto :goto_1

    .line 208
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ConditionProviders;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    .line 204
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "dnds":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyConditions pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " conditions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    if-nez p3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/ConditionProviders;->removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object v1

    move-object p3, v1

    .line 301
    if-eqz p3, :cond_6

    array-length v1, p3

    if-nez v1, :cond_2

    goto :goto_3

    .line 302
    :cond_2
    array-length v1, p3

    .line 303
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 304
    aget-object v3, p3, v2

    .line 305
    .local v3, "c":Landroid/service/notification/Condition;
    iget-object v4, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v5, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v4

    .line 306
    .local v4, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iput-object p2, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 307
    iput-object v3, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 303
    .end local v3    # "c":Landroid/service/notification/Condition;
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    array-length v0, p3

    .line 311
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 312
    aget-object v2, p3, v1

    .line 313
    .local v2, "c":Landroid/service/notification/Condition;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v3, :cond_4

    .line 314
    iget-object v4, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-interface {v3, v4, v2}, Lcom/android/server/notification/ConditionProviders$Callback;->onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V

    .line 311
    .end local v2    # "c":Landroid/service/notification/Condition;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 317
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 301
    .end local v0    # "N":I
    :cond_6
    :goto_3
    :try_start_1
    monitor-exit v0

    return-void

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 2

    .line 167
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v1}, Lcom/android/server/notification/SystemConditionProviderService;->onBootComplete()V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v0}, Lcom/android/server/notification/ConditionProviders$Callback;->onBootComplete()V

    .line 174
    :cond_1
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .locals 9
    .param p1, "removingPackage"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;
    .param p3, "uid"    # [I

    .line 225
    if-eqz p1, :cond_0

    .line 226
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 228
    .local v0, "inm":Landroid/app/INotificationManager;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 229
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 231
    .local v4, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0, v4}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 232
    invoke-interface {v0, v4, v2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_1

    .line 233
    :catch_0
    move-exception v5

    .line 234
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clean up rules for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "inm":Landroid/app/INotificationManager;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 240
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 186
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 188
    .local v0, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_0
    invoke-interface {v0}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t connect to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v1, :cond_0

    .line 194
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Lcom/android/server/notification/ConditionProviders$Callback;->onServiceAdded(Landroid/content/ComponentName;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 4
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 215
    if-nez p1, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 218
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 216
    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 221
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "user"    # I

    .line 178
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 179
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/android/server/notification/ConditionProviders$Callback;->onUserSwitched()V

    .line 182
    :cond_0
    return-void
.end method

.method protected resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ConditionProviders;->resetPackage(Ljava/lang/String;I)Z

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 92
    .local v0, "changes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-object v0
.end method

.method resetPackage(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    .line 102
    .local v0, "isAllowed":Z
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->isDefaultComponentOrPackage(Ljava/lang/String;)Z

    move-result v1

    .line 103
    .local v1, "isDefault":Z
    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0, p1, p2, v2, v2}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 106
    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 107
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 109
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2
.end method

.method public setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/notification/ConditionProviders$Callback;

    .line 69
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    .line 70
    return-void
.end method

.method public subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 360
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 362
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v2, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to subscribe to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    monitor-exit v0

    return v1

    .line 366
    :cond_0
    iget-boolean v1, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 367
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 368
    iget-boolean v1, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    monitor-exit v0

    return v1

    .line 369
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .line 373
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v1

    .line 375
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v1, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unsubscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    monitor-exit v0

    return-void

    .line 379
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    .line 380
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 381
    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeDefaults(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    const-string v1, ":"

    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "defaults":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "defaults"

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    nop

    .end local v1    # "defaults":Ljava/lang/String;
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
