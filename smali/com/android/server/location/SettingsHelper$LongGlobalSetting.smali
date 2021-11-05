.class Lcom/android/server/location/SettingsHelper$LongGlobalSetting;
.super Lcom/android/server/location/SettingsHelper$ObservingSetting;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongGlobalSetting"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/location/SettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    .line 520
    iput-object p1, p0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    .line 521
    iput-object p2, p0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 522
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Handler;
    .param p4, "x3"    # Lcom/android/server/location/SettingsHelper$1;

    .line 513
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getValue(J)J
    .locals 4
    .param p1, "defaultValue"    # J

    .line 529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 531
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    return-wide v2

    .line 534
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    throw v2
.end method

.method public register()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    .line 526
    return-void
.end method
