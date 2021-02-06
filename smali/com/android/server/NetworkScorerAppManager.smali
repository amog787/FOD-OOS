.class public Lcom/android/server/NetworkScorerAppManager;
.super Ljava/lang/Object;
.source "NetworkScorerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScorerAppManager$SettingsFacade;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkScorerAppManager"

.field private static final VERBOSE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "NetworkScorerAppManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 50
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    invoke-direct {v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsFacade"    # Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 62
    return-void
.end method

.method private canAccessLocation(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->isLocationModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2, v1, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findUseOpenWifiNetworksActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 7
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 122
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "NetworkScorerAppManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 123
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No metadata found on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-object v2

    .line 128
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 129
    const-string v3, "android.net.wifi.use_open_wifi_package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "useOpenWifiPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    sget-boolean v3, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No use_open_wifi_package metadata found on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    return-object v2

    .line 137
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 139
    .local v3, "enableUseOpenWifiIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 140
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 141
    .local v4, "resolveActivityInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v5, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v5, :cond_4

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_4
    if-eqz v4, :cond_5

    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_5

    .line 146
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 149
    :cond_5
    return-object v2
.end method

.method private getDefaultPackageSetting()Ljava/lang/String;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkAvailableNotificationChannelId(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 154
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 155
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No metadata found on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScorerAppManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.net.wifi.notification_channel_id_network_available"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkRecommendationsEnabledSetting()I
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkRecommendationsPackage()Ljava/lang/String;
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRecommendationServiceLabel(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 109
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 111
    const-string v1, "android.net.scoring.recommendation_service_label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    return-object v0

    .line 116
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 117
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    return-object v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkScorerAppData;

    .line 193
    .local v3, "app":Landroid/net/NetworkScorerAppData;
    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    return-object v3

    .line 191
    .end local v3    # "app":Landroid/net/NetworkScorerAppData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private hasPermissions(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 202
    invoke-direct {p0, p2}, Lcom/android/server/NetworkScorerAppManager;->hasScoreNetworksPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScorerAppManager;->canAccessLocation(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0
.end method

.method private hasScoreNetworksPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 208
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.SCORE_NETWORKS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLocationModeEnabled()Z
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getSecureInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private setNetworkRecommendationsEnabledSetting(I)V
    .locals 3
    .param p1, "value"    # I

    .line 379
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_enabled"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 381
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "network_recommendations_enabled set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScorerAppManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    return-void
.end method

.method private setNetworkRecommendationsPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_package"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "network_recommendations_package set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScorerAppManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 2

    .line 176
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsEnabledSetting()I

    move-result v0

    .line 177
    .local v0, "enabledSetting":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 178
    const/4 v1, 0x0

    return-object v1

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v1

    return-object v1
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .line 70
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    const-string v2, "NetworkScorerAppManager"

    if-eqz v1, :cond_0

    const-string v1, "getAllValidScorers()"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v1, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.action.RECOMMEND_NETWORKS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, "serviceIntent":Landroid/content/Intent;
    const/16 v4, 0x80

    .line 74
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 75
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    .line 80
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v5, "appDataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 82
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 83
    .local v7, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Lcom/android/server/NetworkScorerAppManager;->hasPermissions(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 84
    sget-boolean v8, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v8, :cond_2

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is a valid scorer/recommender."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    new-instance v11, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v11, "serviceComponentName":Landroid/content/ComponentName;
    invoke-direct {v0, v7, v1}, Lcom/android/server/NetworkScorerAppManager;->getRecommendationServiceLabel(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "serviceLabel":Ljava/lang/String;
    nop

    .line 91
    invoke-direct {v0, v7}, Lcom/android/server/NetworkScorerAppManager;->findUseOpenWifiNetworksActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v15

    .line 92
    .local v15, "useOpenWifiNetworksActivity":Landroid/content/ComponentName;
    nop

    .line 93
    invoke-static {v7}, Lcom/android/server/NetworkScorerAppManager;->getNetworkAvailableNotificationChannelId(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, "networkAvailableNotificationChannelId":Ljava/lang/String;
    new-instance v14, Landroid/net/NetworkScorerAppData;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v9, v14

    move-object v12, v8

    move-object v13, v15

    move-object v0, v14

    move-object/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Landroid/net/NetworkScorerAppData;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v8    # "serviceLabel":Ljava/lang/String;
    .end local v11    # "serviceComponentName":Landroid/content/ComponentName;
    .end local v15    # "useOpenWifiNetworksActivity":Landroid/content/ComponentName;
    .end local v16    # "networkAvailableNotificationChannelId":Ljava/lang/String;
    goto :goto_1

    .line 99
    :cond_3
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is NOT a valid scorer/recommender."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v7    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 104
    .end local v6    # "i":I
    :cond_5
    return-object v5

    .line 76
    .end local v5    # "appDataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    :cond_6
    :goto_2
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found 0 Services able to handle "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public migrateNetworkScorerAppSettingIfNeeded()V
    .locals 11

    .line 311
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 312
    const-string/jumbo v2, "network_scorer_app"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "scorerAppPkgNameSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    .line 319
    .local v1, "currentAppData":Landroid/net/NetworkScorerAppData;
    if-nez v1, :cond_1

    .line 321
    return-void

    .line 324
    :cond_1
    sget-boolean v3, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    const-string v4, "NetworkScorerAppManager"

    if-eqz v3, :cond_2

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migrating Settings.Global.NETWORK_SCORER_APP ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_2
    nop

    .line 333
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 334
    .local v3, "enableUseOpenWifiActivity":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v6, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 335
    const-string/jumbo v7, "use_open_wifi_package"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "useOpenWifiSetting":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v8, "\'."

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    .line 338
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 339
    iget-object v6, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v9, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9, v7, v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    sget-boolean v6, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 342
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Settings.Global.USE_OPEN_WIFI_PACKAGE set to \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_3
    iget-object v6, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v9, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v2, v10}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 350
    const-string v2, "Settings.Global.NETWORK_SCORER_APP migration complete."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v6, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {v2, v6, v7}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "setting":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings.Global.USE_OPEN_WIFI_PACKAGE is: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v2    # "setting":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "oldPackageName":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 240
    return v2

    .line 243
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "NetworkScorerAppManager"

    if-eqz v1, :cond_1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network scorer forced off, was: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 246
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 248
    return v2

    .line 252
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing network scorer from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 256
    return v2

    .line 258
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested network scorer is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x0

    return v1
.end method

.method public updateState()V
    .locals 7

    .line 275
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsEnabledSetting()I

    move-result v0

    .line 276
    .local v0, "enabledSetting":I
    const-string v1, "NetworkScorerAppManager"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 278
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Recommendations forced off."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    return-void

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "currentPackageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 285
    sget-boolean v3, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is the active scorer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 287
    return-void

    .line 290
    :cond_3
    const/4 v3, 0x0

    .line 292
    .local v3, "newEnabledSetting":I
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getDefaultPackageSetting()Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "defaultPackageName":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 294
    invoke-direct {p0, v4}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 295
    sget-boolean v5, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Defaulting the network recommendations app to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 300
    const/4 v3, 0x1

    .line 303
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 304
    return-void
.end method
