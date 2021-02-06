.class public Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field private mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-string v0, "com.android.googlesearch/.GoogleSearch"

    sput-object v0, Lcom/android/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 76
    const-string v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    sput-object v0, Lcom/android/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 353
    new-instance v0, Lcom/android/server/search/Searchables$1;

    invoke-direct {v0}, Lcom/android/server/search/Searchables$1;-><init>()V

    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 66
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 72
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 89
    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 90
    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 91
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    .line 92
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/ResolveInfo;

    .line 53
    invoke-static {p0}, Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method private createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 478
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_0

    .line 479
    const/4 v0, 0x0

    return-object v0

    .line 481
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 482
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 483
    .local v1, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 484
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 485
    .local v3, "callingUserId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 486
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 487
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 486
    invoke-virtual {v1, v2, v6, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 488
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 491
    :cond_2
    return-object v0
.end method

.method private createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 462
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    if-nez p1, :cond_0

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 467
    .local v1, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 468
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 469
    .local v3, "callingUserId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchableInfo;

    .line 470
    .local v5, "info":Landroid/app/SearchableInfo;
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 471
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    .end local v5    # "info":Landroid/app/SearchableInfo;
    :cond_1
    goto :goto_0

    .line 474
    :cond_2
    return-object v0
.end method

.method private findGlobalSearchActivities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10010000

    invoke-direct {p0, v0, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 309
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    sget-object v2, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 314
    :cond_0
    return-object v1
.end method

.method private findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 323
    .local p1, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "searchProviderSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 327
    .local v1, "globalSearchComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    return-object v1

    .line 332
    .end local v1    # "globalSearchComponent":Landroid/content/ComponentName;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "globalSearchActivity"    # Landroid/content/ComponentName;

    .line 410
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 411
    return-object v0

    .line 413
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/high16 v2, 0x10000

    .line 416
    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 418
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 421
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 423
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    const-string v3, "Searchables"

    const-string v4, "No web search activity found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v0
.end method

.method private getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 390
    .local p1, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 392
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 395
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    const-string v0, "Searchables"

    const-string v1, "No global search activity found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGlobalSearchProviderSetting()Ljava/lang/String;
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "search_global_search_activity"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInstalled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "globalSearch"    # Landroid/content/ComponentName;

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 344
    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    const/4 v2, 0x1

    return v2

    .line 350
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/pm/ResolveInfo;

    .line 382
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x800000

    or-int/2addr v3, p2

    iget v4, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 431
    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 436
    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 437
    :goto_0
    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 523
    const-string v0, "Searchable authorities:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    monitor-enter p0

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    .line 527
    .local v1, "info":Landroid/app/SearchableInfo;
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    .end local v1    # "info":Landroid/app/SearchableInfo;
    goto :goto_0

    .line 530
    :cond_0
    monitor-exit p0

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 458
    .end local p0    # "this":Lcom/android/server/search/Searchables;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 4

    monitor-enter p0

    .line 498
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 499
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 500
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 501
    .local v2, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 502
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 505
    .end local p0    # "this":Lcom/android/server/search/Searchables;
    :cond_0
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 497
    .end local v0    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "callingUid":I
    .end local v2    # "callingUserId":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 11
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    .line 126
    .local v0, "result":Landroid/app/SearchableInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 127
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 128
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 129
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 129
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    monitor-exit p0

    return-object v0

    .line 133
    :cond_0
    monitor-exit p0

    return-object v1

    .line 135
    .end local v2    # "pm":Landroid/content/pm/PackageManagerInternal;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    const/4 v2, 0x0

    .line 144
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x80

    iget v5, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 148
    nop

    .line 149
    const/4 v3, 0x0

    .line 152
    .local v3, "refActivityName":Ljava/lang/String;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 153
    .local v4, "md":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 154
    const-string v5, "android.app.default_searchable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    :cond_2
    if-nez v3, :cond_3

    .line 158
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 159
    if-eqz v4, :cond_3

    .line 160
    const-string v5, "android.app.default_searchable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    :cond_3
    if-eqz v3, :cond_8

    .line 168
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 169
    return-object v1

    .line 171
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_5

    .line 174
    new-instance v6, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "referredActivity":Landroid/content/ComponentName;
    goto :goto_0

    .line 176
    .end local v6    # "referredActivity":Landroid/content/ComponentName;
    :cond_5
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .restart local v6    # "referredActivity":Landroid/content/ComponentName;
    :goto_0
    monitor-enter p0

    .line 182
    :try_start_2
    iget-object v7, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SearchableInfo;

    move-object v0, v7

    .line 183
    if-eqz v0, :cond_6

    .line 184
    iget-object v7, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    if-eqz v0, :cond_8

    .line 188
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    .line 189
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 190
    .local v7, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v9

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 190
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 192
    return-object v0

    .line 194
    :cond_7
    return-object v1

    .line 186
    .end local v7    # "pm":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 199
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "referredActivity":Landroid/content/ComponentName;
    :cond_8
    return-object v1

    .line 145
    .end local v3    # "refActivityName":Ljava/lang/String;
    .end local v4    # "md":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 146
    .local v3, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting activity info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Searchables"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v1

    .line 135
    .end local v0    # "result":Landroid/app/SearchableInfo;
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 451
    .end local p0    # "this":Lcom/android/server/search/Searchables;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 444
    .end local p0    # "this":Lcom/android/server/search/Searchables;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .locals 4

    monitor-enter p0

    .line 512
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 513
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 514
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 515
    .local v2, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 516
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 519
    .end local p0    # "this":Lcom/android/server/search/Searchables;
    :cond_0
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 511
    .end local v0    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "callingUid":I
    .end local v2    # "callingUserId":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSearchableList()V
    .locals 19

    .line 225
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 227
    .local v2, "newSearchablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/app/SearchableInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 229
    .local v3, "newSearchablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 234
    .local v4, "newSearchablesInGlobalSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEARCH"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 236
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 238
    .local v6, "ident":J
    const v0, 0x10000080

    :try_start_0
    invoke-direct {v1, v5, v0}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 242
    .local v8, "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.WEB_SEARCH"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v9, "webSearchIntent":Landroid/content/Intent;
    invoke-direct {v1, v9, v0}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 247
    .local v10, "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_1

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v5

    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 248
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez v8, :cond_2

    move v11, v0

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    .line 249
    .local v11, "search_count":I
    :goto_1
    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 250
    .local v0, "web_search_count":I
    :goto_2
    add-int v12, v11, v0

    .line 251
    .local v12, "count":I
    const/4 v13, 0x0

    .local v13, "ii":I
    :goto_3
    if-ge v13, v12, :cond_6

    .line 253
    if-ge v13, v11, :cond_4

    .line 254
    :try_start_1
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 291
    .end local v0    # "web_search_count":I
    .end local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "webSearchIntent":Landroid/content/Intent;
    .end local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "search_count":I
    .end local v12    # "count":I
    .end local v13    # "ii":I
    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_6

    .line 255
    .restart local v0    # "web_search_count":I
    .restart local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "webSearchIntent":Landroid/content/Intent;
    .restart local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "search_count":I
    .restart local v12    # "count":I
    .restart local v13    # "ii":I
    :cond_4
    sub-int v14, v13, v11

    :try_start_2
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    :goto_4
    nop

    .line 256
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 258
    .local v15, "ai":Landroid/content/pm/ActivityInfo;
    move/from16 v16, v0

    .end local v0    # "web_search_count":I
    .local v16, "web_search_count":I
    new-instance v0, Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v17, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    :try_start_3
    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v8

    .end local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v18, "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 259
    iget-object v0, v1, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    iget v5, v1, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-static {v0, v15, v5}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 261
    .local v0, "searchable":Landroid/app/SearchableInfo;
    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 265
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v0    # "searchable":Landroid/app/SearchableInfo;
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    .end local v15    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    goto :goto_3

    .end local v16    # "web_search_count":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "web_search_count":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    move/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v8

    .line 272
    .end local v0    # "web_search_count":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "search_count":I
    .end local v12    # "count":I
    .end local v13    # "ii":I
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v18    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 275
    .local v5, "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v1, v5}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v8, v0

    .line 279
    .local v8, "newGlobalSearchActivity":Landroid/content/ComponentName;
    invoke-direct {v1, v8}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v11, v0

    .line 282
    .local v11, "newWebSearchActivity":Landroid/content/ComponentName;
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 283
    :try_start_4
    iput-object v2, v1, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 284
    iput-object v3, v1, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 285
    iput-object v4, v1, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 286
    iput-object v5, v1, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    .line 287
    iput-object v8, v1, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 288
    iput-object v11, v1, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 289
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    .end local v5    # "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "newGlobalSearchActivity":Landroid/content/ComponentName;
    .end local v9    # "webSearchIntent":Landroid/content/Intent;
    .end local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "newWebSearchActivity":Landroid/content/ComponentName;
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    nop

    .line 293
    return-void

    .line 289
    .restart local v5    # "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "newGlobalSearchActivity":Landroid/content/ComponentName;
    .restart local v9    # "webSearchIntent":Landroid/content/Intent;
    .restart local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "newWebSearchActivity":Landroid/content/ComponentName;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v2    # "newSearchablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/app/SearchableInfo;>;"
    .end local v3    # "newSearchablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    .end local v4    # "newSearchablesInGlobalSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    .end local v6    # "ident":J
    .end local v17    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/search/Searchables;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 291
    .end local v5    # "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "newGlobalSearchActivity":Landroid/content/ComponentName;
    .end local v9    # "webSearchIntent":Landroid/content/Intent;
    .end local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "newWebSearchActivity":Landroid/content/ComponentName;
    .end local v18    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "newSearchablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/app/SearchableInfo;>;"
    .restart local v3    # "newSearchablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    .restart local v4    # "newSearchablesInGlobalSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    .restart local v6    # "ident":J
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/search/Searchables;
    :catchall_2
    move-exception v0

    goto :goto_6

    .end local v17    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    :goto_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    throw v0
.end method
