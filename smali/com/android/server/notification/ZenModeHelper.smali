.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;,
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final RULE_INSTANCE_GRACE_PERIOD:I = 0xf731400

.field public static final SUPPRESSED_EFFECT_ALL:J = 0x3L

.field public static final SUPPRESSED_EFFECT_CALLS:J = 0x2L

.field public static final SUPPRESSED_EFFECT_NOTIFICATIONS:J = 0x1L

.field static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field protected mAudioManager:Landroid/media/AudioManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mConditions:Lcom/android/server/notification/ZenModeConditions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mConfig:Landroid/service/notification/ZenModeConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mConfigs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected mDefaultConfig:Landroid/service/notification/ZenModeConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsBootComplete:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field protected final mNotificationManager:Landroid/app/NotificationManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mPm:Landroid/content/pm/PackageManager;

.field private mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field protected final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field private final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mSuppressedEffects:J

.field private mUser:I

.field protected mZenMode:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 129
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 130
    new-instance v2, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 131
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 132
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 133
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 135
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 136
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 137
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 138
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 141
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 142
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 143
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {v0, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 144
    invoke-virtual {p3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 145
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 89
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 89
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/ComponentName;
    .param p4, "x4"    # Z

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 89
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 89
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 89
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object v0
.end method

.method private applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p4, "setRingerMode"    # Z

    .line 866
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode_config_etag"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 868
    invoke-virtual {p0, p2, p4}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 869
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p3, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 870
    return-void
.end method

.method private applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 2
    .param p1, "policy"    # Landroid/service/notification/ZenPolicy;
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 945
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 946
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 947
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 948
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 946
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_0

    .line 949
    :cond_0
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 951
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 952
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 953
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 954
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 951
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    goto :goto_0

    .line 957
    :cond_1
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 959
    :goto_0
    return-void
.end method

.method private cleanUpZenRules()V
    .locals 10

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 772
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 773
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 774
    .local v3, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v4, :cond_2

    .line 775
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 776
    iget-object v5, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 777
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-wide/32 v6, 0xf731400

    iget-wide v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v8, v0, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 779
    :try_start_1
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 780
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const/high16 v8, 0x400000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    :cond_0
    goto :goto_1

    .line 782
    :catch_0
    move-exception v6

    .line 783
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 775
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 788
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    const-string v5, "cleanUpZenRules"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 789
    nop

    .end local v3    # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v2

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private computeZenMode()I
    .locals 7

    .line 923
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 924
    :cond_0
    monitor-enter v0

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v0

    return v1

    .line 926
    :cond_1
    const/4 v1, 0x0

    .line 927
    .local v1, "zen":I
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 928
    .local v3, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 929
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 931
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "zen_settings_suggestion_viewed"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    .line 933
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_zen_settings_suggestion"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 936
    :cond_2
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    move v1, v4

    .line 939
    .end local v3    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    goto :goto_0

    .line 940
    :cond_4
    monitor-exit v0

    return v1

    .line 941
    .end local v1    # "zen":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchOnConfigChanged()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1101
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    .line 1102
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 1103
    :cond_0
    return-void
.end method

.method private dispatchOnConsolidatedPolicyChanged()V
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1113
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged()V

    .line 1114
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 1115
    :cond_0
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1107
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    .line 1108
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 1109
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 2

    .line 1118
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 1119
    .local v1, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    .line 1120
    .end local v1    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    goto :goto_0

    .line 1121
    :cond_0
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "var"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 650
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 651
    if-nez p3, :cond_0

    .line 652
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 653
    return-void

    .line 655
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 657
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p3, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 658
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 659
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x6

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x7

    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 660
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x8

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 661
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x9

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    .line 655
    const-string v1, "allow(alarms=%b,media=%b,system=%b,calls=%b,callsFrom=%s,repeatCallers=%b,messages=%b,messagesFrom=%s,events=%b,reminders=%b)\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 662
    new-array v0, v3, [Ljava/lang/Object;

    iget v1, p3, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, " disallow(visualEffects=%s)\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 663
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  manualRule="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 664
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 665
    :cond_1
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 666
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 667
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v2, "  automaticRules="

    goto :goto_1

    :cond_2
    const-string v2, "                 "

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private findMatchingRule(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 3
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "id"    # Landroid/net/Uri;
    .param p3, "condition"    # Landroid/service/notification/Condition;

    .line 424
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    return-object v0

    .line 427
    :cond_0
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 428
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    return-object v1

    .line 431
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    goto :goto_0

    .line 433
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "configActivity"    # Landroid/content/ComponentName;

    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 538
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 535
    const/16 v3, 0x81

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 539
    .local v1, "installedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 540
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    if-ge v2, v3, :cond_0

    .line 541
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 542
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v5

    .line 545
    .end local v2    # "i":I
    .end local v3    # "count":I
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .locals 1
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 752
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getPreviousRingerModeSetting()I
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_ringer_level"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 8
    .param p1, "owner"    # Landroid/content/ComponentName;

    .line 514
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 515
    .local v0, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 516
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 519
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 516
    const/16 v3, 0x84

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 520
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    .line 521
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 522
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 523
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 524
    .local v5, "info":Landroid/content/pm/ServiceInfo;
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 525
    return-object v5

    .line 521
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "info":Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getZenModeSetting()I
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isSystemRule(Landroid/app/AutomaticZenRule;)Z
    .locals 2
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .line 509
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0
.end method

.method private loadConfigForUser(ILjava/lang/String;)V
    .locals 3
    .param p1, "user"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 224
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v0, p1, :cond_4

    if-gez p1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 226
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 228
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_3

    .line 229
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " generating default config for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 231
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 234
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 224
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_4
    :goto_0
    return-void
.end method

.method private populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .locals 3
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "isNew"    # Z

    .line 549
    if-eqz p3, :cond_1

    .line 550
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 552
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 553
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 554
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 559
    :cond_1
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 560
    iput-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 562
    :cond_2
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 563
    const/4 v0, 0x0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 564
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 565
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 566
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isModified()Z

    move-result v0

    iput-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 567
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 568
    nop

    .line 569
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    .line 568
    invoke-static {v0, v2}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v0

    iput v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 570
    return-void
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 1124
    const/4 v0, 0x0

    .line 1126
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const v1, 0x1170007

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 1127
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1128
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v1, :cond_0

    .line 1134
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1129
    return-object v1

    .line 1130
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_0
    goto :goto_0

    .line 1134
    :cond_1
    nop

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1135
    goto :goto_2

    .line 1134
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1131
    :catch_0
    move-exception v1

    .line 1132
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ZenModeHelper"

    const-string v3, "Error reading default zen mode config from resource"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1136
    :goto_2
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v1

    .line 1134
    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private ruleMatches(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 2
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;
    .param p3, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 437
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 439
    :cond_1
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 440
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 437
    :cond_3
    :goto_0
    return v0
.end method

.method private setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "condition"    # Landroid/service/notification/Condition;

    .line 416
    if-nez p2, :cond_0

    return-void

    .line 418
    :cond_0
    iput-object p3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 419
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 420
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-string v1, "conditionChanged"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 421
    return-void
.end method

.method private setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z
    .locals 7
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p4, "setRingerMode"    # Z

    .line 824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 826
    .local v0, "identity":J
    const/4 v2, 0x0

    const-string v3, "ZenModeHelper"

    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 830
    :cond_0
    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    .line 832
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked: store config for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_1
    nop

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    return v6

    .line 837
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 839
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 840
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v4, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 844
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    .line 845
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    .line 844
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v6

    goto :goto_0

    :cond_4
    move v4, v2

    .line 846
    .local v4, "policyChanged":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v5}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 847
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 848
    invoke-direct {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 850
    :cond_5
    if-eqz v4, :cond_6

    .line 851
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    .line 853
    :cond_6
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 854
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v5, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$H;->access$300(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    nop

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    return v6

    .line 860
    .end local v4    # "policyChanged":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 856
    :catch_0
    move-exception v4

    goto :goto_2

    .line 827
    :cond_7
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid config in setConfigLocked; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 828
    nop

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 828
    return v2

    .line 857
    .local v4, "e":Ljava/lang/SecurityException;
    :goto_2
    :try_start_3
    const-string v5, "Invalid rule in config"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 858
    nop

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 858
    return v2

    .line 860
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "setRingerMode"    # Z

    .line 588
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 590
    :cond_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 591
    :cond_1
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setManualZenMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " conditionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setRingerMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 595
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    .line 596
    iput-object v3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 597
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 598
    .local v5, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 599
    iput-boolean v2, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 601
    .end local v5    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    goto :goto_0

    :cond_4
    goto :goto_1

    .line 603
    :cond_5
    new-instance v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 604
    .local v4, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 605
    iput p1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 606
    iput-object p2, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 607
    iput-object p4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 608
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 610
    .end local v4    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_1
    invoke-direct {p0, v1, p3, v3, p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    .line 611
    monitor-exit v0

    .line 612
    return-void

    .line 611
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    .line 888
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 889
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 890
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 888
    :goto_0
    const-string/jumbo v2, "zen_mode_ringer_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 891
    return-void
.end method

.method private showZenUpgradeNotification(I)V
    .locals 8
    .param p1, "zen"    # I

    .line 1305
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1307
    .local v0, "isWatch":Z
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    const/4 v2, 0x1

    const-string/jumbo v3, "show_zen_upgrade_notification"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1310
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1312
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "zen_settings_updated"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v1, v2

    .line 1315
    .local v1, "showNotification":Z
    if-eqz v0, :cond_1

    .line 1316
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1320
    :cond_1
    if-eqz v1, :cond_2

    .line 1321
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x30

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->createZenUpgradeNotification()Landroid/app/Notification;

    move-result-object v6

    .line 1321
    const-string v7, "ZenModeHelper"

    invoke-virtual {v2, v7, v5, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1323
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1326
    :cond_2
    return-void
.end method

.method private updateConsolidatedPolicy(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 962
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    return-void

    .line 963
    :cond_0
    monitor-enter v0

    .line 964
    :try_start_0
    new-instance v1, Landroid/service/notification/ZenPolicy;

    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 965
    .local v1, "policy":Landroid/service/notification/ZenPolicy;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_1

    .line 966
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 969
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 970
    .local v3, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 971
    invoke-direct {p0, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 973
    .end local v3    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    goto :goto_0

    .line 974
    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 975
    .local v2, "newPolicy":Landroid/app/NotificationManager$Policy;
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 976
    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 977
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConsolidatedPolicyChanged()V

    .line 978
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3, p1}, Lcom/android/server/notification/ZenLog;->traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V

    .line 980
    .end local v1    # "policy":Landroid/service/notification/ZenPolicy;
    .end local v2    # "newPolicy":Landroid/app/NotificationManager$Policy;
    :cond_4
    monitor-exit v0

    .line 981
    return-void

    .line 980
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateDefaultAutomaticRuleNames()V
    .locals 4

    .line 984
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 985
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10407c2

    .line 987
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_1

    .line 988
    :cond_0
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v3, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 989
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10407c3

    .line 990
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 992
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    :goto_1
    goto :goto_0

    .line 993
    :cond_2
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    .line 920
    :cond_0
    return-void
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 2
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 444
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 446
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snoozing reset for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 449
    :cond_1
    return v0
.end method

.method private static zenSeverity(I)I
    .locals 2
    .param p0, "zen"    # I

    .line 1140
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 1144
    const/4 v0, 0x0

    return v0

    .line 1142
    :cond_0
    return v1

    .line 1143
    :cond_1
    return v0

    .line 1141
    :cond_2
    return v0
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p2, "reason"    # Ljava/lang/String;

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isSystemRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 293
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 294
    .local v0, "component":Landroid/content/pm/PackageItemInfo;
    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 297
    :cond_0
    if-eqz v0, :cond_3

    .line 300
    const/4 v2, -0x1

    .line 301
    .local v2, "ruleInstanceLimit":I
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const/4 v4, -0x1

    const-string v5, "android.service.zen.automatic.ruleInstanceLimit"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 305
    :cond_1
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v3

    .line 306
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 308
    .local v3, "newRuleInstanceCount":I
    if-lez v2, :cond_4

    if-lt v2, v3, :cond_2

    goto :goto_0

    .line 309
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Rule instance limit exceeded"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    .end local v2    # "ruleInstanceLimit":I
    .end local v3    # "newRuleInstanceCount":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Lacking enabled CPS or config activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    .end local v0    # "component":Landroid/content/pm/PackageItemInfo;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_7

    .line 319
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 320
    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAutomaticZenRule rule= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_5
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 323
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 324
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 325
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {p0, v2, p2, v4, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    iget-object v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 329
    :cond_6
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v4, "Could not create rule"

    invoke-direct {v1, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p2    # "reason":Ljava/lang/String;
    throw v1

    .line 317
    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_7
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "Could not create rule"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p2    # "reason":Ljava/lang/String;
    throw v1

    .line 331
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 179
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method protected applyRestrictions()V
    .locals 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 997
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 998
    .local v1, "zenPriorityOnly":Z
    :goto_0
    iget v4, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 999
    .local v4, "zenSilence":Z
    :goto_1
    iget v6, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 1000
    .local v6, "zenAlarmsOnly":Z
    :goto_2
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v8

    .line 1001
    .local v8, "allowCalls":Z
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v9

    .line 1002
    .local v9, "allowRepeatCallers":Z
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v10

    .line 1003
    .local v10, "allowSystem":Z
    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v11

    .line 1004
    .local v11, "allowMedia":Z
    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v12

    .line 1007
    .local v12, "allowAlarms":Z
    iget-wide v13, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v15, 0x1

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 1010
    .local v13, "muteNotifications":Z
    :goto_3
    if-nez v6, :cond_6

    if-eqz v1, :cond_4

    if-nez v8, :cond_4

    if-eqz v9, :cond_6

    :cond_4
    iget-wide v2, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v17, 0x2

    and-long v2, v2, v17

    cmp-long v2, v2, v15

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v2, 0x1

    .line 1014
    .local v2, "muteCalls":Z
    :goto_5
    if-eqz v1, :cond_7

    if-nez v12, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    .line 1016
    .local v3, "muteAlarms":Z
    :goto_6
    if-eqz v1, :cond_8

    if-nez v11, :cond_8

    const/4 v15, 0x1

    goto :goto_7

    :cond_8
    const/4 v15, 0x0

    .line 1018
    .local v15, "muteMedia":Z
    :goto_7
    if-nez v6, :cond_a

    if-eqz v1, :cond_9

    if-nez v10, :cond_9

    goto :goto_8

    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/16 v16, 0x1

    .line 1020
    .local v16, "muteSystem":Z
    :goto_9
    if-nez v4, :cond_c

    if-eqz v1, :cond_b

    iget-object v14, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 1021
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_a

    :cond_b
    const/4 v14, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v14, 0x1

    .line 1023
    .local v14, "muteEverything":Z
    :goto_b
    sget-object v5, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    array-length v7, v5

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "zenSilence":Z
    .local v19, "zenSilence":Z
    :goto_c
    if-ge v4, v7, :cond_20

    move/from16 v20, v6

    .end local v6    # "zenAlarmsOnly":Z
    .local v20, "zenAlarmsOnly":Z
    aget v6, v5, v4

    .line 1024
    .local v6, "usage":I
    move-object/from16 v21, v5

    sget-object v5, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1025
    .local v5, "suppressionBehavior":I
    move/from16 v22, v7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_d

    .line 1026
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move v7, v14

    move/from16 v23, v2

    const/4 v14, 0x0

    .end local v14    # "muteEverything":Z
    .local v7, "muteEverything":Z
    goto/16 :goto_18

    .line 1027
    .end local v7    # "muteEverything":Z
    .restart local v14    # "muteEverything":Z
    :cond_d
    move v7, v14

    .end local v14    # "muteEverything":Z
    .restart local v7    # "muteEverything":Z
    const/4 v14, 0x1

    if-ne v5, v14, :cond_10

    .line 1028
    if-nez v13, :cond_f

    if-eqz v7, :cond_e

    goto :goto_d

    :cond_e
    const/4 v14, 0x0

    :cond_f
    :goto_d
    invoke-virtual {v0, v1, v14, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v23, v2

    const/4 v14, 0x0

    goto/16 :goto_18

    .line 1029
    :cond_10
    const/4 v14, 0x2

    if-ne v5, v14, :cond_13

    .line 1030
    if-nez v2, :cond_12

    if-eqz v7, :cond_11

    goto :goto_e

    :cond_11
    const/4 v14, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v14, 0x1

    :goto_f
    invoke-virtual {v0, v1, v14, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v23, v2

    const/4 v14, 0x0

    goto/16 :goto_18

    .line 1031
    :cond_13
    const/4 v14, 0x4

    if-ne v5, v14, :cond_16

    .line 1032
    if-nez v3, :cond_15

    if-eqz v7, :cond_14

    goto :goto_10

    :cond_14
    const/4 v14, 0x0

    goto :goto_11

    :cond_15
    :goto_10
    const/4 v14, 0x1

    :goto_11
    invoke-virtual {v0, v1, v14, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v23, v2

    const/4 v14, 0x0

    goto :goto_18

    .line 1033
    :cond_16
    const/4 v14, 0x5

    if-ne v5, v14, :cond_19

    .line 1034
    if-nez v15, :cond_18

    if-eqz v7, :cond_17

    goto :goto_12

    :cond_17
    const/4 v14, 0x0

    goto :goto_13

    :cond_18
    :goto_12
    const/4 v14, 0x1

    :goto_13
    invoke-virtual {v0, v1, v14, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    move/from16 v23, v2

    const/4 v14, 0x0

    goto :goto_18

    .line 1035
    :cond_19
    const/4 v14, 0x6

    if-ne v5, v14, :cond_1f

    .line 1036
    const/16 v14, 0xd

    if-ne v6, v14, :cond_1c

    .line 1038
    if-nez v16, :cond_1b

    if-eqz v7, :cond_1a

    goto :goto_14

    :cond_1a
    const/4 v14, 0x0

    goto :goto_15

    :cond_1b
    :goto_14
    const/4 v14, 0x1

    :goto_15
    move/from16 v23, v2

    .end local v2    # "muteCalls":Z
    .local v23, "muteCalls":Z
    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v14, v6, v2}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1040
    const/4 v2, 0x3

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v14, v6, v2}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    goto :goto_18

    .line 1042
    .end local v23    # "muteCalls":Z
    .restart local v2    # "muteCalls":Z
    :cond_1c
    move/from16 v23, v2

    const/4 v2, 0x3

    const/4 v14, 0x0

    .end local v2    # "muteCalls":Z
    .restart local v23    # "muteCalls":Z
    if-nez v16, :cond_1e

    if-eqz v7, :cond_1d

    goto :goto_16

    :cond_1d
    move v2, v14

    goto :goto_17

    :cond_1e
    :goto_16
    const/4 v2, 0x1

    :goto_17
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_18

    .line 1045
    .end local v23    # "muteCalls":Z
    .restart local v2    # "muteCalls":Z
    :cond_1f
    move/from16 v23, v2

    const/4 v14, 0x0

    .end local v2    # "muteCalls":Z
    .restart local v23    # "muteCalls":Z
    invoke-virtual {v0, v1, v7, v6}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    .line 1023
    .end local v5    # "suppressionBehavior":I
    .end local v6    # "usage":I
    :goto_18
    add-int/lit8 v4, v4, 0x1

    move v14, v7

    move/from16 v6, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    move/from16 v2, v23

    goto/16 :goto_c

    .line 1048
    .end local v7    # "muteEverything":Z
    .end local v20    # "zenAlarmsOnly":Z
    .end local v23    # "muteCalls":Z
    .restart local v2    # "muteCalls":Z
    .local v6, "zenAlarmsOnly":Z
    .restart local v14    # "muteEverything":Z
    :cond_20
    return-void
.end method

.method protected applyRestrictions(ZZI)V
    .locals 1
    .param p1, "zenPriorityOnly"    # Z
    .param p2, "mute"    # Z
    .param p3, "usage"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1065
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1066
    const/16 v0, 0x1c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 1067
    return-void
.end method

.method protected applyRestrictions(ZZII)V
    .locals 4
    .param p1, "zenPriorityOnly"    # Z
    .param p2, "mute"    # Z
    .param p3, "usage"    # I
    .param p4, "code"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1055
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 1056
    nop

    .line 1057
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1055
    :goto_0
    invoke-virtual {v2, p4, p3, p2, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    nop

    .line 1061
    return-void

    .line 1059
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected applyZenToRingerMode()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_0

    return-void

    .line 1074
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    .line 1075
    .local v0, "ringerModeInternal":I
    move v1, v0

    .line 1076
    .local v1, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1079
    :cond_1
    if-eqz v0, :cond_4

    .line 1080
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 1081
    const/4 v1, 0x0

    goto :goto_0

    .line 1086
    :cond_2
    goto :goto_0

    .line 1088
    :cond_3
    if-nez v0, :cond_4

    .line 1089
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v1

    .line 1090
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 1094
    :cond_4
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1095
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v3, "ZenModeHelper"

    invoke-virtual {v2, v1, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 1097
    :cond_5
    return-void
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 7
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 469
    .local v0, "callingUid":I
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 473
    return v1

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 477
    array-length v3, v2

    .line 478
    .local v3, "packageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 479
    aget-object v5, v2, v4

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    return v1

    .line 478
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    .end local v3    # "packageCount":I
    .end local v4    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 470
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_4
    :goto_1
    return v1
.end method

.method protected createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .locals 11
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 573
    new-instance v10, Landroid/app/AutomaticZenRule;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 575
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v6

    iget-boolean v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-wide v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V

    .line 573
    return-object v10
.end method

.method protected createZenUpgradeNotification()Landroid/app/Notification;
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1330
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1331
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1332
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1331
    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const v1, 0x10407cd

    .line 1334
    .local v1, "title":I
    const v2, 0x10407cc

    .line 1335
    .local v2, "content":I
    const v3, 0x1080552

    .line 1336
    .local v3, "drawable":I
    nop

    .line 1337
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1336
    invoke-static {v4}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1338
    const v1, 0x10407cf

    .line 1339
    const v2, 0x10407ce

    .line 1340
    const v3, 0x108036c

    .line 1343
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v4, "onboardingIntent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1345
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1346
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x108050c

    .line 1347
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1348
    invoke-static {v7, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1349
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 1350
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    .line 1351
    invoke-static {v7, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1353
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1354
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1355
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1356
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1357
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 1345
    return-object v5
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 615
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 616
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 621
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v5, v5, Landroid/service/notification/Condition;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v5, :cond_1

    .line 623
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 625
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    goto :goto_0

    .line 626
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 627
    const-wide v1, 0x10500000003L

    iget-wide v3, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 628
    monitor-exit v0

    .line 629
    return-void

    .line 628
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConsolidatedPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 636
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConfigs[u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mUser="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 640
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 641
    :try_start_0
    const-string/jumbo v2, "mConfig"

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 642
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSuppressedEffects="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 645
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 647
    return-void

    .line 642
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected evaluateZenMode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "setRingerMode"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 895
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_1

    return-void

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 898
    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    :goto_0
    nop

    .line 899
    .local v0, "policyHashBefore":I
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 900
    .local v1, "zenBefore":I
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v2

    .line 901
    .local v2, "zen":I
    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 902
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 903
    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 904
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->updateConsolidatedPolicy(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    .line 906
    if-eqz p2, :cond_4

    if-ne v2, v1, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 907
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 908
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 910
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 911
    if-eq v2, v1, :cond_5

    .line 912
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper$H;->access$400(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 914
    :cond_5
    return-void
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 283
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    if-nez v1, :cond_1

    return-object v2

    .line 285
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0

    .line 288
    :cond_2
    return-object v2

    .line 283
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-nez v0, :cond_0

    .line 806
    const/4 v0, 0x0

    return-object v0

    .line 808
    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInstanceCount(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 453
    if-nez p1, :cond_0

    .line 454
    const/4 v0, 0x0

    return v0

    .line 456
    :cond_0
    const/4 v0, 0x0

    .line 457
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 459
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 460
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 462
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    goto :goto_0

    .line 463
    :cond_3
    monitor-exit v1

    .line 464
    return v0

    .line 463
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressedEffects()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    return v0
.end method

.method public getZenRules()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 270
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    goto :goto_0

    .line 274
    :cond_2
    monitor-exit v1

    .line 275
    return-object v0

    .line 274
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public initZenMode()V
    .locals 2

    .line 187
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    const-string v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    const/4 v0, 0x1

    const-string v1, "init"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 189
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 165
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .line 158
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSystemReady()V
    .locals 3

    .line 192
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    const-string/jumbo v1, "onSystemReady"

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-virtual {v0, v2}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 198
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$200(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 199
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)V

    .line 201
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsBootComplete:Z

    .line 202
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 203
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 2
    .param p1, "user"    # I

    .line 210
    if-gez p1, :cond_0

    return-void

    .line 211
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserRemoved u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 213
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "user"    # I

    .line 206
    const-string/jumbo v0, "onUserSwitched"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 207
    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 1
    .param p1, "user"    # I

    .line 216
    const-string/jumbo v0, "onUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 217
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;ZI)V
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    move-object/from16 v1, p0

    move/from16 v0, p3

    invoke-static/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 675
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v3, "readXml"

    .line 677
    .local v3, "reason":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 678
    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 679
    iput v0, v2, Landroid/service/notification/ZenModeConfig;->user:I

    .line 680
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 684
    :cond_0
    const/4 v5, 0x1

    .line 685
    .local v5, "allRulesDisabled":Z
    iget-object v6, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    sget-object v7, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    .line 688
    .local v6, "hasDefaultRules":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 689
    .local v7, "time":J
    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 690
    iget-object v9, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 691
    .local v12, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz p2, :cond_1

    .line 693
    iput-boolean v10, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 694
    iput-object v4, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 695
    iput-wide v7, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 698
    :cond_1
    iget-boolean v13, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v13, v11

    and-int/2addr v5, v13

    .line 699
    .end local v12    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_0

    .line 702
    :cond_2
    const/16 v9, 0x8

    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    if-nez p2, :cond_3

    iget v12, v2, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge v12, v9, :cond_5

    .line 707
    :cond_3
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    iput-object v12, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 708
    iget-object v12, v1, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v12, v12, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 709
    .local v13, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v14, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v15, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .end local v13    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_1

    .line 711
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", reset to default rules"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_2

    .line 715
    :cond_5
    move-object v12, v3

    .end local v3    # "reason":Ljava/lang/String;
    .local v12, "reason":Ljava/lang/String;
    :goto_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    goto :goto_3

    :cond_6
    move v10, v0

    .line 716
    .end local p3    # "userId":I
    .local v10, "userId":I
    :goto_3
    iget v0, v2, Landroid/service/notification/ZenModeConfig;->version:I

    if-ge v0, v9, :cond_7

    .line 717
    iget-object v0, v1, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "show_zen_upgrade_notification"

    invoke-static {v0, v3, v11, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    .line 721
    :cond_7
    iget-object v0, v1, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "zen_settings_updated"

    invoke-static {v0, v3, v11, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 724
    :goto_4
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "ZenModeHelper"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_8
    iget-object v9, v1, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v9

    .line 726
    :try_start_0
    invoke-virtual {v1, v2, v4, v12}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 727
    monitor-exit v9

    move v0, v10

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 677
    .end local v5    # "allRulesDisabled":Z
    .end local v6    # "hasDefaultRules":Z
    .end local v7    # "time":J
    .end local v10    # "userId":I
    .end local v12    # "reason":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local p3    # "userId":I
    :cond_9
    move-object v12, v3

    .line 729
    .end local v3    # "reason":Ljava/lang/String;
    .end local p3    # "userId":I
    .local v0, "userId":I
    .restart local v12    # "reason":Ljava/lang/String;
    :goto_5
    return-void
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 169
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    .line 170
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 364
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 365
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    .line 366
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, p2, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 370
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Cannot delete rules not owned by your condition provider"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "reason":Ljava/lang/String;
    throw v2

    .line 374
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "id":Ljava/lang/String;
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 382
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 383
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 384
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 382
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 388
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 389
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 183
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "filter"    # I

    .line 244
    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v1

    .line 245
    .local v1, "newZen":I
    if-eq v1, v0, :cond_2

    .line 246
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_2
    return-void
.end method

.method public setAutomaticZenRuleState(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "ruleDefinition"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;

    .line 404
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 408
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    nop

    .line 409
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->findMatchingRule(Landroid/service/notification/ZenModeConfig;Landroid/net/Uri;Landroid/service/notification/Condition;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    .line 408
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "condition"    # Landroid/service/notification/Condition;

    .line 394
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 398
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/Condition;)V

    .line 399
    monitor-exit v0

    .line 400
    return-void

    .line 399
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p3, "reason"    # Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 818
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 819
    monitor-exit v0

    .line 820
    return-void

    .line 819
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "triggeringComponent"    # Landroid/content/ComponentName;
    .param p3, "reason"    # Ljava/lang/String;

    .line 813
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .line 580
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 581
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_zen_settings_suggestion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 4
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 759
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    goto :goto_0

    .line 760
    :cond_0
    monitor-enter v0

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 762
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v1, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 763
    const/4 v2, 0x0

    const-string/jumbo v3, "setNotificationPolicy"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 764
    nop

    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 759
    :cond_1
    :goto_0
    return-void
.end method

.method setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setSuppressedEffects(J)V
    .locals 2
    .param p1, "suppressedEffects"    # J

    .line 252
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 254
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 255
    return-void
.end method

.method protected setZenModeSetting(I)V
    .locals 2
    .param p1, "zen"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 879
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 880
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 173
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 153
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p3, "reason"    # Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 339
    :cond_0
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 340
    const-string v1, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutomaticZenRule zenRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 345
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-eqz p1, :cond_3

    .line 348
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 349
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 354
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 355
    iget-object v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v4, 0x1

    invoke-direct {p0, v1, p3, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Landroid/content/ComponentName;Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 350
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Cannot update rules not owned by your condition provider"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "ruleId":Ljava/lang/String;
    .end local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p3    # "reason":Ljava/lang/String;
    throw v2

    .line 346
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "ruleId":Ljava/lang/String;
    .restart local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p3    # "reason":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Rule doesn\'t exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .end local p1    # "ruleId":Ljava/lang/String;
    .end local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .end local p3    # "reason":Ljava/lang/String;
    throw v2

    .line 356
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeHelper;
    .restart local p1    # "ruleId":Ljava/lang/String;
    .restart local p2    # "automaticZenRule":Landroid/app/AutomaticZenRule;
    .restart local p3    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateDefaultZenRules()V
    .locals 6

    .line 489
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultAutomaticRuleNames()V

    .line 490
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 491
    .local v1, "defaultRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 494
    .local v2, "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v3, :cond_1

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 495
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale change - updating default zen rule name from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenModeHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 501
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v4

    const-string/jumbo v5, "locale changed"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    .line 505
    .end local v1    # "defaultRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v2    # "currRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    goto :goto_0

    .line 506
    :cond_2
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/Integer;I)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .param p3, "version"    # Ljava/lang/Integer;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 735
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 736
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eq v3, p4, :cond_0

    .line 737
    goto :goto_1

    .line 739
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V

    .line 735
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
