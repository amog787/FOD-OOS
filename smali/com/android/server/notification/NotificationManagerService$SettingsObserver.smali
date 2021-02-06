.class final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DRIVING_MODE_STATE:Ljava/lang/String;

.field private final DRIVING_MODE_STATE_URI:Landroid/net/Uri;

.field private final ESPORT_MODE_ENABLED:Landroid/net/Uri;

.field private final ESPORT_MODE_KEY:Ljava/lang/String;

.field private final NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

.field private final NOTIFICATION_APP_LOCKER_SWITCH_KEY:Ljava/lang/String;

.field private final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field private final NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

.field private final NOTIFICATION_HEADSET_MODE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

.field private final NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1844
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1845
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1797
    nop

    .line 1798
    const-string/jumbo p1, "notification_badging"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 1799
    nop

    .line 1800
    const-string/jumbo p1, "notification_bubbles"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    .line 1801
    nop

    .line 1802
    const-string/jumbo p1, "notification_light_pulse"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1803
    nop

    .line 1804
    const-string/jumbo p1, "max_notification_enqueue_rate"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    .line 1808
    nop

    .line 1809
    const-string/jumbo p1, "oem_vibrate_under_silent"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    .line 1811
    nop

    .line 1812
    const-string/jumbo p1, "notification_light_pulse_color"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    .line 1814
    const-string p1, "app_locker_switch"

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH_KEY:Ljava/lang/String;

    .line 1815
    nop

    .line 1816
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    .line 1819
    const-string p1, "driving_mode_state"

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DRIVING_MODE_STATE:Ljava/lang/String;

    .line 1820
    nop

    .line 1821
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    .line 1828
    nop

    .line 1829
    const-string/jumbo p1, "oem_notification_ringtone"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HEADSET_MODE_URI:Landroid/net/Uri;

    .line 1836
    const-string p1, "esport_mode_enabled"

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_KEY:Ljava/lang/String;

    .line 1837
    nop

    .line 1838
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    .line 1841
    nop

    .line 1842
    const-string/jumbo p1, "notification_history_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    .line 1846
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .line 1849
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1850
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1852
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1854
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1856
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1861
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v4, 0x8d

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1862
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HEADSET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1870
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1873
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2800()Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->observe()V

    .line 1875
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1878
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1882
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1889
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/worklife/OPWLBInjector;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/worklife/OPWLBInjector;->registerChanges()V

    .line 1894
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1897
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1899
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1900
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1903
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1904
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1907
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1908
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1909
    :cond_0
    const-string/jumbo v4, "notification_light_pulse"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1912
    .local v4, "pulseEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eq v5, v4, :cond_2

    .line 1913
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v4, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 1914
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1917
    .end local v4    # "pulseEnabled":Z
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1918
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1919
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$2900(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v5

    .line 1918
    const-string/jumbo v6, "max_notification_enqueue_rate"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$2902(Lcom/android/server/notification/NotificationManagerService;F)F

    .line 1921
    :cond_4
    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1922
    :cond_5
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 1924
    :cond_6
    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1925
    :cond_7
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 1929
    :cond_8
    if-eqz p1, :cond_9

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1930
    :cond_9
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "oem_vibrate_under_silent"

    invoke-static {v0, v5, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3002(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1934
    :cond_a
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2800()Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->update(Landroid/net/Uri;)V

    .line 1936
    if-eqz p1, :cond_b

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1938
    :cond_b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1939
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 1940
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->recalculateLights()V

    .line 1941
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    goto :goto_1

    .line 1942
    :cond_c
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1943
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1946
    :cond_d
    if-eqz p1, :cond_e

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1947
    :cond_e
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "app_locker_switch"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3102(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1950
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 1954
    :cond_f
    if-eqz p1, :cond_10

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1955
    :cond_10
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "driving_mode_state"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_11

    move v5, v2

    goto :goto_2

    :cond_11
    move v5, v3

    :goto_2
    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3202(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1962
    :cond_12
    new-array v4, v2, [I

    const/16 v5, 0x8d

    aput v5, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1963
    if-eqz p1, :cond_13

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HEADSET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1964
    :cond_13
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "oem_notification_ringtone"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationHeadsetMode:I

    .line 1974
    :cond_14
    if-eqz p1, :cond_15

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1975
    :cond_15
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "esport_mode_enabled"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_16

    move v1, v2

    goto :goto_3

    :cond_16
    move v1, v3

    :goto_3
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1980
    :cond_17
    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1981
    :cond_18
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    .line 1983
    .local v1, "userIds":Landroid/util/IntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 1984
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$3400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/util/IntArray;->get(I)I

    move-result v6

    const-string/jumbo v7, "notification_history_enabled"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_19

    move v7, v2

    goto :goto_5

    :cond_19
    move v7, v3

    :goto_5
    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/NotificationManagerService$Archive;->updateHistoryEnabled(IZ)V

    .line 1983
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1988
    .end local v1    # "userIds":Landroid/util/IntArray;
    .end local v4    # "i":I
    :cond_1a
    return-void

    .line 1942
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
