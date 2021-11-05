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
        Lcom/android/server/pm/ComponentResolver$ReceiverIntentResolver;,
        Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;,
        Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;
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

.field private mDeferProtectedFilters:Z

.field private final mLock:Ljava/lang/Object;

.field private mProtectedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

.field private final mProvidersByAuthority:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

.field private final mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    .line 88
    const-string v1, "android.intent.action.SEND"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SENDTO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.VIEW"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ComponentResolver$PuHbZd5KEOMGjkH8xDOhOwfLtC0;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ComponentResolver$PuHbZd5KEOMGjkH8xDOhOwfLtC0;

    sput-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/PackageManagerInternal;Ljava/lang/Object;)V
    .locals 2
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    .line 169
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    .line 173
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ReceiverIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ReceiverIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    .line 177
    new-instance v0, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    .line 181
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    .line 205
    sput-object p2, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 206
    sput-object p1, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    .line 207
    iput-object p3, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    .line 208
    return-void
.end method

.method static synthetic access$1100()Lcom/android/server/pm/UserManagerService;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/util/Pair;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/Pair;
    .param p1, "x1"    # I

    .line 76
    invoke-static {p0, p1}, Lcom/android/server/pm/ComponentResolver;->isFilterStopped(Landroid/util/Pair;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private addActivitiesLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Z)V
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "chatty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;>;Z)V"
        }
    .end annotation

    .line 656
    .local p2, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 657
    .local v0, "activitiesSize":I
    const/4 v1, 0x0

    .line 658
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 659
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 660
    .local v3, "a":Landroid/content/pm/parsing/component/ParsedActivity;
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-static {v4, v3, v5, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 661
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 662
    if-nez v1, :cond_0

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_1

    .line 665
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 667
    :goto_1
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .end local v3    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    .end local v2    # "i":I
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    .line 671
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

    .line 673
    :cond_4
    return-void
.end method

.method private addProvidersLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 15
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 677
    move-object v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 678
    .local v1, "providersSize":I
    const/4 v2, 0x0

    .line 679
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const-string v4, "PackageManager"

    if-ge v3, v1, :cond_9

    .line 680
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 681
    .local v5, "p":Landroid/content/pm/parsing/component/ParsedProvider;
    iget-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->addProvider(Landroid/content/pm/parsing/component/ParsedProvider;)V

    .line 682
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 683
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 686
    .local v6, "names":[Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/pm/parsing/component/ParsedProvider;->setAuthority(Ljava/lang/String;)V

    .line 687
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v10, v6

    if-ge v9, v10, :cond_6

    .line 688
    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->isSyncable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 696
    new-instance v10, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-direct {v10, v5}, Landroid/content/pm/parsing/component/ParsedProvider;-><init>(Landroid/content/pm/parsing/component/ParsedProvider;)V

    move-object v5, v10

    .line 697
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/content/pm/parsing/component/ParsedProvider;->setSyncable(Z)V

    .line 699
    :cond_0
    iget-object v10, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 700
    iget-object v10, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v6, v9

    invoke-virtual {v10, v11, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 702
    aget-object v10, v6, v9

    invoke-virtual {v5, v10}, Landroid/content/pm/parsing/component/ParsedProvider;->setAuthority(Ljava/lang/String;)V

    goto :goto_2

    .line 704
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/pm/parsing/component/ParsedProvider;->setAuthority(Ljava/lang/String;)V

    .line 706
    :goto_2
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v10, :cond_5

    if-eqz p2, :cond_5

    .line 707
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Registered content provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", className = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", isSyncable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->isSyncable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 707
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 712
    :cond_2
    iget-object v10, v0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v6, v9

    .line 713
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 715
    .local v10, "other":Landroid/content/pm/parsing/component/ParsedProvider;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 716
    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    goto :goto_3

    :cond_3
    move-object v11, v8

    .line 718
    .local v11, "component":Landroid/content/ComponentName;
    :goto_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_4
    const-string v12, "?"

    .line 719
    .local v12, "packageName":Ljava/lang/String;
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping provider name "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v6, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " (in package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "): name already used by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 719
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v10    # "other":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v11    # "component":Landroid/content/ComponentName;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 725
    .end local v6    # "names":[Ljava/lang/String;
    .end local v9    # "j":I
    :cond_6
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_8

    if-eqz p2, :cond_8

    .line 726
    if-nez v2, :cond_7

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    goto :goto_6

    .line 729
    :cond_7
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    :goto_6
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .end local v5    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 734
    .end local v3    # "i":I
    :cond_9
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_b

    if-eqz p2, :cond_b

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Providers: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_a

    const-string v5, "<NONE>"

    goto :goto_7

    :cond_a
    move-object v5, v2

    :goto_7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_b
    return-void
.end method

.method private addReceiversLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 741
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 742
    .local v0, "receiversSize":I
    const/4 v1, 0x0

    .line 743
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 744
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 745
    .local v3, "a":Landroid/content/pm/parsing/component/ParsedActivity;
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v5, 0x0

    const-string/jumbo v6, "receiver"

    invoke-static {v4, v3, v6, v5}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    .line 746
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 747
    if-nez v1, :cond_0

    .line 748
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_1

    .line 750
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    :goto_1
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .end local v3    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    .end local v2    # "i":I
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 756
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

    .line 758
    :cond_4
    return-void
.end method

.method private addServicesLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 762
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 763
    .local v0, "servicesSize":I
    const/4 v1, 0x0

    .line 764
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 765
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedService;

    .line 766
    .local v3, "s":Landroid/content/pm/parsing/component/ParsedService;
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->addService(Landroid/content/pm/parsing/component/ParsedService;)V

    .line 767
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 768
    if-nez v1, :cond_0

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_1

    .line 771
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    :goto_1
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .end local v3    # "s":Landroid/content/pm/parsing/component/ParsedService;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    .end local v2    # "i":I
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 777
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

    .line 779
    :cond_4
    return-void
.end method

.method private adjustPriority(Ljava/util/List;Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;Ljava/lang/String;)V
    .locals 16
    .param p2, "activity"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .param p3, "intent"    # Landroid/content/pm/parsing/component/ParsedIntentInfo;
    .param p4, "setupWizardPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 873
    .local p1, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getPriority()I

    move-result v2

    if-gtz v2, :cond_0

    .line 874
    return-void

    .line 877
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 880
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v4

    .line 881
    .local v4, "privilegedApp":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 882
    .local v5, "className":Ljava/lang/String;
    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 890
    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 891
    return-void

    .line 894
    :cond_1
    if-nez p1, :cond_6

    .line 896
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/ComponentResolver;->isProtectedAction(Landroid/content/pm/parsing/component/ParsedIntentInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 897
    iget-boolean v7, v0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    if-eqz v7, :cond_3

    .line 905
    iget-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-nez v6, :cond_2

    .line 906
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 908
    :cond_2
    iget-object v6, v0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    return-void

    .line 921
    :cond_3
    move-object/from16 v7, p4

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 930
    return-void

    .line 938
    :cond_4
    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 939
    return-void

    .line 943
    :cond_5
    move-object/from16 v7, p4

    return-void

    .line 948
    :cond_6
    move-object/from16 v7, p4

    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/ComponentResolver;->findMatchingActivity(Ljava/util/List;Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/component/ParsedActivity;

    move-result-object v8

    .line 949
    .local v8, "foundActivity":Landroid/content/pm/parsing/component/ParsedActivity;
    if-nez v8, :cond_7

    .line 957
    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 958
    return-void

    .line 964
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    .line 965
    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 968
    .local v9, "intentListCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 969
    .local v10, "actionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v10, :cond_8

    .line 970
    sget-object v11, Lcom/android/server/pm/-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk;

    invoke-static {v9, v11, v10}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 971
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_8

    .line 979
    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 980
    return-void

    .line 985
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 986
    .local v11, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v11, :cond_9

    .line 987
    sget-object v12, Lcom/android/server/pm/-$$Lambda$DpkuTFpeWPmvN7iGgFrn8VkMVd4;->INSTANCE:Lcom/android/server/pm/-$$Lambda$DpkuTFpeWPmvN7iGgFrn8VkMVd4;

    invoke-static {v9, v12, v11}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 989
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_9

    .line 997
    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 998
    return-void

    .line 1003
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->schemesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1004
    .local v12, "schemesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v12, :cond_a

    .line 1005
    sget-object v13, Lcom/android/server/pm/-$$Lambda$bpFcEVMboFCYFnC3BHdOPCQV19Y;->INSTANCE:Lcom/android/server/pm/-$$Lambda$bpFcEVMboFCYFnC3BHdOPCQV19Y;

    invoke-static {v9, v13, v12}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 1006
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    .line 1014
    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 1015
    return-void

    .line 1020
    :cond_a
    nop

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1022
    .local v13, "authoritiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v13, :cond_b

    .line 1023
    sget-object v14, Lcom/android/server/pm/-$$Lambda$mI6eiz-cSKp3gDx4_MNMYKTJXG4;->INSTANCE:Lcom/android/server/pm/-$$Lambda$mI6eiz-cSKp3gDx4_MNMYKTJXG4;

    invoke-static {v9, v14, v13}, Lcom/android/server/pm/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 1025
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_b

    .line 1033
    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 1034
    return-void

    .line 1039
    :cond_b
    const/4 v6, 0x0

    .line 1040
    .local v6, "cappedPriority":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_c

    .line 1041
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getPriority()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1040
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 1043
    .end local v14    # "i":I
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getPriority()I

    move-result v14

    if-le v14, v6, :cond_d

    .line 1051
    invoke-virtual {v1, v6}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 1052
    return-void

    .line 1055
    :cond_d
    return-void
.end method

.method private assertProvidersNotDefinedLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1156
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 1158
    .local v0, "providersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1159
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1160
    .local v2, "p":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1161
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1162
    .local v3, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 1163
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1164
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1166
    .local v5, "other":Landroid/content/pm/parsing/component/ParsedProvider;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1167
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_0
    const-string v6, "?"

    .line 1169
    .local v6, "otherPackageName":Ljava/lang/String;
    :goto_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    .line 1170
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

    .line 1173
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") is already used by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1162
    .end local v5    # "other":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v6    # "otherPackageName":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1158
    .end local v2    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1180
    :cond_4
    return-void
.end method

.method private static findMatchingActivity(Ljava/util/List;Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/component/ParsedActivity;
    .locals 4
    .param p1, "activityInfo"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ")",
            "Landroid/content/pm/parsing/component/ParsedActivity;"
        }
    .end annotation

    .line 838
    .local p0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 839
    .local v1, "sysActivity":Landroid/content/pm/parsing/component/ParsedActivity;
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    return-object v1

    .line 842
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    return-object v1

    .line 845
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 846
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 847
    return-object v1

    .line 849
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 850
    return-object v1

    .line 853
    .end local v1    # "sysActivity":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_3
    goto :goto_0

    .line 854
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            "Ljava/util/Iterator<",
            "TT;>;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 788
    .local p0, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .local p1, "generator":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/pm/parsing/component/ParsedIntentInfo;Ljava/util/Iterator<TT;>;>;"
    .local p2, "searchIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 790
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 791
    goto :goto_4

    .line 794
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 797
    .local v0, "searchAction":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 798
    .local v1, "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 800
    .local v2, "intentInfo":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    const/4 v3, 0x0

    .line 804
    .local v3, "selectionFound":Z
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Iterator;

    .line 805
    .local v4, "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 806
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 807
    .local v5, "intentSelection":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 808
    const/4 v3, 0x1

    .line 809
    goto :goto_3

    .line 811
    .end local v5    # "intentSelection":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_2

    .line 815
    :cond_2
    :goto_3
    if-nez v3, :cond_3

    .line 816
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 818
    .end local v2    # "intentInfo":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    .end local v3    # "selectionFound":Z
    .end local v4    # "intentSelectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    goto :goto_1

    .line 819
    .end local v0    # "searchAction":Ljava/lang/Object;, "TT;"
    .end local v1    # "intentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    :cond_4
    goto :goto_0

    .line 820
    :cond_5
    :goto_4
    return-void
.end method

.method private static isFilterStopped(Landroid/util/Pair;I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 2162
    .local p0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<+Landroid/content/pm/parsing/component/ParsedComponent;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2163
    return v1

    .line 2166
    :cond_0
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/parsing/component/ParsedComponent;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 2167
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2168
    return v2

    .line 2171
    :cond_1
    sget-object v3, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/parsing/component/ParsedComponent;

    .line 2172
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2171
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 2173
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2

    .line 2174
    return v2

    .line 2180
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method private static isProtectedAction(Landroid/content/pm/parsing/component/ParsedIntentInfo;)Z
    .locals 3
    .param p0, "filter"    # Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 823
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 824
    .local v0, "actionsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 826
    .local v1, "filterAction":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    const/4 v2, 0x1

    return v2

    .line 829
    .end local v1    # "filterAction":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 830
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p0, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p1, "r2"    # Landroid/content/pm/ResolveInfo;

    .line 95
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 96
    .local v0, "v1":I
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 98
    .local v1, "v2":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 99
    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 101
    :cond_1
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 102
    iget v1, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 103
    if-eq v0, v1, :cond_3

    .line 104
    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    .line 106
    :cond_3
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_5

    .line 107
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    .line 109
    :cond_5
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 110
    iget v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 112
    if-eq v0, v1, :cond_7

    .line 113
    if-le v0, v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    return v2

    .line 115
    :cond_7
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_9

    .line 116
    iget-boolean v4, p0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    return v2

    .line 118
    :cond_9
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_a

    .line 119
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 121
    :cond_a
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_b

    .line 122
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 124
    :cond_b
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_c

    .line 125
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 127
    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method private removeAllComponentsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 1063
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 1064
    .local v0, "componentSize":I
    const/4 v1, 0x0

    .line 1065
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x100

    const/16 v4, 0x20

    if-ge v2, v0, :cond_2

    .line 1066
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 1067
    .local v5, "a":Landroid/content/pm/parsing/component/ParsedActivity;
    iget-object v6, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string v7, "activity"

    invoke-static {v6, v5, v7}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$800(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;)V

    .line 1068
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    .line 1069
    if-nez v1, :cond_0

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_1

    .line 1072
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    :goto_1
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    .end local v5    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1077
    :cond_2
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    const-string v6, "<NONE>"

    const-string v7, "PackageManager"

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    .line 1078
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

    .line 1081
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 1082
    const/4 v1, 0x0

    .line 1083
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_a

    .line 1084
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1085
    .local v5, "p":Landroid/content/pm/parsing/component/ParsedProvider;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->removeProvider(Landroid/content/pm/parsing/component/ParsedProvider;)V

    .line 1086
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1090
    goto :goto_6

    .line 1092
    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1093
    .local v8, "names":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    array-length v10, v8

    if-ge v9, v10, :cond_7

    .line 1094
    iget-object v10, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v5, :cond_6

    .line 1095
    iget-object v10, p0, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v10, :cond_6

    if-eqz p2, :cond_6

    .line 1097
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unregistered content provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", className = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", isSyncable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->isSyncable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1097
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1103
    .end local v9    # "j":I
    :cond_7
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v9, :cond_9

    if-eqz p2, :cond_9

    .line 1104
    if-nez v1, :cond_8

    .line 1105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v9

    goto :goto_5

    .line 1107
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1109
    :goto_5
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .end local v5    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v8    # "names":[Ljava/lang/String;
    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1112
    :cond_a
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_c

    if-eqz p2, :cond_c

    .line 1113
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

    .line 1116
    :cond_c
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 1117
    const/4 v1, 0x0

    .line 1118
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_f

    .line 1119
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 1120
    .local v5, "a":Landroid/content/pm/parsing/component/ParsedActivity;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    const-string/jumbo v9, "receiver"

    invoke-static {v8, v5, v9}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$800(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/parsing/component/ParsedActivity;Ljava/lang/String;)V

    .line 1121
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_e

    if-eqz p2, :cond_e

    .line 1122
    if-nez v1, :cond_d

    .line 1123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_9

    .line 1125
    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1127
    :goto_9
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    .end local v5    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1130
    :cond_f
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v5, :cond_11

    if-eqz p2, :cond_11

    .line 1131
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

    .line 1134
    :cond_11
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 1135
    const/4 v1, 0x0

    .line 1136
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_14

    .line 1137
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedService;

    .line 1138
    .local v5, "s":Landroid/content/pm/parsing/component/ParsedService;
    iget-object v8, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v8, v5}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->removeService(Landroid/content/pm/parsing/component/ParsedService;)V

    .line 1139
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_13

    if-eqz p2, :cond_13

    .line 1140
    if-nez v1, :cond_12

    .line 1141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_c

    .line 1143
    :cond_12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    :goto_c
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .end local v5    # "s":Landroid/content/pm/parsing/component/ParsedService;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1148
    :cond_14
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_16

    if-eqz p2, :cond_16

    .line 1149
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

    .line 1151
    :cond_16
    return-void
.end method


# virtual methods
.method addAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v0, "newIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/ComponentResolver;->addActivitiesLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Z)V

    .line 475
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addReceiversLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addProvidersLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->addServicesLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 478
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    sget-object v1, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    .line 481
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 484
    .local v1, "setupWizardPackage":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 485
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 486
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    sget-object v4, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 487
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 489
    .local v4, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v6, v5

    goto :goto_1

    :cond_0
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 491
    .local v6, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    .line 492
    .local v5, "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    :cond_1
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/content/pm/parsing/component/ParsedActivity;

    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-direct {p0, v5, v7, v8, v1}, Lcom/android/server/pm/ComponentResolver;->adjustPriority(Ljava/util/List;Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;Ljava/lang/String;)V

    .line 484
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .end local v4    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "systemActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    .end local v6    # "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 494
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 478
    .end local v1    # "setupWizardPackage":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method assertProvidersNotDefined(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComponentResolver;->assertProvidersNotDefinedLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 467
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public componentExists(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 247
    .local v1, "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 248
    monitor-exit v0

    return v2

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedMainComponent;

    move-object v1, v3

    .line 251
    if-eqz v1, :cond_1

    .line 252
    monitor-exit v0

    return v2

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-static {v3}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->access$600(Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedMainComponent;

    move-object v1, v3

    .line 255
    if-eqz v1, :cond_2

    .line 256
    monitor-exit v0

    return v2

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$500(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 259
    .end local v1    # "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
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

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\nActivity Resolver Table:"

    move-object v2, v1

    goto :goto_0

    .line 558
    :cond_0
    const-string v1, "Activity Resolver Table:"

    move-object v2, v1

    :goto_0
    nop

    .line 559
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 557
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 562
    :cond_1
    return-void
.end method

.method dumpContentProviders(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "printedSomething":Z
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$500(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

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

    check-cast v2, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 591
    .local v2, "p":Landroid/content/pm/parsing/component/ParsedProvider;
    if-eqz p3, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 592
    goto :goto_0

    .line 594
    :cond_0
    if-nez v0, :cond_2

    .line 595
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 596
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 598
    :cond_1
    const-string v4, "Registered ContentProviders:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x1

    .line 601
    :cond_2
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProvider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    .end local v2    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    goto :goto_0

    .line 607
    :cond_3
    const/4 v0, 0x0

    .line 609
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

    .line 610
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProvider;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 611
    .local v4, "p":Landroid/content/pm/parsing/component/ParsedProvider;
    if-eqz p3, :cond_4

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 612
    goto :goto_1

    .line 614
    :cond_4
    if-nez v0, :cond_6

    .line 615
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 616
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 618
    :cond_5
    const-string v5, "ContentProvider Authorities:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x1

    .line 621
    :cond_6
    const-string v5, "  ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "]:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProvider;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    sget-object v5, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 626
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v5, :cond_7

    .line 628
    const-string v6, "      applicationInfo="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 630
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProvider;>;"
    .end local v4    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7
    goto :goto_1

    .line 631
    :cond_8
    return-void
.end method

.method dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\nProvider Resolver Table:"

    move-object v2, v1

    goto :goto_0

    .line 566
    :cond_0
    const-string v1, "Provider Resolver Table:"

    move-object v2, v1

    :goto_0
    nop

    .line 567
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 565
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 570
    :cond_1
    return-void
.end method

.method dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\nReceiver Resolver Table:"

    move-object v2, v1

    goto :goto_0

    .line 574
    :cond_0
    const-string v1, "Receiver Resolver Table:"

    move-object v2, v1

    :goto_0
    nop

    .line 575
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 573
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 578
    :cond_1
    return-void
.end method

.method dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 634
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 635
    :cond_0
    const-string v0, "Service permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    .line 638
    invoke-virtual {v0}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 639
    .local v0, "filterIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedService;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 640
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 641
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedService;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/parsing/component/ParsedService;

    .line 643
    .local v2, "service":Landroid/content/pm/parsing/component/ParsedService;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "permission":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 645
    const-string v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedService;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .end local v2    # "service":Landroid/content/pm/parsing/component/ParsedService;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 651
    :cond_2
    return-void
.end method

.method dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\nService Resolver Table:"

    move-object v2, v1

    goto :goto_0

    .line 582
    :cond_0
    const-string v1, "Service Resolver Table:"

    move-object v2, v1

    :goto_0
    nop

    .line 583
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    .line 581
    const-string v3, "  "

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {p2, v7}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    .line 586
    :cond_1
    return-void
.end method

.method fixProtectedFilterPriorities()V
    .locals 10

    .line 508
    iget-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    if-nez v0, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ComponentResolver;->mDeferProtectedFilters:Z

    .line 513
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 518
    .local v1, "protectedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 521
    sget-object v2, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 522
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 529
    .local v2, "setupWizardPackage":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 530
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 531
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 532
    .local v5, "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 533
    .local v6, "filter":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "className":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 544
    goto :goto_1

    .line 552
    :cond_2
    invoke-virtual {v6, v0}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->setPriority(I)V

    .line 529
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .end local v5    # "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    .end local v6    # "filter":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 554
    .end local v4    # "i":I
    :cond_3
    return-void

    .line 514
    .end local v1    # "protectedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    .end local v2    # "setupWizardPackage":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method public getActivity(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedActivity;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedActivity;

    monitor-exit v0

    return-object v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProvider(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedProvider;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$500(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedProvider;

    monitor-exit v0

    return-object v1

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getReceiver(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedActivity;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 230
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedActivity;

    monitor-exit v0

    return-object v1

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getService(Landroid/content/ComponentName;)Landroid/content/pm/parsing/component/ParsedService;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->access$600(Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedService;

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

.method isActivityDefined(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 458
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->access$400(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

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

    .line 460
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

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 267
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
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 273
    .local p4, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
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

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 17
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 356
    move-object/from16 v1, p0

    move/from16 v9, p3

    iget-object v10, v1, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 357
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v11, p1

    :try_start_1
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 358
    .local v0, "p":Landroid/content/pm/parsing/component/ParsedProvider;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 359
    monitor-exit v10

    return-object v2

    .line 361
    :cond_0
    sget-object v3, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 362
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    move-object v12, v3

    .line 363
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v12, :cond_1

    .line 364
    monitor-exit v10

    return-object v2

    .line 366
    :cond_1
    sget-object v3, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    move-object v13, v3

    .line 367
    .local v13, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v13, :cond_2

    .line 368
    monitor-exit v10

    return-object v2

    .line 370
    :cond_2
    invoke-virtual {v12, v9}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v3

    .line 371
    .local v14, "state":Landroid/content/pm/PackageUserState;
    move/from16 v15, p2

    :try_start_2
    invoke-static {v13, v15, v14, v9, v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object/from16 v16, v3

    .line 373
    .local v16, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v16, :cond_3

    .line 374
    monitor-exit v10

    return-object v2

    .line 376
    :cond_3
    move-object v2, v13

    move-object v3, v0

    move/from16 v4, p2

    move-object v5, v14

    move-object/from16 v6, v16

    move/from16 v7, p3

    move-object v8, v12

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    monitor-exit v10

    return-object v2

    .line 377
    .end local v0    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v14    # "state":Landroid/content/pm/PackageUserState;
    .end local v16    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    :goto_0
    move/from16 v15, p2

    :goto_1
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
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

    .line 281
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 283
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
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 289
    .local p4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedProvider;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
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

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryProviders(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;
    .locals 20
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

    .line 297
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v15, p5

    sget-object v0, Lcom/android/server/pm/ComponentResolver;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_0
    const/4 v4, 0x0

    .line 301
    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v5, 0x0

    .line 302
    .local v5, "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    iget-object v14, v1, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 303
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v0}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$500(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v17, v4

    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local v0, "i":I
    .local v17, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :goto_0
    if-ltz v0, :cond_d

    .line 304
    :try_start_1
    iget-object v4, v1, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v4}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->access$500(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 305
    .local v11, "p":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 306
    move/from16 v12, p3

    goto :goto_1

    .line 309
    :cond_1
    sget-object v4, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 311
    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    move-object v13, v4

    .line 312
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_2

    .line 313
    move/from16 v12, p3

    goto :goto_1

    .line 316
    :cond_2
    sget-object v4, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v18, v4

    .line 317
    .local v18, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v18, :cond_3

    .line 318
    move/from16 v12, p3

    goto :goto_1

    .line 321
    :cond_3
    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v12, p3

    :try_start_3
    invoke-static {v4, v12}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 323
    goto :goto_1

    .line 321
    :cond_4
    move/from16 v12, p3

    goto :goto_1

    .line 350
    .end local v0    # "i":I
    .end local v11    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_0
    move-exception v0

    move/from16 v12, p3

    goto/16 :goto_6

    .line 321
    .restart local v0    # "i":I
    .restart local v11    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .restart local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_5
    move/from16 v12, p3

    .line 326
    :cond_6
    if-eqz v3, :cond_8

    .line 327
    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 303
    .end local v11    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7
    :goto_1
    move-object v6, v14

    goto :goto_5

    .line 330
    .restart local v11    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .restart local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_8
    if-nez v5, :cond_9

    .line 331
    new-instance v4, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;

    invoke-direct {v4}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v19, v4

    .end local v5    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .local v4, "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    goto :goto_2

    .line 330
    .end local v4    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .restart local v5    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    :cond_9
    move-object/from16 v19, v5

    .line 333
    .end local v5    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .local v19, "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    :goto_2
    :try_start_4
    invoke-virtual {v13, v15}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v7

    .line 334
    .local v7, "state":Landroid/content/pm/PackageUserState;
    nop

    .line 335
    move-object/from16 v4, v19

    move-object/from16 v5, v18

    move/from16 v6, p4

    move/from16 v8, p5

    move-object v9, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 336
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_a

    .line 337
    move-object v6, v14

    goto :goto_3

    .line 340
    :cond_a
    move-object/from16 v10, v18

    move/from16 v12, p4

    move-object v5, v13

    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    move-object v13, v7

    move-object v6, v14

    move-object v14, v4

    move/from16 v15, p5

    move-object/from16 v16, v5

    :try_start_5
    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 342
    .local v8, "info":Landroid/content/pm/ProviderInfo;
    if-nez v8, :cond_b

    .line 343
    nop

    .line 303
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "state":Landroid/content/pm/PackageUserState;
    .end local v8    # "info":Landroid/content/pm/ProviderInfo;
    .end local v11    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_3
    move-object/from16 v5, v19

    goto :goto_5

    .line 345
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "state":Landroid/content/pm/PackageUserState;
    .restart local v8    # "info":Landroid/content/pm/ProviderInfo;
    .restart local v11    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .restart local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_b
    if-nez v17, :cond_c

    .line 346
    new-instance v9, Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v17    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local v9, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_4

    .line 345
    .end local v9    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v17    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_c
    move-object/from16 v9, v17

    .line 348
    .end local v17    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v9    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :goto_4
    :try_start_6
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v17, v9

    move-object/from16 v5, v19

    .line 303
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "state":Landroid/content/pm/PackageUserState;
    .end local v8    # "info":Landroid/content/pm/ProviderInfo;
    .end local v9    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v11    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v19    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .local v5, "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .restart local v17    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :goto_5
    add-int/lit8 v0, v0, -0x1

    move/from16 v15, p5

    move-object v14, v6

    goto/16 :goto_0

    .line 350
    .end local v0    # "i":I
    .end local v5    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .end local v17    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v9    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v19    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    :catchall_1
    move-exception v0

    move-object v4, v9

    move-object/from16 v5, v19

    goto :goto_8

    .end local v9    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v17    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v6, v14

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    goto :goto_8

    .end local v19    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .restart local v5    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    :catchall_4
    move-exception v0

    :goto_6
    move-object v6, v14

    goto :goto_7

    .line 303
    .restart local v0    # "i":I
    :cond_d
    move-object v6, v14

    .line 350
    .end local v0    # "i":I
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 351
    return-object v17

    .line 350
    :catchall_5
    move-exception v0

    :goto_7
    move-object/from16 v4, v17

    goto :goto_8

    .end local v17    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :catchall_6
    move-exception v0

    move-object v6, v14

    :goto_8
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_8
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

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 430
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
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 436
    .local p4, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
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

    .line 438
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

    .line 443
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 445
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
            "Landroid/content/pm/parsing/component/ParsedService;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 451
    .local p4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedService;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
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

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method querySyncProviders(Ljava/util/List;Ljava/util/List;ZI)V
    .locals 19
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

    .line 382
    .local p1, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    :try_start_0
    iget-object v3, v1, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_7

    .line 385
    iget-object v4, v1, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 386
    .local v6, "p":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedProvider;->isSyncable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 387
    goto :goto_1

    .line 390
    :cond_0
    sget-object v4, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 392
    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 393
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_1

    .line 394
    goto :goto_1

    .line 397
    :cond_1
    sget-object v5, Lcom/android/server/pm/ComponentResolver;->sPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    move-object/from16 v18, v5

    .line 398
    .local v18, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v18, :cond_2

    .line 399
    goto :goto_1

    .line 402
    :cond_2
    if-eqz p3, :cond_3

    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-nez v5, :cond_3

    .line 403
    nop

    .line 384
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1
    move-object/from16 v8, p1

    move-object/from16 v7, p2

    goto :goto_2

    .line 405
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .restart local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_3
    if-nez v0, :cond_4

    .line 406
    new-instance v5, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;

    invoke-direct {v5}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;-><init>()V

    move-object v0, v5

    .line 408
    :cond_4
    move/from16 v11, p4

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v15

    .line 409
    .local v15, "state":Landroid/content/pm/PackageUserState;
    const/4 v14, 0x0

    .line 410
    move-object v12, v0

    move-object/from16 v13, v18

    move/from16 v16, p4

    move-object/from16 v17, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object v12, v5

    .line 411
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v12, :cond_5

    .line 412
    move-object/from16 v8, p1

    move-object/from16 v7, p2

    goto :goto_2

    .line 415
    :cond_5
    const/4 v7, 0x0

    move-object/from16 v5, v18

    move-object v8, v15

    move-object v9, v12

    move/from16 v10, p4

    move-object v11, v4

    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 417
    .local v5, "info":Landroid/content/pm/ProviderInfo;
    if-nez v5, :cond_6

    .line 418
    move-object/from16 v8, p1

    move-object/from16 v7, p2

    goto :goto_2

    .line 420
    :cond_6
    iget-object v7, v1, Lcom/android/server/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v8, p1

    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    move-object/from16 v7, p2

    :try_start_2
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "info":Landroid/content/pm/ProviderInfo;
    .end local v6    # "p":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "state":Landroid/content/pm/PackageUserState;
    .end local v18    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 423
    .end local v0    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 384
    .restart local v0    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .restart local v3    # "i":I
    :cond_7
    move-object/from16 v8, p1

    move-object/from16 v7, p2

    .line 423
    .end local v0    # "appInfoGenerator":Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    .end local v3    # "i":I
    monitor-exit v2

    .line 424
    return-void

    .line 423
    :catchall_1
    move-exception v0

    move-object/from16 v8, p1

    :goto_3
    move-object/from16 v7, p2

    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method removeAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 498
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver;->removeAllComponentsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 500
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateMimeGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;

    .line 2227
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver;->mActivities:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->updateMimeGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2228
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mProviders:Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->updateMimeGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2229
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mReceivers:Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->updateMimeGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2230
    iget-object v1, p0, Lcom/android/server/pm/ComponentResolver;->mServices:Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ComponentResolver$ServiceIntentResolver;->updateMimeGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2232
    return v0
.end method
