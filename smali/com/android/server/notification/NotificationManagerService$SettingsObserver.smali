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

    .line 1850
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1851
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1803
    nop

    .line 1804
    const-string/jumbo p1, "notification_badging"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 1805
    nop

    .line 1806
    const-string/jumbo p1, "notification_bubbles"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    .line 1807
    nop

    .line 1808
    const-string/jumbo p1, "notification_light_pulse"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1809
    nop

    .line 1810
    const-string/jumbo p1, "max_notification_enqueue_rate"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    .line 1814
    nop

    .line 1815
    const-string/jumbo p1, "oem_vibrate_under_silent"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    .line 1817
    nop

    .line 1818
    const-string/jumbo p1, "notification_light_pulse_color"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    .line 1820
    const-string p1, "app_locker_switch"

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH_KEY:Ljava/lang/String;

    .line 1821
    nop

    .line 1822
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    .line 1825
    const-string p1, "driving_mode_state"

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DRIVING_MODE_STATE:Ljava/lang/String;

    .line 1826
    nop

    .line 1827
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    .line 1834
    nop

    .line 1835
    const-string/jumbo p1, "oem_notification_ringtone"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HEADSET_MODE_URI:Landroid/net/Uri;

    .line 1842
    const-string p1, "esport_mode_enabled"

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_KEY:Ljava/lang/String;

    .line 1843
    nop

    .line 1844
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    .line 1847
    nop

    .line 1848
    const-string/jumbo p1, "notification_history_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    .line 1852
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .line 1855
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1856
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1858
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1860
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1862
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1867
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v4, 0x8d

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1868
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HEADSET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1876
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1879
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2900()Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->observe()V

    .line 1881
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1884
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1888
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1895
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/worklife/OPWLBInjector;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/worklife/OPWLBInjector;->registerChanges()V

    .line 1900
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1903
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1905
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1906
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1909
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1910
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1913
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1914
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1915
    :cond_0
    const-string/jumbo v4, "notification_light_pulse"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1918
    .local v4, "pulseEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eq v5, v4, :cond_2

    .line 1919
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v4, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 1920
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1923
    .end local v4    # "pulseEnabled":Z
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1924
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1925
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$3000(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v5

    .line 1924
    const-string/jumbo v6, "max_notification_enqueue_rate"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3002(Lcom/android/server/notification/NotificationManagerService;F)F

    .line 1927
    :cond_4
    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1928
    :cond_5
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 1930
    :cond_6
    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1931
    :cond_7
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 1935
    :cond_8
    if-eqz p1, :cond_9

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATE_WHEN_MUTE:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1936
    :cond_9
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "oem_vibrate_under_silent"

    invoke-static {v0, v5, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3102(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1940
    :cond_a
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2900()Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/oneplus/notification/OpNotificationVibrationControllerInjector;->update(Landroid/net/Uri;)V

    .line 1942
    if-eqz p1, :cond_b

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_COLOR_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1944
    :cond_b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1945
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

    .line 1946
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->recalculateLights()V

    .line 1947
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    goto :goto_1

    .line 1948
    :cond_c
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1952
    :cond_d
    if-eqz p1, :cond_e

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_APP_LOCKER_SWITCH:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1953
    :cond_e
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "app_locker_switch"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3202(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1956
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 1960
    :cond_f
    if-eqz p1, :cond_10

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1961
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
    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$3302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1968
    :cond_12
    new-array v4, v2, [I

    const/16 v5, 0x8d

    aput v5, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1969
    if-eqz p1, :cond_13

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HEADSET_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1970
    :cond_13
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "oem_notification_ringtone"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationHeadsetMode:I

    .line 1980
    :cond_14
    if-eqz p1, :cond_15

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1981
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
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1986
    :cond_17
    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1987
    :cond_18
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    .line 1989
    .local v1, "userIds":Landroid/util/IntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 1990
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

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

    .line 1989
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1994
    .end local v1    # "userIds":Landroid/util/IntArray;
    .end local v4    # "i":I
    :cond_1a
    return-void

    .line 1948
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
