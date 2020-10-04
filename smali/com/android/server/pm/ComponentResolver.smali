.class public Lcom/android/server/pm/ComponentResolver;
.super Ljava/lang/Object;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ComponentResolver$AuthoritiesIterGenerator;,
        Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;,
        Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;,
        Lcom/android/server/pm/ComponentResolver$ActionIterGenerator;,
        Lcom/android/server/pm/ComponentResolver$IterGenerator;,
        Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;,
        Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;,
        Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;,
        Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_FILTERS:Z = false

.field private static final DEBUG_SHOW_INFO:Z = false

.field private static final PROTECTED_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private static sUserManager:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDeferProtectedFilters:Z

.field private final mLock:Ljava/lang/Object;

.field private mProtectedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mProvidersByAuthority:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    .line 76
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SENDTO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.VIEW"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ComponentResolver$PuHbZd5KEOMGjkH8xDOhOwfLtC0;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ComponentResolver$PuHbZd5KEOMGjkH8xDOhOwfLtC0;

    sput-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/PackageManagerInternal;Ljava/lang/Object;)V
    .locals 2
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    .line 157
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    .line 161
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    .line 165
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    .line 190
    sput-object p2, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 191
    sput-object p1, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    .line 192
    iput-object p3, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    .line 193
    return-void
.end method

.method static synthetic access$800()Lcom/android/server/pm/UserManagerService;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$900()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private addActivitiesLocked(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Z)V
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "chatty"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 535
    .local p2, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 536
    .local v0, "activitiesSize":I
    const/4 v1, 0x0

    .line 537
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 538
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 539
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 540
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 541
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-static {v4, v3, v5, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$600(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 542
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 543
    if-nez v1, :cond_0

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_1

    .line 546
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :goto_1
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .end local v3    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Activities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v3, "<NONE>"

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_4
    return-void
.end method

.method private addProvidersLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 559
    .local v2, "providersSize":I
    const/4 v3, 0x0

    .line 560
    .local v3, "r":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v5, "PackageManager"

    if-ge v4, v2, :cond_9

    .line 561
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Provider;

    .line 562
    .local v6, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v7, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 564
    iget-object v7, v0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->addProvider(Landroid/content/pm/PackageParser$Provider;)V

    .line 565
    iget-object v7, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v7, v7, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    iput-boolean v7, v6, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 566
    iget-object v7, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 567
    iget-object v7, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 568
    .local v7, "names":[Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 569
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v11, v7

    if-ge v9, v11, :cond_6

    .line 570
    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    iget-boolean v11, v6, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v11, :cond_0

    .line 578
    new-instance v11, Landroid/content/pm/PackageParser$Provider;

    invoke-direct {v11, v6}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    move-object v6, v11

    .line 579
    const/4 v11, 0x0

    iput-boolean v11, v6, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 581
    :cond_0
    iget-object v11, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v7, v9

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 582
    iget-object v11, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v7, v9

    invoke-virtual {v11, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v11, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 584
    iget-object v11, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    aget-object v12, v7, v9

    iput-object v12, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_2

    .line 586
    :cond_1
    iget-object v11, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v7, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 588
    :goto_2
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v11, :cond_5

    if-eqz p2, :cond_5

    .line 589
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Registered content provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v7, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", className = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", isSyncable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v12, v12, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 594
    :cond_2
    iget-object v11, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v12, v7, v9

    .line 595
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Provider;

    .line 597
    .local v11, "other":Landroid/content/pm/PackageParser$Provider;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 598
    invoke-virtual {v11}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_3

    :cond_3
    move-object v12, v10

    .line 600
    .local v12, "component":Landroid/content/ComponentName;
    :goto_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_4
    const-string v13, "?"

    .line 601
    .local v13, "packageName":Ljava/lang/String;
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping provider name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v7, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (in package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "): name already used by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v11    # "other":Landroid/content/pm/PackageParser$Provider;
    .end local v12    # "component":Landroid/content/ComponentName;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 607
    .end local v7    # "names":[Ljava/lang/String;
    .end local v9    # "j":I
    :cond_6
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v5, :cond_8

    if-eqz p2, :cond_8

    .line 608
    if-nez v3, :cond_7

    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v5

    goto :goto_6

    .line 611
    :cond_7
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    :goto_6
    iget-object v5, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .end local v6    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 616
    .end local v4    # "i":I
    :cond_9
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_b

    if-eqz p2, :cond_b

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Providers: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_a

    const-string v6, "<NONE>"

    goto :goto_7

    :cond_a
    move-object v6, v3

    :goto_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_b
    return-void
.end method

.method private addReceiversLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 623
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 624
    .local v0, "receiversSize":I
    const/4 v1, 0x0

    .line 625
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 626
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 627
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 629
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v5, 0x0

    const-string/jumbo v6, "receiver"

    invoke-static {v4, v3, v6, v5}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$600(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 630
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 631
    if-nez v1, :cond_0

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_1

    .line 634
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    :goto_1
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .end local v3    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    .end local v2    # "i":I
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Receivers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v3, "<NONE>"

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_4
    return-void
.end method

.method private addServicesLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 646
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 647
    .local v0, "servicesSize":I
    const/4 v1, 0x0

    .line 648
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 649
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Service;

    .line 650
    .local v3, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 652
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    .line 653
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 654
    if-nez v1, :cond_0

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_1

    .line 657
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    :goto_1
    iget-object v4, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .end local v3    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    .end local v2    # "i":I
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Services: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v3, "<NONE>"

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_4
    return-void
.end method

.method private adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)V
    .locals 17
    .param p2, "intent"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p3, "setupWizardPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 760
    .local p1, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v3

    if-gtz v3, :cond_0

    .line 761
    return-void

    .line 764
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 765
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 767
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    .line 769
    .local v5, "privilegedApp":Z
    :goto_0
    if-nez v5, :cond_2

    .line 777
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 778
    return-void

    .line 781
    :cond_2
    if-nez v1, :cond_7

    .line 783
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/ComponentResolver;->isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 784
    iget-boolean v6, v0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    if-eqz v6, :cond_4

    .line 792
    iget-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-nez v6, :cond_3

    .line 793
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 795
    :cond_3
    iget-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    return-void

    .line 808
    :cond_4
    iget-object v6, v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v8, p3

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 817
    return-void

    .line 825
    :cond_5
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 826
    return-void

    .line 830
    :cond_6
    move-object/from16 v8, p3

    return-void

    .line 834
    :cond_7
    move-object/from16 v8, p3

    .line 835
    invoke-static {v1, v3}, Lcom/android/server/pm/ComponentResolver;->findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v9

    .line 836
    .local v9, "foundActivity":Landroid/content/pm/PackageParser$Activity;
    if-nez v9, :cond_8

    .line 844
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 845
    return-void

    .line 851
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 852
    .local v10, "intentListCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    iget-object v11, v0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v11, v2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v11

    .line 855
    .local v11, "foundFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 856
    .local v12, "actionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_9

    .line 857
    new-instance v13, Lcom/android/server/pm/ComponentResolver$ActionIterGenerator;

    invoke-direct {v13}, Lcom/android/server/pm/ComponentResolver$ActionIterGenerator;-><init>()V

    invoke-static {v10, v13, v12}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 858
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_9

    .line 866
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 867
    return-void

    .line 872
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 873
    .local v13, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v13, :cond_a

    .line 874
    new-instance v14, Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;

    invoke-direct {v14}, Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;-><init>()V

    invoke-static {v10, v14, v13}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 875
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_a

    .line 883
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 884
    return-void

    .line 889
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->schemesIterator()Ljava/util/Iterator;

    move-result-object v14

    .line 890
    .local v14, "schemesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v14, :cond_b

    .line 891
    new-instance v15, Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;

    invoke-direct {v15}, Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;-><init>()V

    invoke-static {v10, v15, v14}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 892
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_b

    .line 900
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 901
    return-void

    .line 906
    :cond_b
    nop

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v15

    .line 908
    .local v15, "authoritiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v15, :cond_c

    .line 909
    new-instance v6, Lcom/android/server/pm/ComponentResolver$AuthoritiesIterGenerator;

    invoke-direct {v6}, Lcom/android/server/pm/ComponentResolver$AuthoritiesIterGenerator;-><init>()V

    invoke-static {v10, v6, v15}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V

    .line 911
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_c

    .line 919
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 920
    return-void

    .line 925
    :cond_c
    const/4 v6, 0x0

    .line 926
    .local v6, "cappedPriority":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_d

    .line 927
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 926
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 929
    .end local v7    # "i":I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v0

    if-le v0, v6, :cond_e

    .line 937
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 938
    return-void

    .line 941
    :cond_e
    return-void
.end method

.method private assertProvidersNotDefinedLocked(Landroid/content/pm/PackageParser$Package;)V
    .locals 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1042
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1044
    .local v0, "providersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1045
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 1046
    .local v2, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1047
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1048
    .local v3, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 1049
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1050
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Provider;

    .line 1052
    .local v5, "other":Landroid/content/pm/PackageParser$Provider;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1053
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_0
    const-string v6, "?"

    .line 1055
    .local v6, "otherPackageName":Ljava/lang/String;
    :goto_2
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1065
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v8, "com.android.settings"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1066
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allow to update package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1068
    :cond_1
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    const/16 v8, -0xd

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t install because provider name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (in package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") is already used by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1048
    .end local v5    # "other":Landroid/content/pm/PackageParser$Provider;
    .end local v6    # "otherPackageName":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1044
    .end local v2    # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1080
    :cond_4
    return-void
.end method

.method private static findMatchingActivity(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/PackageParser$Activity;
    .locals 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Landroid/content/pm/PackageParser$Activity;"
        }
    .end annotation

    .line 725
    .local p0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 726
    .local v1, "sysActivity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    return-object v1

    .line 729
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    return-object v1

    .line 732
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 733
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 734
    return-object v1

    .line 736
    :cond_2
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 737
    return-object v1

    .line 740
    .end local v1    # "sysActivity":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    goto :goto_0

    .line 741
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIntentListSubset(Ljava/util/List;Lcom/android/server/pm/ComponentResolver$IterGenerator;Ljava/util/Iterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;",
            "Lcom/android/server/pm/ComponentResolver$IterGenerator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 675
    .local p0, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .local p1, "generator":Lcom/android/server/pm/ComponentResolver$IterGenerator;, "Lcom/android/server/pm/ComponentResolver$IterGenerator<TT;>;"
    .local p2, "searchIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 677
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 678
    goto :goto_4

    .line 681
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 684
    .local v0, "searchAction":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 685
    .local v1, "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 687
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    .line 691
    .local v3, "selectionFound":Z
    invoke-virtual {p1, v2}, Lcom/android/server/pm/ComponentResolver$IterGenerator;->generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;

    move-result-object v4

    .line 692
    .local v4, "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 693
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 694
    .local v5, "intentSelection":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 695
    const/4 v3, 0x1

    .line 696
    goto :goto_3

    .line 698
    .end local v5    # "intentSelection":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_2

    .line 702
    :cond_2
    :goto_3
    if-nez v3, :cond_3

    .line 703
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 705
    .end local v2    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "selectionFound":Z
    .end local v4    # "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    goto :goto_1

    .line 706
    .end local v0    # "searchAction":Ljava/lang/Object;, "TT;"
    .end local v1    # "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_4
    goto :goto_0

    .line 707
    :cond_5
    :goto_4
    return-void
.end method

.method private static isProtectedAction(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .locals 3
    .param p0, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 710
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 711
    .local v0, "actionsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 713
    .local v1, "filterAction":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    const/4 v2, 0x1

    return v2

    .line 716
    .end local v1    # "filterAction":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 717
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p0, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p1, "r2"    # Landroid/content/pm/ResolveInfo;

    .line 83
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 84
    .local v0, "v1":I
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 86
    .local v1, "v2":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 87
    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 89
    :cond_1
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 90
    iget v1, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 91
    if-eq v0, v1, :cond_3

    .line 92
    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    .line 94
    :cond_3
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_5

    .line 95
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    .line 97
    :cond_5
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 98
    iget v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 100
    if-eq v0, v1, :cond_7

    .line 101
    if-le v0, v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    return v2

    .line 103
    :cond_7
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_9

    .line 104
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    return v2

    .line 106
    :cond_9
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_a

    .line 107
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 109
    :cond_a
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_b

    .line 110
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 112
    :cond_b
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_c

    .line 113
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 115
    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method private removeAllComponentsLocked(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 12
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 949
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 950
    .local v0, "componentSize":I
    const/4 v1, 0x0

    .line 951
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x100

    const/16 v4, 0x20

    if-ge v2, v0, :cond_2

    .line 952
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 953
    .local v5, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v6, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string v7, "activity"

    invoke-static {v6, v5, v7}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 954
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    .line 955
    if-nez v1, :cond_0

    .line 956
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_1

    .line 958
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    :goto_1
    iget-object v3, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .end local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    :cond_2
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    const-string v6, "<NONE>"

    const-string v7, "PackageManager"

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    .line 964
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Activities: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    move-object v8, v6

    goto :goto_2

    :cond_3
    move-object v8, v1

    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_4
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 968
    const/4 v1, 0x0

    .line 969
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_a

    .line 970
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Provider;

    .line 971
    .local v5, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->removeProvider(Landroid/content/pm/PackageParser$Provider;)V

    .line 972
    iget-object v8, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 976
    goto :goto_6

    .line 978
    :cond_5
    iget-object v8, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 979
    .local v8, "names":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    array-length v10, v8

    if-ge v9, v10, :cond_7

    .line 980
    iget-object v10, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v5, :cond_6

    .line 981
    iget-object v10, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v10, :cond_6

    if-eqz p2, :cond_6

    .line 983
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unregistered content provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", className = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", isSyncable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v11, v11, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 989
    .end local v9    # "j":I
    :cond_7
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v9, :cond_9

    if-eqz p2, :cond_9

    .line 990
    if-nez v1, :cond_8

    .line 991
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v9

    goto :goto_5

    .line 993
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 995
    :goto_5
    iget-object v9, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .end local v5    # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v8    # "names":[Ljava/lang/String;
    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 998
    :cond_a
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_c

    if-eqz p2, :cond_c

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Providers: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_b

    move-object v8, v6

    goto :goto_7

    :cond_b
    move-object v8, v1

    :goto_7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_c
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1003
    const/4 v1, 0x0

    .line 1004
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_f

    .line 1005
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 1006
    .local v5, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string/jumbo v9, "receiver"

    invoke-static {v8, v5, v9}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 1007
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_e

    if-eqz p2, :cond_e

    .line 1008
    if-nez v1, :cond_d

    .line 1009
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_9

    .line 1011
    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1013
    :goto_9
    iget-object v8, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .end local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1016
    :cond_f
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_11

    if-eqz p2, :cond_11

    .line 1017
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Receivers: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_10

    move-object v8, v6

    goto :goto_a

    :cond_10
    move-object v8, v1

    :goto_a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_11
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1021
    const/4 v1, 0x0

    .line 1022
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_14

    .line 1023
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Service;

    .line 1024
    .local v5, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    .line 1025
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_13

    if-eqz p2, :cond_13

    .line 1026
    if-nez v1, :cond_12

    .line 1027
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_c

    .line 1029
    :cond_12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1031
    :goto_c
    iget-object v8, v5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    .end local v5    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1034
    :cond_14
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_16

    if-eqz p2, :cond_16

    .line 1035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Services: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_15

    goto :goto_d

    :cond_15
    move-object v6, v1

    :goto_d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_16
    return-void
.end method


# virtual methods
.method addAllComponents(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v0, "newIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/ComponentResolver;->addActivitiesLocked(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Z)V

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addReceiversLocked(Landroid/content/pm/PackageParser$Package;Z)V

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addProvidersLocked(Landroid/content/pm/PackageParser$Package;Z)V

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addServicesLocked(Landroid/content/pm/PackageParser$Package;Z)V

    .line 378
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    sget-object v1, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "setupWizardPackage":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 382
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 383
    .local v3, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    sget-object v4, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 384
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 386
    .local v4, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 387
    .local v5, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    :goto_1
    invoke-direct {p0, v5, v3, v1}, Lcom/android/server/pm/ComponentResolver;->adjustPriority(Ljava/util/List;Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)V

    .line 381
    .end local v3    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v4    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 389
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 378
    .end local v1    # "setupWizardPackage":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method assertProvidersNotDefined(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComponentResolver;->assertProvidersNotDefinedLocked(Landroid/content/pm/PackageParser$Package;)V

    .line 367
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\nActivity Resolver Table:"

    move-object v2, v1

    goto :goto_0

    .line 445
    :cond_0
    const-string v1, "Activity Resolver Table:"

    move-object v2, v1

    :goto_0
    nop

    .line 446
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 444
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 449
    :cond_1
    return-void
.end method

.method dumpContentProviders(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "printedSomething":Z
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "    "

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 478
    .local v2, "p":Landroid/content/pm/PackageParser$Provider;
    if-eqz p3, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 479
    goto :goto_0

    .line 481
    :cond_0
    if-nez v0, :cond_2

    .line 482
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 485
    :cond_1
    const-string v4, "Registered ContentProviders:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x1

    .line 488
    :cond_2
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    .end local v2    # "p":Landroid/content/pm/PackageParser$Provider;
    goto :goto_0

    .line 491
    :cond_3
    const/4 v0, 0x0

    .line 493
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 494
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Provider;

    .line 495
    .local v4, "p":Landroid/content/pm/PackageParser$Provider;
    if-eqz p3, :cond_4

    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 496
    goto :goto_1

    .line 498
    :cond_4
    if-nez v0, :cond_6

    .line 499
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 500
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 502
    :cond_5
    const-string v5, "ContentProvider Authorities:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x1

    .line 505
    :cond_6
    const-string v5, "  ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "]:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v5, :cond_7

    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_7

    .line 508
    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "appInfo":Ljava/lang/String;
    const-string v6, "      applicationInfo="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    .end local v4    # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v5    # "appInfo":Ljava/lang/String;
    :cond_7
    goto :goto_1

    .line 512
    :cond_8
    return-void
.end method

.method dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\nProvider Resolver Table:"

    move-object v2, v1

    goto :goto_0

    .line 453
    :cond_0
    const-string v1, "Provider Resolver Table:"

    move-object v2, v1

    :goto_0
    nop

    .line 454
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 452
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 457
    :cond_1
    return-void
.end method

.method dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\nReceiver Resolver Table:"

    move-object v2, v1

    goto :goto_0

    .line 461
    :cond_0
    const-string v1, "Receiver Resolver Table:"

    move-object v2, v1

    :goto_0
    nop

    .line 462
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 460
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 465
    :cond_1
    return-void
.end method

.method dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 515
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 516
    :cond_0
    const-string v0, "Service permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v0}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 519
    .local v0, "filterIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 521
    .local v1, "info":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    iget-object v2, v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 522
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 523
    .local v3, "permission":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 524
    const-string v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    .end local v1    # "info":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 530
    :cond_2
    return-void
.end method

.method dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\nService Resolver Table:"

    move-object v2, v1

    goto :goto_0

    .line 469
    :cond_0
    const-string v1, "Service Resolver Table:"

    move-object v2, v1

    :goto_0
    nop

    .line 470
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 468
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 473
    :cond_1
    return-void
.end method

.method fixProtectedFilterPriorities()V
    .locals 6

    .line 403
    iget-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    if-nez v0, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    .line 408
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 412
    .local v1, "protectedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 414
    sget-object v2, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "setupWizardPackage":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 421
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 422
    .local v3, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    iget-object v5, v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 431
    goto :goto_1

    .line 439
    :cond_2
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 420
    .end local v3    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 441
    .end local v4    # "i":I
    :cond_3
    return-void

    .line 409
    .end local v1    # "protectedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v2    # "setupWizardPackage":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method getActivity(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Activity;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    monitor-exit v0

    return-object v1

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProvider(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Provider;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    monitor-exit v0

    return-object v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getReceiver(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Activity;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 211
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    monitor-exit v0

    return-object v1

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getService(Landroid/content/ComponentName;)Landroid/content/pm/PackageParser$Service;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->access$500(Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    monitor-exit v0

    return-object v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isActivityDefined(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 358
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 231
    .local p4, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    .line 292
    .local v1, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 293
    monitor-exit v0

    return-object v2

    .line 295
    :cond_0
    iget-object v3, v1, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 296
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_1

    .line 297
    monitor-exit v0

    return-object v2

    .line 299
    :cond_1
    invoke-virtual {v3, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    invoke-static {v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 300
    .end local v1    # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 245
    .local p4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Provider;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryProviders(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;
    .locals 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "metaDataKey"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 256
    .local v0, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_8

    .line 258
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 259
    .local v3, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 260
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_1

    .line 261
    goto :goto_1

    .line 263
    :cond_1
    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 264
    goto :goto_1

    .line 266
    :cond_2
    if-eqz p1, :cond_3

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 267
    invoke-static {v5, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 268
    goto :goto_1

    .line 271
    :cond_3
    if-eqz p2, :cond_4

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_7

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    .line 272
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 273
    goto :goto_1

    .line 275
    :cond_4
    nop

    .line 276
    invoke-virtual {v4, p5}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    .line 275
    invoke-static {v3, p4, v5, p5}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 277
    .local v5, "info":Landroid/content/pm/ProviderInfo;
    if-nez v5, :cond_5

    .line 278
    goto :goto_1

    .line 280
    :cond_5
    if-nez v0, :cond_6

    .line 281
    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v6

    .line 283
    :cond_6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v3    # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "info":Landroid/content/pm/ProviderInfo;
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 285
    .end local v2    # "i":I
    :cond_8
    monitor-exit v1

    .line 286
    return-object v0

    .line 285
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 338
    .local p4, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 351
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Service;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method querySyncProviders(Ljava/util/List;Ljava/util/List;ZI)V
    .locals 6
    .param p3, "safeMode"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;ZI)V"
        }
    .end annotation

    .line 305
    .local p1, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 307
    iget-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 308
    .local v2, "p":Landroid/content/pm/PackageParser$Provider;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 309
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_0

    .line 310
    goto :goto_1

    .line 312
    :cond_0
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-nez v4, :cond_1

    .line 313
    goto :goto_1

    .line 315
    :cond_1
    if-eqz p3, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    .line 317
    goto :goto_1

    .line 319
    :cond_2
    const/4 v4, 0x0

    .line 320
    invoke-virtual {v3, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    invoke-static {v2, v4, v5, p4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 321
    .local v4, "info":Landroid/content/pm/ProviderInfo;
    if-nez v4, :cond_3

    .line 322
    goto :goto_1

    .line 324
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v2    # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "info":Landroid/content/pm/ProviderInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 327
    .end local v1    # "i":I
    :cond_4
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeAllComponents(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->removeAllComponentsLocked(Landroid/content/pm/PackageParser$Package;Z)V

    .line 395
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
