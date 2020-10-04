.class public Lcom/android/server/location/OpGnssConfiguration;
.super Ljava/lang/Object;
.source "OpGnssConfiguration.java"


# static fields
.field private static final CHINA_SUPL_HOST:Ljava/lang/String; = "supl.qxwz.com"

.field private static final CONFIG_LPP_PROFILE:Ljava/lang/String; = "LPP_PROFILE"

.field private static final CONFIG_NFW_PROXY_APPS:Ljava/lang/String; = "NFW_PROXY_APPS"

.field private static final CONFIG_SUPL_HOST:Ljava/lang/String; = "SUPL_HOST"

.field private static final CONFIG_SUPL_PORT:Ljava/lang/String; = "SUPL_PORT"

.field private static final DEBUG:Z

.field private static final DEFAULT_PORT:Ljava/lang/String; = "7275"

.field private static final GLOBAL_SUPL_HOST:Ljava/lang/String; = "supl.google.com"

.field private static final LOCATION_ATTRIBUTION_APP:Ljava/lang/String; = "com.oneplus.carrierlocation"

.field private static final SPRINT_SUPL_HOST:Ljava/lang/String; = "supl2019.lbs.sprint.com"

.field private static final TAG:Ljava/lang/String; = "OpGnssConfiguration"

.field private static final TMO_SUPL_HOST:Ljava/lang/String; = "supl.geo.t-mobile.com"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/location/OpGnssConfiguration;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Landroid/content/Context;)V
    .locals 0
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 49
    iput-object p2, p0, Lcom/android/server/location/OpGnssConfiguration;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private checkIsChina()Z
    .locals 7

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "ischina":Z
    iget-object v1, p0, Lcom/android/server/location/OpGnssConfiguration;->mContext:Landroid/content/Context;

    .line 55
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 56
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 57
    .local v2, "ddSubId":I
    iget-object v3, p0, Lcom/android/server/location/OpGnssConfiguration;->mContext:Landroid/content/Context;

    .line 58
    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 59
    .local v3, "phone":Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "mccMnc":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 62
    sget-boolean v5, Lcom/android/server/location/OpGnssConfiguration;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM MCC/MNC is available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpGnssConfiguration"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "mcc":Ljava/lang/String;
    const-string v6, "460"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    const/4 v0, 0x1

    .line 70
    .end local v5    # "mcc":Ljava/lang/String;
    :cond_2
    return v0
.end method


# virtual methods
.method public getDefaultProxyApp()Ljava/lang/String;
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "NFW_PROXY_APPS"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "proxyAppsStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x111

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v0, "com.oneplus.carrierlocation"

    .line 109
    :cond_0
    sget-boolean v1, Lcom/android/server/location/OpGnssConfiguration;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proxyAppsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpGnssConfiguration"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    return-object v0
.end method

.method public getSuplHost()Ljava/lang/String;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "SUPL_HOST"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "OpGnssConfiguration"

    const-string/jumbo v1, "supl host is null in debug conf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLppProfie()V
    .locals 3

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "ro.boot.opcarrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LPP_PROFILE"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    :cond_0
    return-void
.end method

.method public setSuplHostPort()V
    .locals 8

    .line 74
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string/jumbo v3, "ro.boot.opcarrier"

    const-string v4, "7275"

    const-string v5, "SUPL_PORT"

    const-string v6, "SUPL_HOST"

    if-eqz v1, :cond_0

    .line 75
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "tmo"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "supl.geo.t-mobile.com"

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_0
    new-array v0, v0, [I

    const/16 v1, 0x9d

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "supl2019.lbs.sprint.com"

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/OpGnssConfiguration;->checkIsChina()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "supl.qxwz.com"

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "supl.google.com"

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/android/server/location/OpGnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    :goto_0
    return-void
.end method
