.class public Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.super Ljava/lang/Object;
.source "BatterySaverStateMachine.java"


# static fields
.field private static final ADAPTIVE_AUTO_DISABLE_BATTERY_LEVEL:I = 0x50

.field private static final ADAPTIVE_CHANGE_TIMEOUT_MS:J = 0x5265c00L

.field private static final BATTERY_SAVER_NOTIF_CHANNEL_ID:Ljava/lang/String; = "battery_saver_channel"

.field private static final DEBUG:Z = false

.field private static final DYNAMIC_MODE_NOTIFICATION_ID:I = 0x7c8

.field private static final DYNAMIC_MODE_NOTIF_CHANNEL_ID:Ljava/lang/String; = "dynamic_mode_notification"

.field private static final STATE_AUTOMATIC_ON:I = 0x3

.field private static final STATE_MANUAL_ON:I = 0x2

.field private static final STATE_OFF:I = 0x1

.field private static final STATE_OFF_AUTOMATIC_SNOOZED:I = 0x4

.field private static final STATE_PENDING_STICKY_ON:I = 0x5

.field private static final STICKY_AUTO_DISABLED_NOTIFICATION_ID:I = 0x7c9

.field private static final TAG:Ljava/lang/String; = "BatterySaverStateMachine"


# instance fields
.field private mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private final mBatterySaverStickyBehaviourDisabled:Z

.field private mBatteryStatusSet:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mBootCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDynamicPowerSavingsBatterySaver:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mDynamicPowerSavingsDefaultDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDynamicPowerSavingsDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsBatteryLevelLow:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsPowered:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastAdaptiveBatterySaverChangedExternallyElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastChangedIntReason:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastChangedStrReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSettingAutomaticBatterySaver:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverEnabledSticky:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverStickyAutoDisableEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverStickyAutoDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverTriggerThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingsLoaded:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mThresholdChangeLogger:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySaverController"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 468
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$SSfmWJrD4RBoVg8A8loZrS-jhAo;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$SSfmWJrD4RBoVg8A8loZrS-jhAo;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    .line 239
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 240
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 241
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 242
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 244
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    .line 246
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 94
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 94
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    return-void
.end method

