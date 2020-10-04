.class public Lcom/android/server/textservices/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

.field private final mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-class v0, Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 334
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 335
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 336
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 337
    new-instance v0, Lcom/android/server/textservices/LazyIntToIntMap;

    new-instance v1, Lcom/android/server/textservices/-$$Lambda$TextServicesManagerService$otJ1a5fe5mYJvLrIEr3o1Ia1kSo;

    invoke-direct {v1, p0}, Lcom/android/server/textservices/-$$Lambda$TextServicesManagerService$otJ1a5fe5mYJvLrIEr3o1Ia1kSo;-><init>(Lcom/android/server/textservices/TextServicesManagerService;)V

    invoke-direct {v0, v1}, Lcom/android/server/textservices/LazyIntToIntMap;-><init>(Ljava/util/function/IntUnaryOperator;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    .line 351
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    .line 352
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 353
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;
    .param p1, "x1"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "x2"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;

    .line 78
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/textservices/TextServicesManagerService;I)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;
    .param p1, "x1"    # I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 426
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 427
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 17
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 445
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v1, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-static/range {p2 .. p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    .line 447
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 448
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 453
    .local v2, "spellCheckersCount":I
    if-nez v2, :cond_2

    .line 454
    sget-object v3, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no available spell checker services found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v3, 0x0

    return-object v3

    .line 457
    :cond_2
    if-eqz v0, :cond_4

    .line 458
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 459
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textservice/SpellCheckerInfo;

    .line 460
    .local v5, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 464
    return-object v5

    .line 458
    .end local v5    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 472
    .end local v3    # "i":I
    :cond_4
    move-object/from16 v3, p0

    iget-object v5, v3, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 473
    .local v5, "systemLocal":Ljava/util/Locale;
    nop

    .line 474
    invoke-static {v5}, Lcom/android/server/textservices/LocaleUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v6

    .line 479
    .local v6, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 480
    .local v7, "localeCount":I
    const/4 v8, 0x0

    .local v8, "localeIndex":I
    :goto_2
    if-ge v8, v7, :cond_8

    .line 481
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Locale;

    .line 482
    .local v9, "locale":Ljava/util/Locale;
    const/4 v10, 0x0

    .local v10, "spellCheckersIndex":I
    :goto_3
    if-ge v10, v2, :cond_7

    .line 484
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/textservice/SpellCheckerInfo;

    .line 485
    .local v11, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v12

    .line 486
    .local v12, "subtypeCount":I
    const/4 v13, 0x0

    .local v13, "subtypeIndex":I
    :goto_4
    if-ge v13, v12, :cond_6

    .line 487
    invoke-virtual {v11, v13}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v14

    .line 488
    .local v14, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    nop

    .line 489
    invoke-virtual {v14}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    .line 488
    invoke-static {v15}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v15

    .line 490
    .local v15, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v9, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 494
    return-object v11

    .line 486
    .end local v14    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v15    # "subtypeLocale":Ljava/util/Locale;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 483
    .end local v11    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v12    # "subtypeCount":I
    .end local v13    # "subtypeIndex":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 480
    .end local v9    # "locale":Ljava/util/Locale;
    .end local v10    # "spellCheckersIndex":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 500
    .end local v8    # "localeIndex":I
    :cond_8
    if-le v2, v4, :cond_9

    .line 501
    sget-object v4, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "more than one spell checker service found, picking first"

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_9
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    return-object v4
.end method

.method private getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .locals 4
    .param p1, "userId"    # I

    .line 508
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    invoke-virtual {v1, p1}, Lcom/android/server/textservices/LazyIntToIntMap;->get(I)I

    move-result v1

    .line 510
    .local v1, "spellCheckerOwnerUserId":I
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 511
    .local v2, "data":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit v0

    return-object v3

    .line 512
    .end local v1    # "spellCheckerOwnerUserId":I
    .end local v2    # "data":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .locals 6
    .param p1, "callingUserId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    invoke-virtual {v0, p1}, Lcom/android/server/textservices/LazyIntToIntMap;->get(I)I

    move-result v0

    .line 794
    .local v0, "spellCheckerOwnerUserId":I
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 795
    .local v1, "data":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    sget-boolean v2, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v2, :cond_2

    .line 796
    if-eq v0, p1, :cond_2

    .line 798
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 799
    return-object v2

    .line 801
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 802
    .local v3, "info":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v3, :cond_1

    .line 803
    return-object v2

    .line 805
    :cond_1
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 806
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 809
    return-object v2

    .line 813
    .end local v3    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    return-object v1
.end method

.method private initializeInternalStateLocked(I)V
    .locals 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 359
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    .line 360
    invoke-virtual {v0, p1}, Lcom/android/server/textservices/LazyIntToIntMap;->get(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 365
    .local v0, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v0, :cond_1

    .line 366
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    move-object v0, v1

    .line 367
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    :cond_1
    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1100(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 371
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 372
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v1, :cond_2

    .line 373
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 377
    invoke-direct {p0, v1, v0}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 379
    :cond_2
    return-void
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .locals 4
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 733
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 737
    .local v0, "sciId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 739
    .local v1, "ident":J
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .line 743
    return-void

    .line 741
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .locals 5
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 657
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "sciId":Ljava/lang/String;
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 659
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 660
    .local v1, "connection":Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 665
    nop

    .line 666
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1900(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)I

    move-result v3

    .line 665
    const v4, 0x800001

    invoke-direct {p0, v2, v1, v4, v3}, Lcom/android/server/textservices/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 667
    sget-object v3, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v3, 0x0

    return-object v3

    .line 670
    :cond_0
    new-instance v3, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {v3, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V

    .line 672
    .local v3, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-object v3
.end method

.method private unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .locals 3
    .param p1, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 435
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    .line 436
    .local v0, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 437
    .local v2, "scbg":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 438
    .end local v2    # "scbg":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 440
    return-void
.end method

.method private verifyUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 724
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 725
    .local v0, "callingUserId":I
    if-eq p1, v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cross-user interaction requires INTERACT_ACROSS_USERS_FULL. userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callingUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    array-length v0, p3

    if-eqz v0, :cond_6

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object v0, p3, v1

    const-string v3, "-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 761
    :cond_1
    array-length v0, p3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    aget-object v0, p3, v1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 765
    :cond_2
    aget-object v0, p3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 766
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 767
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_3

    .line 768
    const-string v2, "Non-existent user."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    return-void

    .line 771
    :cond_3
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 772
    .local v2, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_4

    .line 773
    const-string v3, "User needs to unlock first."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    return-void

    .line 776
    :cond_4
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 777
    :try_start_0
    const-string v4, "Current Text Services Manager state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    invoke-static {v2, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$2000(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 780
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 762
    .end local v0    # "userId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :cond_5
    :goto_0
    const-string v0, "Invalid arguments to text services."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    return-void

    .line 751
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_1
    const-string v1, "Current Text Services Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    const-string v1, "  Users:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 755
    .local v1, "numOfUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_7

    .line 756
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 757
    .local v3, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    invoke-static {v3, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$2000(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 755
    .end local v3    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 759
    .end local v1    # "numOfUsers":I
    .end local v2    # "i":I
    :cond_7
    monitor-exit v0

    .line 783
    :goto_3
    return-void

    .line 759
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 704
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 706
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 708
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    nop

    .line 710
    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v3

    .line 711
    .local v3, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 712
    .local v5, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    if-nez v5, :cond_1

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    nop

    .end local v5    # "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 717
    .local v4, "removeSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 718
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v6, p2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 717
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 720
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v2    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v3    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4    # "removeSize":I
    .end local v5    # "i":I
    :cond_3
    monitor-exit v0

    .line 721
    return-void

    .line 720
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "locale"    # Ljava/lang/String;

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 520
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 522
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 524
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 525
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 539
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 541
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 543
    :cond_0
    const/4 v3, 0x0

    .line 544
    invoke-virtual {v1, v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v3

    .line 548
    .local v3, "subtypeHashCode":I
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    .line 549
    .local v4, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v5, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v1, v5

    .line 550
    .local v1, "systemLocale":Ljava/util/Locale;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 557
    :cond_1
    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 559
    return-object v2

    .line 562
    :cond_2
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    .line 563
    .local v0, "numSubtypes":I
    if-eqz v3, :cond_5

    .line 565
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 566
    invoke-virtual {v4, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    .line 567
    .local v6, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v7

    if-ne v7, v3, :cond_3

    .line 568
    return-object v6

    .line 565
    .end local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 571
    .end local v5    # "i":I
    :cond_4
    return-object v2

    .line 576
    :cond_5
    if-nez v1, :cond_6

    .line 577
    return-object v2

    .line 579
    :cond_6
    const/4 v2, 0x0

    .line 580
    .local v2, "firstLanguageMatchingSubtype":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 581
    invoke-virtual {v4, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    .line 582
    .restart local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v7

    .line 583
    .local v7, "scsLocale":Ljava/util/Locale;
    invoke-static {v7, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 585
    return-object v6

    .line 587
    :cond_7
    if-nez v2, :cond_8

    if-eqz v7, :cond_8

    .line 588
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 590
    move-object v2, v6

    .line 580
    .end local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v7    # "scsLocale":Ljava/util/Locale;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 593
    .end local v5    # "i":I
    :cond_9
    return-object v2

    .line 555
    .end local v0    # "numSubtypes":I
    .end local v2    # "firstLanguageMatchingSubtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_a
    :goto_2
    return-object v2

    .line 550
    .end local v1    # "systemLocale":Ljava/util/Locale;
    .end local v3    # "subtypeHashCode":I
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;
    .locals 4
    .param p1, "userId"    # I

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 680
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 682
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 684
    :cond_0
    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 692
    .local v2, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v0

    return-object v3

    .line 693
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v2    # "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 15
    .param p1, "userId"    # I
    .param p2, "sciId"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p5, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .line 600
    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 601
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_5

    if-nez p5, :cond_0

    goto/16 :goto_1

    .line 606
    :cond_0
    iget-object v9, v1, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 607
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v0

    move-object v10, v0

    .line 608
    .local v10, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v10, :cond_1

    monitor-exit v9

    return-void

    .line 610
    :cond_1
    invoke-static {v10}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v11, v0

    .line 611
    .local v11, "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    monitor-exit v9

    return-void

    .line 614
    :cond_2
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    move-object v12, v0

    .line 615
    .local v12, "sci":Landroid/view/textservice/SpellCheckerInfo;
    nop

    .line 616
    invoke-static {v10}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v13, v0

    .line 617
    .local v13, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v3, v0

    .line 618
    .local v3, "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 619
    .local v4, "uid":I
    if-nez v3, :cond_4

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 622
    .local v5, "ident":J
    :try_start_1
    invoke-direct {p0, v12, v10}, Lcom/android/server/textservices/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    .line 624
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    nop

    .line 626
    if-nez v3, :cond_3

    .line 628
    monitor-exit v9

    return-void

    .line 626
    :cond_3
    move-object v0, v3

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    move-object v7, v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/textservices/TextServicesManagerService;
    .end local p1    # "userId":I
    .end local p2    # "sciId":Ljava/lang/String;
    .end local p3    # "locale":Ljava/lang/String;
    .end local p4    # "tsListener":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .end local p5    # "scListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .end local p6    # "bundle":Landroid/os/Bundle;
    throw v7

    .line 619
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/textservices/TextServicesManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "sciId":Ljava/lang/String;
    .restart local p3    # "locale":Ljava/lang/String;
    .restart local p4    # "tsListener":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .restart local p5    # "scListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .restart local p6    # "bundle":Landroid/os/Bundle;
    :cond_4
    move-object v0, v3

    .line 634
    .end local v3    # "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .local v0, "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    :goto_0
    new-instance v14, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    move-object v3, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    invoke-virtual {v0, v14}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 636
    .end local v0    # "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v4    # "uid":I
    .end local v10    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v11    # "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v12    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v13    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    monitor-exit v9

    .line 637
    return-void

    .line 636
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 602
    :cond_5
    :goto_1
    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getSpellCheckerService: Invalid input."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method public isSpellCheckerEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 643
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 645
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 647
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 648
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$TextServicesManagerService(I)I
    .locals 4
    .param p1, "callingUserId"    # I

    .line 338
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_1

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 341
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 342
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v3, p1

    .line 344
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    return v3

    .line 344
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 347
    .end local v0    # "token":J
    :cond_1
    return p1
.end method

.method onStopUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 314
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    invoke-virtual {v1, p1}, Lcom/android/server/textservices/LazyIntToIntMap;->delete(I)V

    .line 319
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 320
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 322
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/textservices/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 323
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 324
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 328
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->initializeInternalStateLocked(I)V

    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
