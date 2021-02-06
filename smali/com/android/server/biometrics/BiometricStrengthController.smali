.class public Lcom/android/server/biometrics/BiometricStrengthController;
.super Ljava/lang/Object;
.source "BiometricStrengthController.java"


# static fields
.field public static final DEFAULT_BIOMETRIC_STRENGTHS:Ljava/lang/String;

.field private static final KEY_BIOMETRIC_STRENGTHS:Ljava/lang/String; = "biometric_strengths"

.field private static final TAG:Ljava/lang/String; = "BiometricStrengthController"


# instance fields
.field private mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mService:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/biometrics/BiometricStrengthController;->DEFAULT_BIOMETRIC_STRENGTHS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/biometrics/BiometricService;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/biometrics/-$$Lambda$BiometricStrengthController$tO9bm1fJ-LRkdtTtLs_q184crJU;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/-$$Lambda$BiometricStrengthController$tO9bm1fJ-LRkdtTtLs_q184crJU;-><init>(Lcom/android/server/biometrics/BiometricStrengthController;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 65
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mService:Lcom/android/server/biometrics/BiometricService;

    .line 66
    return-void
.end method

.method private getIdToStrengthMap()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/android/server/biometrics/BiometricStrengthController;->DEFAULT_BIOMETRIC_STRENGTHS:Ljava/lang/String;

    const-string v1, "biometrics"

    const-string v2, "biometric_strengths"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "flags":Ljava/lang/String;
    const-string v1, "BiometricStrengthController"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 106
    .local v7, "item":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "elems":[Ljava/lang/String;
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 108
    .local v9, "id":I
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 109
    .local v10, "strength":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .end local v7    # "item":Ljava/lang/String;
    .end local v8    # "elems":[Ljava/lang/String;
    .end local v9    # "id":I
    .end local v10    # "strength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 114
    :cond_1
    goto :goto_1

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t parse flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x0

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 99
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    const-string v2, "Flags are null or empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public synthetic lambda$new$0$BiometricStrengthController(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 57
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "name":Ljava/lang/String;
    const-string v2, "biometric_strengths"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricStrengthController;->updateStrengths()V

    .line 61
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public startListening()V
    .locals 3

    .line 69
    nop

    .line 70
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 69
    const-string v2, "biometrics"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 71
    return-void
.end method

.method public updateStrengths()V
    .locals 5

    .line 78
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricStrengthController;->getIdToStrengthMap()Ljava/util/Map;

    move-result-object v0

    .line 79
    .local v0, "idToStrength":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 80
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricStrengthController;->mService:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 84
    .local v2, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v3, v2, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    .line 85
    .local v3, "id":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 87
    .local v4, "newStrength":I
    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->updateStrength(I)V

    .line 89
    .end local v2    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .end local v3    # "id":I
    .end local v4    # "newStrength":I
    :cond_1
    goto :goto_0

    .line 90
    :cond_2
    return-void
.end method
