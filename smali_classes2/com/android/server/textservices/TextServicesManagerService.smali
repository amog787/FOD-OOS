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

    .line 78
    const-class v0, Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 326
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 327
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 328
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 329
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    .line 330
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 331
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;
    .param p1, "x1"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "x2"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/textservices/TextServicesManagerService;I)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService;
    .param p1, "x1"    # I

    .line 77
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

    .line 397
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 398
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

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 17
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 416
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
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

    .line 418
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 419
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 424
    .local v2, "spellCheckersCount":I
    if-nez v2, :cond_2

    .line 425
    sget-object v3, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "no available spell checker services found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v3, 0x0

    return-object v3

    .line 428
    :cond_2
    if-eqz v0, :cond_4

    .line 429
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 430
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textservice/SpellCheckerInfo;

    .line 431
    .local v5, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 435
    return-object v5

    .line 429
    .end local v5    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 443
    .end local v3    # "i":I
    :cond_4
    move-object/from16 v3, p0

    iget-object v5, v3, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 444
    .local v5, "systemLocal":Ljava/util/Locale;
    nop

    .line 445
    invoke-static {v5}, Lcom/android/server/textservices/LocaleUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v6

    .line 450
    .local v6, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 451
    .local v7, "localeCount":I
    const/4 v8, 0x0

    .local v8, "localeIndex":I
    :goto_2
    if-ge v8, v7, :cond_8

    .line 452
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Locale;

    .line 453
    .local v9, "locale":Ljava/util/Locale;
    const/4 v10, 0x0

    .local v10, "spellCheckersIndex":I
    :goto_3
    if-ge v10, v2, :cond_7

    .line 455
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/textservice/SpellCheckerInfo;

    .line 456
    .local v11, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v12

    .line 457
    .local v12, "subtypeCount":I
    const/4 v13, 0x0

    .local v13, "subtypeIndex":I
    :goto_4
    if-ge v13, v12, :cond_6

    .line 458
    invoke-virtual {v11, v13}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v14

    .line 459
    .local v14, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    nop

    .line 460
    invoke-virtual {v14}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    .line 459
    invoke-static {v15}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v15

    .line 461
    .local v15, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v9, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 465
    return-object v11

    .line 457
    .end local v14    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v15    # "subtypeLocale":Ljava/util/Locale;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 454
    .end local v11    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v12    # "subtypeCount":I
    .end local v13    # "subtypeIndex":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 451
    .end local v9    # "locale":Ljava/util/Locale;
    .end local v10    # "spellCheckersIndex":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 471
    .end local v8    # "localeIndex":I
    :cond_8
    if-le v2, v4, :cond_9

    .line 472
    sget-object v4, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v8, "more than one spell checker service found, picking first"

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_9
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    return-object v4
.end method

.method private getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 479
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 481
    .local v1, "data":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 482
    .end local v1    # "data":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .locals 1
    .param p1, "callingUserId"    # I

    .line 763
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    return-object v0
.end method

