.class public Lcom/android/server/compat/OverrideValidatorImpl;
.super Lcom/android/internal/compat/IOverrideValidator$Stub;
.source "OverrideValidatorImpl.java"


# instance fields
.field private mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field private mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V
    .locals 0
    .param p1, "androidBuildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "config"    # Lcom/android/server/compat/CompatConfig;

    .line 47
    invoke-direct {p0}, Lcom/android/internal/compat/IOverrideValidator$Stub;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 49
    iput-object p2, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 51
    return-void
.end method


# virtual methods
.method public getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 11
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->isLoggingOnly(J)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isDebuggableBuild()Z

    move-result v0

    .line 60
    .local v0, "debuggableBuild":Z
    iget-object v2, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v2}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v2

    .line 61
    .local v2, "finalBuild":Z
    iget-object v3, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/compat/CompatConfig;->minTargetSdkForChangeId(J)I

    move-result v3

    .line 62
    .local v3, "minTargetSdk":I
    iget-object v4, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/compat/CompatConfig;->isDisabled(J)Z

    move-result v4

    .line 65
    .local v4, "disabled":Z
    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 66
    new-instance v6, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v6, v5, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v6

    .line 68
    :cond_1
    iget-object v6, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 69
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v6, :cond_7

    .line 74
    :try_start_0
    invoke-virtual {v6, p3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 78
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 80
    .local v8, "appTargetSdk":I
    iget v9, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-nez v9, :cond_2

    .line 81
    new-instance v5, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v5

    .line 84
    :cond_2
    if-nez v2, :cond_3

    .line 85
    new-instance v1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v1, v5, v8, v3}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v1

    .line 88
    :cond_3
    if-ne v3, v1, :cond_4

    if-nez v4, :cond_4

    .line 89
    new-instance v1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v1, v10, v8, v3}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v1

    .line 92
    :cond_4
    if-nez v4, :cond_6

    if-gt v8, v3, :cond_5

    goto :goto_0

    .line 95
    :cond_5
    new-instance v1, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v5, 0x3

    invoke-direct {v1, v5, v8, v3}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v1

    .line 93
    :cond_6
    :goto_0
    new-instance v1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v1, v5, v8, v3}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v1

    .line 75
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appTargetSdk":I
    :catch_0
    move-exception v5

    .line 76
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v7

    .line 70
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "No PackageManager!"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