.method private buildNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;
    .locals 6
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summaryId"    # I
    .param p4, "intentAction"    # Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 831
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 833
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 835
    .local v2, "batterySaverIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "summary":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 838
    const v5, 0x108031d

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 839
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 840
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 841
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 842
    invoke-virtual {v5, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 843
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 844
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 845
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 837
    return-object v4
.end method

.method private doAutoBatterySaverLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 548
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 552
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    .line 559
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->resetAdaptivePolicyLocked(I)Z

    goto :goto_0

    .line 561
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    const/16 v2, 0x50

    if-lt v1, v2, :cond_2

    .line 562
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    .line 565
    :cond_2
    :goto_0
    return-void

    .line 549
    :cond_3
    :goto_1
    return-void
.end method

.method private enableBatterySaverLocked(ZZI)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "manual"    # Z
    .param p3, "intReason"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 737
    invoke-static {p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    .line 738
    return-void
.end method

.method private enableBatterySaverLocked(ZZILjava/lang/String;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "manual"    # Z
    .param p3, "intReason"    # I
    .param p4, "strReason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v0

    .line 753
    .local v0, "wasEnabled":Z
    if-ne v0, p1, :cond_0

    .line 757
    return-void

    .line 759
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v1, :cond_1

    .line 761
    return-void

    .line 763
    :cond_1
    iput p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    .line 764
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    .line 766
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 767
    const-string/jumbo v1, "low_power"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 769
    if-eqz p2, :cond_3

    .line 770
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    .line 772
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->enableBatterySaver(ZI)V

    .line 775
    const/16 v1, 0x9

    if-ne p3, v1, :cond_4

    .line 776
    new-instance v1, Lcom/android/server/power/batterysaver/-$$Lambda$mQgroChNR1F7zC7uPirCwSx_zNg;

    invoke-direct {v1, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$mQgroChNR1F7zC7uPirCwSx_zNg;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 777
    :cond_4
    if-nez p1, :cond_5

    .line 778
    new-instance v1, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$WGmfDqFGirqPfth6R7MtcSK-Gvs;

    invoke-direct {v1, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$WGmfDqFGirqPfth6R7MtcSK-Gvs;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 786
    :cond_5
    :goto_1
    return-void
.end method

.method private ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 3
    .param p1, "manager"    # Landroid/app/NotificationManager;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "nameId"    # I

    .line 821
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 822
    invoke-virtual {v1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p2, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 823
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 824
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 825
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 826
    return-void
.end method

.method private hideDynamicModeNotification()V
    .locals 1

    .line 849
    const/16 v0, 0x7c8

    invoke-direct {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    .line 850
    return-void
.end method

.method private hideNotification(I)V
    .locals 2
    .param p1, "notificationId"    # I

    .line 857
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 858
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 859
    return-void
.end method

.method private hideStickyDisabledNotification()V
    .locals 1

    .line 853
    const/16 v0, 0x7c9

    invoke-direct {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    .line 854
    return-void
.end method

.method private isAutomaticModeActiveLocked()Z
    .locals 1

    .line 252
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDynamicModeActiveLocked()Z
    .locals 2

    .line 268
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsBatterySaver:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isInAutomaticLowZoneLocked()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    return v0
.end method

.method private isInDynamicLowZoneLocked()Z
    .locals 2

    .line 279
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$WGmfDqFGirqPfth6R7MtcSK-Gvs(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideDynamicModeNotification()V

    return-void
.end method

.method private refreshSettingsLocked()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    const-string/jumbo v1, "low_power"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    .line 364
    .local v4, "lowPowerModeEnabled":Z
    :goto_0
    const-string/jumbo v1, "low_power_sticky"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v0

    .line 366
    .local v5, "lowPowerModeEnabledSticky":Z
    :goto_1
    const-string v1, "dynamic_power_savings_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move v10, v0

    .line 368
    .local v10, "dynamicPowerSavingsBatterySaver":Z
    :goto_2
    const-string/jumbo v1, "low_power_trigger_level"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    .line 370
    .local v1, "lowPowerModeTriggerLevel":I
    const-string v3, "automatic_power_save_mode"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v12

    .line 373
    .local v12, "automaticBatterySaverMode":I
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    const-string v6, "dynamic_power_savings_disable_threshold"

    invoke-virtual {p0, v6, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v13

    .line 376
    .local v13, "dynamicPowerSavingsDisableThreshold":I
    const-string/jumbo v3, "low_power_sticky_auto_disable_enabled"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v0

    .line 378
    .local v7, "isStickyAutoDisableEnabled":Z
    :goto_3
    const/16 v0, 0x5a

    const-string/jumbo v2, "low_power_sticky_auto_disable_level"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    .line 381
    .local v0, "stickyAutoDisableThreshold":I
    move-object v3, p0

    move v6, v1

    move v8, v0

    move v9, v12

    move v11, v13

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setSettingsLocked(ZZIZIIZI)V

    .line 386
    return-void
.end method

.method private setStickyActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 862
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 863
    nop

    .line 864
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 863
    const-string/jumbo v1, "low_power_sticky"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 865
    return-void
.end method

.method private updateStateLocked(ZZ)V
    .locals 9
    .param p1, "manual"    # Z
    .param p2, "enable"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 576
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_1

    .line 577
    :cond_0
    return-void

    .line 580
    :cond_1
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    const/4 v1, 0x3

    const-string v2, "BatterySaverStateMachine"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_19

    const/4 v6, 0x7

    const/4 v7, 0x5

    if-eq v0, v3, :cond_15

    const/4 v8, 0x4

    if-eq v0, v1, :cond_f

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 682
    :cond_2
    if-eqz p1, :cond_3

    .line 685
    const-string v0, "Tried to manually change BS state from PENDING_STICKY_ON"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void

    .line 688
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-lt v0, v1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v4

    .line 690
    .local v0, "shouldTurnOffSticky":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v5

    .line 692
    .local v1, "isStickyDisabled":Z
    :goto_2
    if-nez v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    .line 696
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez v2, :cond_1d

    .line 698
    invoke-direct {p0, v5, v5, v8}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 700
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    .line 693
    :cond_8
    :goto_3
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 694
    invoke-direct {p0, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    .line 695
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerStickyDisabledNotification()V

    goto/16 :goto_4

    .line 664
    .end local v0    # "shouldTurnOffSticky":Z
    .end local v1    # "isStickyDisabled":Z
    :cond_9
    if-eqz p1, :cond_b

    .line 665
    if-nez p2, :cond_a

    .line 666
    const-string v0, "Tried to disable BS when it\'s already AUTO_SNOOZED"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 669
    :cond_a
    invoke-direct {p0, v5, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 671
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    .line 672
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez v0, :cond_e

    .line 673
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 674
    :cond_c
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 675
    :cond_d
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 676
    :cond_e
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    .line 630
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_10

    .line 631
    invoke-direct {p0, v4, v4, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 633
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    .line 634
    :cond_10
    if-eqz p1, :cond_12

    .line 635
    if-eqz p2, :cond_11

    .line 636
    const-string v0, "Tried to enable BS when it\'s already AUTO_ON"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 639
    :cond_11
    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 646
    iput v8, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    .line 647
    :cond_12
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 648
    invoke-direct {p0, v4, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 650
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    .line 651
    :cond_13
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result v0

    if-nez v0, :cond_14

    .line 652
    const/16 v0, 0xa

    invoke-direct {p0, v4, v4, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 654
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    .line 655
    :cond_14
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 656
    const/16 v0, 0x8

    invoke-direct {p0, v4, v4, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 658
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_4

    .line 608
    :cond_15
    if-eqz p1, :cond_17

    .line 609
    if-eqz p2, :cond_16

    .line 610
    const-string v0, "Tried to enable BS when it\'s already MANUAL_ON"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 613
    :cond_16
    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 615
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    .line 616
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_1d

    .line 617
    invoke-direct {p0, v4, v4, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 619
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez v0, :cond_18

    .line 621
    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    .line 623
    :cond_18
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    .line 582
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez v0, :cond_1d

    .line 583
    if-eqz p1, :cond_1b

    .line 584
    if-nez p2, :cond_1a

    .line 585
    const-string v0, "Tried to disable BS when it\'s already OFF"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 588
    :cond_1a
    invoke-direct {p0, v5, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 590
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 591
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    .line 592
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 593
    invoke-direct {p0, v5, v4, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 595
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 596
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_4

    .line 597
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 598
    const/16 v0, 0x9

    invoke-direct {p0, v5, v4, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 600
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 601
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 709
    :cond_1d
    :goto_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 878
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 880
    const-string v1, "Battery saver state machine:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    const-string v1, "  Enabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 884
    const-string v1, "    full="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 886
    const-string v1, "    adaptive="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 888
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    const-string v1, " (advertise="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 891
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v1

    .line 890
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 892
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 894
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 895
    const-string v1, "  mState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 898
    const-string v1, "  mLastChangedIntReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 899
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 900
    const-string v1, "  mLastChangedStrReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const-string v1, "  mBootCompleted="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 905
    const-string v1, "  mSettingsLoaded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 907
    const-string v1, "  mBatteryStatusSet="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 910
    const-string v1, "  mIsPowered="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 912
    const-string v1, "  mBatteryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 914
    const-string v1, "  mIsBatteryLevelLow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 917
    const-string v1, "  mSettingBatterySaverEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 918
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 919
    const-string v1, "  mSettingBatterySaverEnabledSticky="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 921
    const-string v1, "  mSettingBatterySaverStickyAutoDisableEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 923
    const-string v1, "  mSettingBatterySaverStickyAutoDisableThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 925
    const-string v1, "  mSettingBatterySaverTriggerThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 927
    const-string v1, "  mBatterySaverStickyBehaviourDisabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 930
    const-string v1, "  mLastAdaptiveBatterySaverChangedExternallyElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    iget-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 932
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 936
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 937
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 939
    .local v1, "token":J
    const-wide v3, 0x10800000001L

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 940
    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v5

    .line 939
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 941
    const-wide v3, 0x10e00000012L

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 942
    const-wide v3, 0x1080000000eL

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 943
    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v5

    .line 942
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 944
    const-wide v3, 0x1080000000fL

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 945
    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v5

    .line 944
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 946
    const-wide v3, 0x10800000010L

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 947
    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v5

    .line 946
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 949
    const-wide v3, 0x10800000002L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 950
    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 951
    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 954
    const-wide v3, 0x10800000006L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 955
    const-wide v3, 0x10500000007L

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 956
    const-wide v3, 0x10800000008L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 958
    const-wide v3, 0x10800000009L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 960
    const-wide v3, 0x1080000000aL

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 962
    const-wide v3, 0x1050000000bL

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 964
    const-wide v3, 0x1080000000cL

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 967
    const-wide v3, 0x1050000000dL

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 972
    const-wide v3, 0x10300000011L

    iget-wide v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 977
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 978
    .end local v1    # "token":J
    monitor-exit v0

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getGlobalSetting(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    monitor-exit v0

    return v1

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$1$BatterySaverStateMachine()V
    .locals 1

    .line 469
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeBatterySaverSetting(I)V

    .line 470
    return-void
.end method

.method public synthetic lambda$onBootCompleted$0$BatterySaverStateMachine()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 301
    const-string/jumbo v1, "low_power_sticky"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 304
    const-string/jumbo v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    const-string v1, "automatic_power_save_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 310
    const-string v1, "dynamic_power_savings_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 313
    const-string v1, "dynamic_power_savings_disable_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 316
    const-string/jumbo v1, "low_power_sticky_auto_disable_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    const-string/jumbo v1, "low_power_sticky_auto_disable_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 324
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    const-string/jumbo v2, "low_power_sticky"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    move v2, v3

    .line 328
    .local v2, "lowPowerModeEnabledSticky":Z
    if-eqz v2, :cond_1

    .line 329
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 332
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    .line 334
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    .line 336
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 337
    .end local v2    # "lowPowerModeEnabledSticky":Z
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onBootCompleted()V
    .locals 2

    .line 290
    const-string/jumbo v0, "low_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 295
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$fEidyt_9TXlXBpF6D2lhOOrfOC4;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$fEidyt_9TXlXBpF6D2lhOOrfOC4;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method protected putGlobalSetting(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 870
    return-void
.end method

.method runOnBgThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 346
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method runOnBgThreadLazy(Ljava/lang/Runnable;I)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 355
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 356
    .local v0, "h":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

.method public setAdaptiveBatterySaverEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .line 509
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 511
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;

    .line 524
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 526
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBatterySaverEnabledManually(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 728
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    .line 732
    monitor-exit v0

    .line 733
    return-void

    .line 732
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBatteryStatus(ZIZ)V
    .locals 6
    .param p1, "newPowered"    # Z
    .param p2, "newLevel"    # I
    .param p3, "newBatteryLevelLow"    # Z

    .line 482
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    .line 485
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    const/4 v3, 0x0

    if-eq v2, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 486
    .local v2, "poweredChanged":Z
    :goto_0
    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    if-eq v4, p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 487
    .local v4, "levelChanged":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eq v5, p3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 489
    .local v1, "lowChanged":Z
    :goto_2
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 490
    monitor-exit v0

    return-void

    .line 493
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    .line 494
    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    .line 495
    iput-boolean p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    .line 497
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 498
    .end local v1    # "lowChanged":Z
    .end local v2    # "poweredChanged":Z
    .end local v4    # "levelChanged":Z
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSettingsLocked(ZZIZIIZI)V
    .locals 16
    .param p1, "batterySaverEnabled"    # Z
    .param p2, "batterySaverEnabledSticky"    # Z
    .param p3, "batterySaverTriggerThreshold"    # I
    .param p4, "isStickyAutoDisableEnabled"    # Z
    .param p5, "stickyAutoDisableThreshold"    # I
    .param p6, "automaticBatterySaver"    # I
    .param p7, "dynamicPowerSavingsBatterySaver"    # Z
    .param p8, "dynamicPowerSavingsDisableThreshold"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 413
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    .line 416
    move/from16 v9, p5

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 419
    .end local p5    # "stickyAutoDisableThreshold":I
    .local v9, "stickyAutoDisableThreshold":I
    iget-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    if-eq v10, v1, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 420
    .local v10, "enabledChanged":Z
    :goto_0
    iget-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eq v12, v2, :cond_1

    move v12, v8

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 422
    .local v12, "stickyChanged":Z
    :goto_1
    iget v13, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-eq v13, v3, :cond_2

    move v13, v8

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 424
    .local v13, "thresholdChanged":Z
    :goto_2
    iget-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eq v14, v4, :cond_3

    move v14, v8

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 426
    .local v14, "stickyAutoDisableEnabledChanged":Z
    :goto_3
    iget v15, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-eq v15, v9, :cond_4

    move v15, v8

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 428
    .local v15, "stickyAutoDisableThresholdChanged":Z
    :goto_4
    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-eq v11, v5, :cond_5

    move v11, v8

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    .line 429
    .local v11, "automaticModeChanged":Z
    :goto_5
    iget v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-eq v8, v7, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 431
    .local v8, "dynamicPowerSavingsThresholdChanged":Z
    :goto_6
    iget-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsBatterySaver:Z

    if-eq v7, v6, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    .line 434
    .local v7, "dynamicPowerSavingsBatterySaverChanged":Z
    :goto_7
    if-nez v10, :cond_8

    if-nez v12, :cond_8

    if-nez v13, :cond_8

    if-nez v11, :cond_8

    if-nez v14, :cond_8

    if-nez v15, :cond_8

    if-nez v8, :cond_8

    if-nez v7, :cond_8

    .line 437
    return-void

    .line 440
    :cond_8
    iput-boolean v1, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 441
    iput-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 442
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 443
    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 444
    iput v9, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    .line 445
    iput v5, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    .line 446
    move/from16 v2, p8

    iput v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    .line 447
    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsBatterySaver:Z

    .line 449
    if-eqz v13, :cond_9

    .line 451
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThreadLazy(Ljava/lang/Runnable;I)V

    .line 454
    :cond_9
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-nez v2, :cond_a

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 458
    :cond_a
    if-eqz v10, :cond_c

    .line 459
    if-eqz v1, :cond_b

    .line 460
    const-string v2, "Global.low_power changed to 1"

    goto :goto_8

    :cond_b
    const-string v2, "Global.low_power changed to 0"

    .line 461
    .local v2, "reason":Ljava/lang/String;
    :goto_8
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    .line 463
    .end local v2    # "reason":Ljava/lang/String;
    goto :goto_9

    .line 464
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 466
    :goto_9
    return-void
.end method

.method triggerDynamicModeNotification()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 791
    .local v0, "manager":Landroid/app/NotificationManager;
    const-string v1, "dynamic_mode_notification"

    const v2, 0x1040219

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 794
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 796
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 795
    const v3, 0x104021a

    const-string v4, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 794
    const-string v3, "BatterySaverStateMachine"

    const/16 v4, 0x7c8

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 800
    return-void
.end method

.method triggerStickyDisabledNotification()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 805
    .local v0, "manager":Landroid/app/NotificationManager;
    const-string v1, "battery_saver_channel"

    const v2, 0x10400f3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 808
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    .line 809
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, "percentage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 812
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v5, 0x10400f0

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 811
    const v4, 0x10400f5

    const-string v5, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 810
    const-string v4, "BatterySaverStateMachine"

    const/16 v5, 0x7c9

    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 817
    return-void
.end method