.method private initializeInternalStateLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 335
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 336
    .local v0, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v0, :cond_0

    .line 337
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    move-object v0, v1

    .line 338
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    :cond_0
    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1100(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 342
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 343
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v1, :cond_1

    .line 344
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 348
    invoke-direct {p0, v1, v0}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 350
    :cond_1
    return-void
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .locals 4
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 703
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 707
    .local v0, "sciId":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 709
    .local v1, "ident":J
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 712
    nop

    .line 713
    return-void

    .line 711
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 712
    throw v3
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .locals 5
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 627
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "sciId":Ljava/lang/String;
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 629
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 630
    .local v1, "connection":Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 635
    nop

    .line 636
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1900(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)I

    move-result v3

    .line 635
    const v4, 0x800001

    invoke-direct {p0, v2, v1, v4, v3}, Lcom/android/server/textservices/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 637
    sget-object v3, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v3, 0x0

    return-object v3

    .line 640
    :cond_0
    new-instance v3, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {v3, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V

    .line 642
    .local v3, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    return-object v3
.end method

.method private unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .locals 3
    .param p1, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 406
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    .line 407
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

    .line 408
    .local v2, "scbg":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 409
    .end local v2    # "scbg":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 411
    return-void
.end method

.method private verifyUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 694
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 695
    .local v0, "callingUserId":I
    if-eq p1, v0, :cond_0

    .line 696
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

    .line 700
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 719
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

    .line 731
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

    .line 735
    :cond_2
    aget-object v0, p3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 736
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 737
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_3

    .line 738
    const-string v2, "Non-existent user."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    return-void

    .line 741
    :cond_3
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 742
    .local v2, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_4

    .line 743
    const-string v3, "User needs to unlock first."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    return-void

    .line 746
    :cond_4
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 747
    :try_start_0
    const-string v4, "Current Text Services Manager state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
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

    .line 749
    invoke-static {v2, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$2000(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 750
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 732
    .end local v0    # "userId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :cond_5
    :goto_0
    const-string v0, "Invalid arguments to text services."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    return-void

    .line 721
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_1
    const-string v1, "Current Text Services Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    const-string v1, "  Users:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 725
    .local v1, "numOfUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_7

    .line 726
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 727
    .local v3, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    invoke-static {v3, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$2000(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 725
    .end local v3    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 729
    .end local v1    # "numOfUsers":I
    .end local v2    # "i":I
    :cond_7
    monitor-exit v0

    .line 753
    :goto_3
    return-void

    .line 729
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

    .line 672
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 674
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 676
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 678
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    nop

    .line 680
    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v3

    .line 681
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

    .line 682
    .local v5, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    if-nez v5, :cond_1

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    nop

    .end local v5    # "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_0

    .line 686
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 687
    .local v4, "removeSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 688
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v6, p2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 687
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 690
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v2    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v3    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4    # "removeSize":I
    .end local v5    # "i":I
    :cond_3
    monitor-exit v0

    .line 691
    return-void

    .line 690
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

    .line 489
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 490
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 492
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 494
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 495
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

    .line 503
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 509
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 511
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 513
    :cond_0
    const/4 v3, 0x0

    .line 514
    invoke-virtual {v1, v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v3

    .line 518
    .local v3, "subtypeHashCode":I
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    .line 519
    .local v4, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v5, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v1, v5

    .line 520
    .local v1, "systemLocale":Ljava/util/Locale;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 527
    :cond_1
    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 529
    return-object v2

    .line 532
    :cond_2
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    .line 533
    .local v0, "numSubtypes":I
    if-eqz v3, :cond_5

    .line 535
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 536
    invoke-virtual {v4, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    .line 537
    .local v6, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v7

    if-ne v7, v3, :cond_3

    .line 538
    return-object v6

    .line 535
    .end local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 541
    .end local v5    # "i":I
    :cond_4
    return-object v2

    .line 546
    :cond_5
    if-nez v1, :cond_6

    .line 547
    return-object v2

    .line 549
    :cond_6
    const/4 v2, 0x0

    .line 550
    .local v2, "firstLanguageMatchingSubtype":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 551
    invoke-virtual {v4, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    .line 552
    .restart local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v7

    .line 553
    .local v7, "scsLocale":Ljava/util/Locale;
    invoke-static {v7, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 555
    return-object v6

    .line 557
    :cond_7
    if-nez v2, :cond_8

    if-eqz v7, :cond_8

    .line 558
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 560
    move-object v2, v6

    .line 550
    .end local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v7    # "scsLocale":Ljava/util/Locale;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 563
    .end local v5    # "i":I
    :cond_9
    return-object v2

    .line 525
    .end local v0    # "numSubtypes":I
    .end local v2    # "firstLanguageMatchingSubtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_a
    :goto_2
    return-object v2

    .line 520
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

    .line 648
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 650
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 652
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 654
    :cond_0
    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 662
    .local v2, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v0

    return-object v3

    .line 663
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

    .line 570
    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 571
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_5

    if-nez p5, :cond_0

    goto/16 :goto_1

    .line 576
    :cond_0
    iget-object v9, v1, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 577
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v0

    move-object v10, v0

    .line 578
    .local v10, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v10, :cond_1

    monitor-exit v9

    return-void

    .line 580
    :cond_1
    invoke-static {v10}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v11, v0

    .line 581
    .local v11, "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 582
    monitor-exit v9

    return-void

    .line 584
    :cond_2
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    move-object v12, v0

    .line 585
    .local v12, "sci":Landroid/view/textservice/SpellCheckerInfo;
    nop

    .line 586
    invoke-static {v10}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v13, v0

    .line 587
    .local v13, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v3, v0

    .line 588
    .local v3, "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 589
    .local v4, "uid":I
    if-nez v3, :cond_4

    .line 590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    .local v5, "ident":J
    :try_start_1
    invoke-direct {p0, v12, v10}, Lcom/android/server/textservices/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    .line 594
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    nop

    .line 596
    if-nez v3, :cond_3

    .line 598
    monitor-exit v9

    return-void

    .line 596
    :cond_3
    move-object v0, v3

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    move-object v7, v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    nop

    .end local p0    # "this":Lcom/android/server/textservices/TextServicesManagerService;
    .end local p1    # "userId":I
    .end local p2    # "sciId":Ljava/lang/String;
    .end local p3    # "locale":Ljava/lang/String;
    .end local p4    # "tsListener":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .end local p5    # "scListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .end local p6    # "bundle":Landroid/os/Bundle;
    throw v7

    .line 589
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

    .line 604
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

    .line 606
    .end local v0    # "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v4    # "uid":I
    .end local v10    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v11    # "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v12    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v13    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    monitor-exit v9

    .line 607
    return-void

    .line 606
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 572
    :cond_5
    :goto_1
    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getSpellCheckerService: Invalid input."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method public isSpellCheckerEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 611
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 613
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 615
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 617
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 618
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onStopUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 309
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 312
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 314
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/textservices/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 315
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 316
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    monitor-exit v0

    .line 317
    return-void

    .line 316
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

    .line 320
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->initializeInternalStateLocked(I)V

    .line 323
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
