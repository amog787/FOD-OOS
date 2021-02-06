.class public Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;
.super Ljava/lang/Object;
.source "OpHeytapBusinessManagerServiceInjector.java"


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;
    .locals 1

    .line 78
    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    return-object v0
.end method

.method public static runLoginBusiness(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "callerPkg"    # Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;->runLoginBusiness(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static runShareBusiness(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "fastAppPkgName"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;->runShareBusiness(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static runWeChatPayBusiness(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "originAppCmp"    # Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;->runWeChatPayBusiness(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static shouldRunLoginBusiness(Ljava/lang/String;)Z
    .locals 1
    .param p0, "resultPkg"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;->shouldRunLoginBusiness(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldRunShareBusiness(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fastAppPkgName"    # Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;->shouldRunShareBusiness(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldRunWeChatPayBusiness(Ljava/lang/String;)Z
    .locals 1
    .param p0, "originAppCmp"    # Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;->shouldRunWeChatPayBusiness(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
