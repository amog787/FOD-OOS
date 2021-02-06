.class Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HiddenApiSettings"
.end annotation


# static fields
.field public static final HIDDEN_API_ACCESS_LOG_SAMPLING_RATE:Ljava/lang/String; = "hidden_api_access_log_sampling_rate"

.field public static final HIDDEN_API_ACCESS_STATSLOG_SAMPLING_RATE:Ljava/lang/String; = "hidden_api_access_statslog_sampling_rate"


# instance fields
.field private mBlacklistDisabled:Z

.field private final mContext:Landroid/content/Context;

.field private mExemptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExemptionsStr:Ljava/lang/String;

.field private mLogSampleRate:I

.field private mPolicy:I

.field private mStatslogSampleRate:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 2771
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2726
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 2727
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 2728
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 2729
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    .line 2772
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 2773
    return-void
.end method

.method private getValidEnforcementPolicy(Ljava/lang/String;)I
    .locals 3
    .param p1, "settingsKey"    # Ljava/lang/String;

    .line 2813
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2815
    .local v0, "policy":I
    invoke-static {v0}, Landroid/content/pm/ApplicationInfo;->isValidHiddenApiEnforcementPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2816
    return v0

    .line 2818
    :cond_0
    return v1
.end method

.method private update()V
    .locals 3

    .line 2790
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_api_blacklist_exemptions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2792
    .local v0, "exemptions":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2793
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    .line 2794
    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2795
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 2796
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    goto :goto_1

    .line 2798
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 2799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2800
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 2801
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 2803
    :goto_1
    sget-object v1, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->setApiBlacklistExemptions(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2804
    const-string v1, "ActivityManager"

    const-string v2, "Failed to set API blacklist exemptions!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 2809
    :cond_2
    const-string v1, "hidden_api_policy"

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getValidEnforcementPolicy(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    .line 2810
    return-void
.end method


# virtual methods
.method getPolicy()I
    .locals 1

    .line 2827
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    return v0
.end method

.method isDisabled()Z
    .locals 1

    .line 2823
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .line 2831
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    .line 2832
    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 2750
    const-string v0, "hidden_api_access_log_sampling_rate"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2751
    .local v0, "logSampleRate":I
    const/high16 v2, 0x10000

    if-ltz v0, :cond_0

    if-le v0, v2, :cond_1

    .line 2752
    :cond_0
    const/4 v0, -0x1

    .line 2754
    :cond_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    if-eq v0, v4, :cond_2

    .line 2755
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 2756
    sget-object v4, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    iget v5, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    invoke-virtual {v4, v5}, Landroid/os/ZygoteProcess;->setHiddenApiAccessLogSampleRate(I)V

    .line 2759
    :cond_2
    nop

    .line 2760
    const-string v4, "hidden_api_access_statslog_sampling_rate"

    invoke-virtual {p1, v4, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2761
    .local v1, "statslogSampleRate":I
    if-ltz v1, :cond_3

    if-le v1, v2, :cond_4

    .line 2762
    :cond_3
    const/4 v1, -0x1

    .line 2764
    :cond_4
    if-eq v1, v3, :cond_5

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    if-eq v1, v2, :cond_5

    .line 2765
    iput v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 2766
    sget-object v2, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    invoke-virtual {v2, v3}, Landroid/os/ZygoteProcess;->setHiddenApiAccessStatslogSampleRate(I)V

    .line 2768
    :cond_5
    return-void
.end method

.method public registerObserver()V
    .locals 3

    .line 2776
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2777
    const-string v1, "hidden_api_blacklist_exemptions"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2776
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2780
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2781
    const-string v1, "hidden_api_policy"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2780
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2784
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 2785
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2784
    const-string v1, "app_compat"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2786
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    .line 2787
    return-void
.end method
