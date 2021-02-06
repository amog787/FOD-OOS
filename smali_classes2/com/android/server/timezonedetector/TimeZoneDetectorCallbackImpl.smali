.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorCallbackImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;


# static fields
.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;->mCr:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method

.method private deviceHasTelephonyNetwork()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    .line 56
    return v0
.end method

.method private isAutoTimeZoneDetectionSupported()Z
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;->deviceHasTelephonyNetwork()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDeviceTimeZone()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoTimeZoneDetectionEnabled()Z
    .locals 4

    .line 44
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;->isAutoTimeZoneDetectionSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;->mCr:Landroid/content/ContentResolver;

    const-string v2, "auto_time_zone"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    move v1, v3

    :cond_0
    return v1

    .line 47
    :cond_1
    return v1
.end method

.method public isDeviceTimeZoneInitialized()Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "timeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setDeviceTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorCallbackImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 81
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 82
    return-void
.end method
