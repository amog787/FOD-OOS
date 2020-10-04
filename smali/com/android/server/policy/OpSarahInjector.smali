.class public Lcom/android/server/policy/OpSarahInjector;
.super Ljava/lang/Object;
.source "OpSarahInjector.java"


# static fields
.field public static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "SarahInjector"

.field private static sClient:Lcom/oneplus/sarah/SarahClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd6

    aput v2, v0, v1

    .line 25
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OpSarahInjector;->ENABLED:Z

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/OpSarahInjector;->sClient:Lcom/oneplus/sarah/SarahClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    sget-boolean v0, Lcom/android/server/policy/OpSarahInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/sarah/SarahClient;->getInstance(Landroid/content/Context;)Lcom/oneplus/sarah/SarahClient;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/OpSarahInjector;->sClient:Lcom/oneplus/sarah/SarahClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SarahInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static notifyPowerKey()V
    .locals 3

    .line 43
    sget-boolean v0, Lcom/android/server/policy/OpSarahInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/android/server/policy/OpSarahInjector;->sClient:Lcom/oneplus/sarah/SarahClient;

    if-nez v0, :cond_1

    return-void

    .line 48
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/oneplus/sarah/SarahClient;->notifyPowerKey()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SarahInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
