.class Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;
.super Ljava/lang/Object;
.source "GnssSatelliteBlacklistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;
    }
.end annotation


# static fields
.field private static final BLACKLIST_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "GnssBlacklistHelper"


# instance fields
.field private final mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;->mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    .line 52
    new-instance v0, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$1;-><init>(Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;Landroid/os/Handler;)V

    .line 58
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 59
    const-string v2, "gnss_satellite_blacklist"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    return-void
.end method

.method static parseSatelliteBlacklist(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "blacklist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 101
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "strings":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v1, "parsed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 104
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 107
    .local v5, "value":I
    if-ltz v5, :cond_0

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Negative value is invalid."

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-object v1
.end method


# virtual methods
.method updateSatelliteBlacklist()V
    .locals 9

    .line 66
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "gnss_satellite_blacklist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "blacklist":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 71
    const-string v1, ""

    .line 73
    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "Update GNSS satellite blacklist: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GnssBlacklistHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    invoke-static {v1}, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;->parseSatelliteBlacklist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v3, "blacklistValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 83
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 84
    const-string v2, "blacklist string has odd number of values.Aborting updateSatelliteBlacklist"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 90
    .local v4, "length":I
    new-array v5, v4, [I

    .line 91
    .local v5, "constellations":[I
    new-array v6, v4, [I

    .line 92
    .local v6, "svids":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 93
    mul-int/lit8 v8, v7, 0x2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    .line 94
    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    .line 92
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 96
    .end local v7    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;->mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    invoke-interface {v2, v5, v6}, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;->onUpdateSatelliteBlacklist([I[I)V

    .line 97
    return-void

    .line 78
    .end local v3    # "blacklistValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "length":I
    .end local v5    # "constellations":[I
    .end local v6    # "svids":[I
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Exception thrown when parsing blacklist string."

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return-void
.end method
