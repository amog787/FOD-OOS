.class final Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPeakRefreshRate:F

.field private mDefaultRefreshRate:F

.field private final mHighTempModeSetting:Landroid/net/Uri;

.field private final mLowPowerModeSetting:Landroid/net/Uri;

.field private final mMinRefreshRateSetting:Landroid/net/Uri;

.field private final mPeakRefreshRateSetting:Landroid/net/Uri;

.field private final mRefreshRateModeSetting:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 920
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 921
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 899
    nop

    .line 900
    const-string/jumbo p1, "peak_refresh_rate"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    .line 901
    nop

    .line 902
    const-string/jumbo p1, "min_refresh_rate"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 903
    nop

    .line 904
    const-string/jumbo p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 907
    nop

    .line 908
    const-string/jumbo p1, "op_in_high_temp"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mHighTempModeSetting:Landroid/net/Uri;

    .line 912
    nop

    .line 913
    const-string/jumbo p1, "oneplus_screen_refresh_rate"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    .line 922
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 923
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0041

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 925
    nop

    .line 926
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0043

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 927
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .line 898
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V

    return-void
.end method

.method private updateHighTempModeSettingLocked()V
    .locals 4

    .line 1020
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_in_high_temp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 1023
    .local v0, "inHighTempMode":Z
    if-eqz v0, :cond_1

    .line 1026
    const/4 v1, 0x0

    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_0

    .line 1028
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1
    const/4 v1, 0x0

    .line 1030
    .restart local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v3, 0x7

    invoke-static {v2, v3, v1}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1031
    return-void
.end method

.method private updateLowPowerModeSettingLocked()V
    .locals 4

    .line 999
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 1002
    .local v0, "inLowPowerMode":Z
    if-eqz v0, :cond_1

    .line 1007
    const/4 v1, 0x0

    .line 1008
    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const-string v2, "DisplayModeDirector"

    const-string v3, "DO NOT switch to 60hz when low power"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1011
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1
    const/4 v1, 0x0

    .line 1013
    .restart local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v3, 0x6

    invoke-static {v2, v3, v1}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1014
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    .line 1015
    return-void
.end method

.method private updateRefreshRateSettingLocked()V
    .locals 4

    .line 1035
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "min_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1037
    .local v0, "minRefreshRate":F
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    const-string/jumbo v3, "peak_refresh_rate"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 1039
    .local v1, "peakRefreshRate":F
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V

    .line 1040
    return-void
.end method

.method private updateRefreshRateSettingLocked(FFF)V
    .locals 8
    .param p1, "minRefreshRate"    # F
    .param p2, "peakRefreshRate"    # F
    .param p3, "defaultRefreshRate"    # F

    .line 1048
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1049
    move-object v1, v2

    goto :goto_0

    .line 1050
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    :goto_0
    nop

    .line 1051
    .local v1, "peakVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x5

    invoke-static {v3, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1052
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1053
    invoke-static {p1, v4}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v4

    .line 1052
    const/4 v5, 0x2

    invoke-static {v3, v5, v4}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1055
    cmpl-float v3, p3, v0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, p3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    .line 1056
    .local v2, "defaultVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1059
    cmpl-float v3, p2, v0

    if-nez v3, :cond_2

    cmpl-float v3, p3, v0

    if-nez v3, :cond_2

    .line 1064
    const-string v3, "DisplayModeDirector"

    const-string v4, "Default and peak refresh rates are both 0. One of them should be set to a valid value."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    move v3, p1

    .local v3, "maxRefreshRate":F
    goto :goto_2

    .line 1067
    .end local v3    # "maxRefreshRate":F
    :cond_2
    cmpl-float v3, p2, v0

    if-nez v3, :cond_3

    .line 1068
    move v3, p3

    .restart local v3    # "maxRefreshRate":F
    goto :goto_2

    .line 1069
    .end local v3    # "maxRefreshRate":F
    :cond_3
    cmpl-float v3, p3, v0

    if-nez v3, :cond_4

    .line 1070
    move v3, p2

    .restart local v3    # "maxRefreshRate":F
    goto :goto_2

    .line 1072
    .end local v3    # "maxRefreshRate":F
    :cond_4
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1077
    .restart local v3    # "maxRefreshRate":F
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "oneplus_screen_refresh_rate"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1079
    .local v4, "rateMode":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    const/high16 v5, 0x42700000    # 60.0f

    goto :goto_3

    :cond_5
    const/high16 v5, 0x42f00000    # 120.0f

    .line 1080
    .local v5, "screenRefreshRate":F
    :goto_3
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v7, 0x8

    .line 1081
    invoke-static {v0, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 1080
    invoke-static {v6, v7, v0}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1082
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1084
    .end local v3    # "maxRefreshRate":F
    .local v0, "maxRefreshRate":F
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    .line 1085
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1088
    const-string v0, "  SettingsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    return-void
.end method

.method public observe()V
    .locals 4

    .line 930
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 931
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 933
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 935
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 939
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mHighTempModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 944
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 947
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 948
    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v1

    .line 949
    .local v1, "deviceConfigDefaultPeakRefresh":Ljava/lang/Float;
    if-eqz v1, :cond_0

    .line 950
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 953
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 954
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 955
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 958
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateHighTempModeSettingLocked()V

    .line 960
    monitor-exit v2

    .line 961
    return-void

    .line 960
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 979
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    .line 983
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 985
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 988
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    goto :goto_1

    .line 991
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mHighTempModeSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 992
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateHighTempModeSettingLocked()V

    goto :goto_1

    .line 986
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 995
    :cond_3
    :goto_1
    monitor-exit v0

    .line 996
    return-void

    .line 995
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V
    .locals 2
    .param p1, "defaultPeakRefreshRate"    # Ljava/lang/Float;

    .line 964
    if-nez p1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 969
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 971
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 972
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 973
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 975
    :cond_1
    :goto_0
    return-void
.end method
