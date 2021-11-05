.class public Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector;
.super Ljava/lang/Object;
.source "OpOpenIdManagerServiceInjector.java"


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefault()Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;
    .locals 1

    .line 36
    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;

    return-object v0
.end method

.method public static isOpenIdProvider(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceInjector;->getDefault()Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;->isOpenIdProvider(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
