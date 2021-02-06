.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;,
        Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_PEOPLE_VALIDATOR:Z = true

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MAX_PEOPLE:I = 0xa

.field static final NONE:F = 0.0f

.field private static final PEOPLE_CACHE_SIZE:I = 0xc8

.field private static final SETTING_ENABLE_PEOPLE_VALIDATOR:Ljava/lang/String; = "validate_notification_people_enabled"

.field static final STARRED_CONTACT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ValidateNoPeople"

.field static final VALID_CONTACT:F = 0.5f

.field private static final VERBOSE:Z


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field protected mEnabled:Z

.field private mEvictionCount:I

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPeopleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUserToContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const-string v0, "ValidateNoPeople"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 66
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 71
    const-string v0, "_id"

    const-string/jumbo v1, "starred"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 62
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 62
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 62
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 62
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method private addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "lookupResult"    # Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 438
    const-string v0, "ValidateNoPeople"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 440
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 441
    :try_start_1
    const-string v2, "Null cursor from contacts query."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 442
    :cond_0
    return-void

    .line 444
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    invoke-virtual {p1, v1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 447
    :cond_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 449
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3
    goto :goto_2

    .line 438
    .restart local v1    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/notification/ValidateNotificationPeople;
    .end local p1    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 447
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/server/notification/ValidateNotificationPeople;
    .restart local p1    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v1

    .line 448
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Problem getting content resolver or performing contacts query."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private addWorkContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p1, "lookupResult"    # Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "corpLookupUri"    # Landroid/net/Uri;

    .line 413
    invoke-direct {p0, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->findWorkUserId(Landroid/content/Context;)I

    move-result v0

    .line 414
    .local v0, "workUserId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Work profile user ID not found for work contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateNoPeople"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void

    .line 418
    :cond_0
    nop

    .line 419
    invoke-static {p3, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 420
    .local v1, "corpLookupUriWithUserId":Landroid/net/Uri;
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    .line 421
    return-void
.end method

.method private static combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "first"    # [Ljava/lang/String;
    .param p1, "second"    # [Ljava/lang/String;

    .line 297
    if-nez p0, :cond_0

    .line 298
    return-object p1

    .line 300
    :cond_0
    if-nez p1, :cond_1

    .line 301
    return-object p0

    .line 303
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 304
    .local v0, "people":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 305
    .local v4, "person":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v4    # "person":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 308
    .local v3, "person":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v3    # "person":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    :cond_3
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private findWorkUserId(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 425
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 426
    .local v0, "userManager":Landroid/os/UserManager;
    nop

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v1

    .line 428
    .local v1, "profileIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 429
    .local v4, "profileId":I
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 430
    return v4

    .line 428
    .end local v4    # "profileId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "handle"    # Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 208
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 209
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .line 212
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ValidateNoPeople"

    const-string v3, "failed to create package context for lookups"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 291
    const-string v0, "android.people.list"

    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "peopleList":[Ljava/lang/String;
    const-string v1, "android.people"

    invoke-static {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "legacyPeople":[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 315
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "people":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 317
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 320
    :cond_0
    instance-of v1, v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 321
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    .line 323
    .local v1, "arrayList":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    return-object v2

    .line 327
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 328
    move-object v2, v1

    .line 329
    .local v2, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 332
    .end local v2    # "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 333
    move-object v2, v1

    .line 334
    .local v2, "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 335
    .local v3, "N":I
    new-array v4, v3, [Ljava/lang/String;

    .line 336
    .local v4, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 337
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 336
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 339
    .end local v5    # "i":I
    :cond_3
    return-object v4

    .line 342
    .end local v2    # "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "N":I
    .end local v4    # "array":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Person;

    if-eqz v3, :cond_6

    .line 343
    move-object v2, v1

    .line 344
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 345
    .restart local v3    # "N":I
    new-array v4, v3, [Ljava/lang/String;

    .line 346
    .restart local v4    # "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 347
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    invoke-virtual {v6}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 346
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 349
    .end local v5    # "i":I
    :cond_5
    return-object v4

    .line 352
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    .end local v3    # "N":I
    .end local v4    # "array":[Ljava/lang/String;
    :cond_6
    return-object v2

    .line 355
    .end local v1    # "arrayList":Ljava/util/ArrayList;
    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    .line 356
    new-array v1, v4, [Ljava/lang/String;

    .line 357
    .local v1, "array":[Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 358
    return-object v1

    .line 361
    .end local v1    # "array":[Ljava/lang/String;
    :cond_8
    instance-of v1, v0, [C

    if-eqz v1, :cond_9

    .line 362
    new-array v1, v4, [Ljava/lang/String;

    .line 363
    .restart local v1    # "array":[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    move-object v4, v0

    check-cast v4, [C

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v1, v3

    .line 364
    return-object v1

    .line 367
    .end local v1    # "array":[Ljava/lang/String;
    :cond_9
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    .line 368
    new-array v1, v4, [Ljava/lang/String;

    .line 369
    .restart local v1    # "array":[Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 370
    return-object v1

    .line 373
    .end local v1    # "array":[Ljava/lang/String;
    :cond_a
    instance-of v1, v0, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    .line 374
    move-object v1, v0

    check-cast v1, [Ljava/lang/CharSequence;

    .line 375
    .local v1, "charSeqArray":[Ljava/lang/CharSequence;
    array-length v2, v1

    .line 376
    .local v2, "N":I
    new-array v3, v2, [Ljava/lang/String;

    .line 377
    .local v3, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_b

    .line 378
    aget-object v5, v1, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 380
    .end local v4    # "i":I
    :cond_b
    return-object v3

    .line 383
    .end local v1    # "charSeqArray":[Ljava/lang/CharSequence;
    .end local v2    # "N":I
    .end local v3    # "array":[Ljava/lang/String;
    :cond_c
    return-object v2
.end method

.method private resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;

    .line 393
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 395
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 396
    .local v0, "numberUri":Landroid/net/Uri;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .line 387
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 388
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 389
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 222
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v7, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 224
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v8, 0x1

    new-array v9, v8, [F

    .line 225
    .local v9, "affinityOut":[F
    nop

    .line 226
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v0

    .line 227
    .local v0, "rr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v1, 0x0

    aget v2, v9, v1

    .line 228
    .local v2, "affinity":F
    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 229
    if-nez v0, :cond_2

    .line 230
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_1

    move v1, v8

    :cond_1
    invoke-virtual {v3, p2, v4, v1, v8}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    .line 235
    :goto_1
    return-object v0
.end method

.method private validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p5, "affinityOut"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[F)",
            "Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;"
        }
    .end annotation

    .line 240
    .local p4, "peopleOverride":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    .line 241
    .local v0, "affinity":F
    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 242
    return-object v1

    .line 244
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    move-object/from16 v9, p4

    invoke-direct {v2, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v10, v2

    .line 245
    .local v10, "people":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v11

    .line 246
    .local v11, "notificationPeople":[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 247
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 250
    :cond_1
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ValidateNoPeople"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v12, v2

    .line 252
    .local v12, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 253
    .local v2, "personIdx":I
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    move v2, v0

    .end local v0    # "affinity":F
    .local v2, "affinity":F
    .local v4, "personIdx":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 254
    .local v5, "handle":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 256
    :cond_3
    iget-object v6, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v6

    .line 257
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v7, v0, v5}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v13, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v13, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 259
    .local v13, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    if-eqz v13, :cond_5

    invoke-static {v13}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_1

    .line 262
    :cond_4
    sget-boolean v14, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v14, :cond_6

    const-string v14, "ValidateNoPeople"

    const-string/jumbo v15, "using cached lookupResult"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 260
    :cond_5
    :goto_1
    invoke-virtual {v12, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_6
    :goto_2
    if-eqz v13, :cond_7

    .line 265
    invoke-virtual {v13}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v14

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move v2, v14

    .line 267
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v13    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_7
    monitor-exit v6

    .line 268
    add-int/lit8 v4, v4, 0x1

    const/16 v0, 0xa

    if-ne v4, v0, :cond_8

    .line 269
    move v0, v2

    move v13, v4

    goto :goto_3

    .line 271
    .end local v5    # "handle":Ljava/lang/String;
    :cond_8
    goto :goto_0

    .line 267
    .restart local v5    # "handle":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    .end local v5    # "handle":Ljava/lang/String;
    :cond_9
    move v0, v2

    move v13, v4

    .line 274
    .end local v2    # "affinity":F
    .end local v4    # "personIdx":I
    .local v0, "affinity":F
    .local v13, "personIdx":I
    :goto_3
    const/4 v2, 0x0

    aput v0, p5, v2

    .line 276
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 277
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final affinity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ValidateNoPeople"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_a
    return-object v1

    .line 281
    :cond_b
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending: future work scheduled for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateNoPeople"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_c
    new-instance v14, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V

    return-object v14
.end method


# virtual methods
.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
    .locals 11
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "timeoutMs"    # I
    .param p4, "timeoutAffinity"    # F

    .line 166
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    const-string v1, "ValidateNoPeople"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking affinity for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    .line 168
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [F

    .line 170
    .local v3, "affinityOut":[F
    invoke-direct {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 171
    .local v10, "context":Landroid/content/Context;
    if-nez v10, :cond_2

    .line 172
    return v0

    .line 174
    :cond_2
    const/4 v8, 0x0

    .line 175
    move-object v4, p0

    move-object v5, v10

    move-object v6, v2

    move-object v7, p2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v0

    .line 176
    .local v0, "prr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v4, 0x0

    aget v5, v3, v4

    .line 178
    .local v5, "affinity":F
    if-eqz v0, :cond_4

    .line 181
    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    move-object v4, v6

    .line 182
    .local v4, "s":Ljava/util/concurrent/Semaphore;
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/server/notification/ValidateNotificationPeople$2;

    invoke-direct {v7, p0, v0, v4}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 191
    int-to-long v6, p3

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout while waiting for affinity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Returning timeoutAffinity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return p4

    .line 200
    :cond_3
    nop

    .line 202
    invoke-virtual {v0}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    .line 196
    :catch_0
    move-exception v6

    .line 197
    .local v6, "e":Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InterruptedException while waiting for affinity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Returning affinity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    return v5

    .line 204
    .end local v4    # "s":Ljava/util/concurrent/Semaphore;
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :goto_0
    return v5
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 102
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateNoPeople"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 104
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 106
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 107
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "validate_notification_people_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 109
    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$1;

    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    .line 122
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    :cond_2
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 128
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    const-string v1, "ValidateNoPeople"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 129
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "disabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-object v2

    .line 132
    :cond_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 137
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "skipping global notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    return-object v2

    .line 140
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 141
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_6

    .line 142
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "skipping notification that lacks a context"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_5
    return-object v2

    .line 145
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v1

    return-object v1

    .line 133
    .end local v0    # "context":Landroid/content/Context;
    :cond_7
    :goto_0
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "skipping empty notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_8
    return-object v2
.end method

.method searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .line 401
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 402
    .local v0, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    nop

    .line 403
    invoke-static {p2}, Landroid/provider/ContactsContract$Contacts;->createCorpLookupUriFromEnterpriseLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 404
    .local v1, "corpLookupUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 405
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->addWorkContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    .line 409
    :goto_0
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 151
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 156
    return-void
.end method
