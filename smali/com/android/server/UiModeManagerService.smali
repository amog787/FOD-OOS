.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;,
        Lcom/android/server/UiModeManagerService$LocalService;,
        Lcom/android/server/UiModeManagerService$Shell;
    }
.end annotation


# static fields
.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field public static final GBT_TAG:Ljava/lang/String; = "OPFD_UMS"

.field private static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field private static final KEY_ORIGIN_DARK_MODE_ACTION:Ljava/lang/String; = "origin_oem_black_mode"

.field private static final LOG:Z = false

.field private static final SYSTEM_PROPERTY_DEVICE_THEME:Ljava/lang/String; = "persist.sys.theme"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private mEnableCarDockLaunch:Z

.field private mForceDark:Z

.field private final mForceDarkObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field private final mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNightModeLocked:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPowerSave:Z

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/app/IUiModeManager$Stub;

.field private mSetUiMode:I

.field private mSetupWizardComplete:Z

.field private final mSetupWizardObserver:Landroid/database/ContentObserver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUiModeLocked:Z

.field private mVrHeadset:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 96
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 97
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 100
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 123
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 124
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 125
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 127
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 156
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 212
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 224
    new-instance v0, Lcom/android/server/UiModeManagerService$6;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 251
    new-instance v0, Lcom/android/server/UiModeManagerService$7;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mForceDarkObserver:Landroid/database/ContentObserver;

    .line 439
    new-instance v0, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setThemeMode()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/UiModeManagerService;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->updateForceDarkFromSettings(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/UiModeManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .line 80
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/res/Resources;
    .param p3, "x3"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 10

    .line 983
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 984
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 985
    nop

    .line 986
    const-string/jumbo v0, "statusbar"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 995
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_1

    .line 996
    const/high16 v1, 0x80000

    goto :goto_0

    .line 997
    :cond_1
    const/4 v1, 0x0

    .line 995
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1000
    :cond_2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_3

    .line 1001
    nop

    .line 1002
    const-string/jumbo v0, "notification"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1005
    :cond_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    .line 1006
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    .line 1007
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1009
    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    invoke-direct {v0, v6, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x10807e4

    .line 1011
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 1012
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1013
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 1014
    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x106001c

    .line 1015
    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x104011c

    .line 1018
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x104011b

    .line 1020
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1022
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1021
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1024
    .local v0, "n":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1025
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1024
    invoke-virtual {v1, v8, v7, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1026
    .end local v0    # "n":Landroid/app/Notification$Builder;
    .end local v2    # "carModeOffIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1027
    :cond_4
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v7, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1031
    :cond_5
    :goto_1
    return-void
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    return-object v0
.end method

.method private enableThemeMode()V
    .locals 5

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "origin_oem_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1224
    .local v0, "prevTheme":I
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1226
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.theme.status"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string/jumbo v1, "white"

    const-string v2, "black"

    const-string/jumbo v3, "oneplus_basiccolor"

    if-nez v0, :cond_0

    .line 1228
    invoke-static {v3, v2}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-static {v3, v1}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 1231
    invoke-static {v3, v1}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-static {v3, v2}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1233
    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 1234
    invoke-static {v3, v1}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-static {v3, v2}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_2
    :goto_0
    return-void
.end method

.method private static isDeskDockState(I)Z
    .locals 2
    .param p0, "state"    # I

    .line 714
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 720
    const/4 v0, 0x0

    return v0

    .line 718
    :cond_0
    return v0
.end method

.method private registerVrStateListener()V
    .locals 5

    .line 1043
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 1046
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v0, :cond_0

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1049
    :catch_0
    move-exception v1

    .line 1050
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1051
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 1052
    :goto_1
    return-void
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .locals 16
    .param p1, "category"    # Ljava/lang/String;

    .line 942
    move-object/from16 v1, p0

    const-string v2, "Could not start dock app: "

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 943
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 946
    const/4 v3, 0x0

    .line 947
    .local v3, "dockAppStarted":Z
    if-eqz p1, :cond_3

    .line 955
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 956
    .local v15, "homeIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 958
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x0

    const/4 v0, -0x2

    move-object v7, v15

    move-object v1, v15

    .end local v15    # "homeIntent":Landroid/content/Intent;
    .local v1, "homeIntent":Landroid/content/Intent;
    move v15, v0

    :try_start_1
    invoke-interface/range {v4 .. v15}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 961
    .local v0, "result":I
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 962
    const/4 v2, 0x1

    move v3, v2

    .end local v3    # "dockAppStarted":Z
    .local v2, "dockAppStarted":Z
    goto :goto_0

    .line 963
    .end local v2    # "dockAppStarted":Z
    .restart local v3    # "dockAppStarted":Z
    :cond_0
    const/16 v4, -0x5b

    if-eq v0, v4, :cond_1

    .line 964
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", startActivityWithConfig result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    .end local v0    # "result":I
    :cond_1
    :goto_0
    goto :goto_2

    .line 967
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v1    # "homeIntent":Landroid/content/Intent;
    .restart local v15    # "homeIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v15

    .line 968
    .end local v15    # "homeIntent":Landroid/content/Intent;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v1    # "homeIntent":Landroid/content/Intent;
    :goto_1
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 956
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "homeIntent":Landroid/content/Intent;
    .restart local v15    # "homeIntent":Landroid/content/Intent;
    :cond_2
    move-object v1, v15

    .line 974
    .end local v15    # "homeIntent":Landroid/content/Intent;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    .line 977
    if-eqz p1, :cond_4

    if-nez v3, :cond_4

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 980
    :cond_4
    return-void
.end method

.method private sendConfigurationLocked()V
    .locals 3

    .line 792
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 796
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .line 901
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 901
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 903
    return-void
.end method

.method private setThemeMode()V
    .locals 8

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1198
    .local v0, "themeMode":I
    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    if-nez v3, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1200
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1199
    const-string/jumbo v5, "origin_oem_black_mode"

    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1203
    :cond_0
    const-string/jumbo v3, "white"

    const-string v4, "black"

    const-string/jumbo v5, "oneplus_basiccolor"

    if-nez v0, :cond_1

    .line 1204
    invoke-static {v5, v4}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {v5, v3}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 1207
    invoke-static {v5, v3}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-static {v5, v4}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :cond_2
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    iget v7, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-ne v7, v6, :cond_3

    .line 1210
    invoke-static {v5, v3}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-static {v5, v4}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1214
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1215
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1214
    invoke-static {v6, v1, v2, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1216
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.theme.status"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-static {v5, v4}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-static {v5, v3}, Lcom/oneplus/os/OnePlusServiceManagerInjector;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :goto_0
    return-void
.end method

.method private setupWizardCompleteForCurrentUser()Z
    .locals 4

    .line 393
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 394
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 393
    const/4 v2, 0x0

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v1, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 913
    const-string v0, "android.intent.category.CAR_DOCK"

    goto :goto_0

    .line 915
    :cond_0
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 921
    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_0

    .line 925
    :cond_1
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    .line 926
    const-string v0, "android.intent.category.HOME"

    .line 937
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method private updateComputedNightModeLocked()V
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_0

    .line 1035
    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 1036
    .local v0, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1040
    .end local v0    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_0
    return-void
.end method

.method private updateConfigurationLocked()V
    .locals 5

    .line 725
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 726
    .local v0, "uiMode":I
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_1

    .line 729
    const/4 v0, 0x4

    goto :goto_0

    .line 730
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_2

    .line 731
    const/4 v0, 0x6

    goto :goto_0

    .line 732
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_3

    .line 733
    const/4 v0, 0x3

    goto :goto_0

    .line 734
    :cond_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 735
    const/4 v0, 0x2

    goto :goto_0

    .line 736
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_5

    .line 737
    const/4 v0, 0x7

    .line 740
    :cond_5
    :goto_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/16 v2, 0x20

    if-nez v1, :cond_8

    .line 741
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_6

    .line 742
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v3, v4}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 744
    :cond_6
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 745
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_1

    .line 746
    :cond_7
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    goto :goto_2

    .line 748
    :cond_8
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_9

    .line 749
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v3}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 751
    :cond_9
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 756
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v4, "oem_black_mode"

    invoke-static {v1, v4, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_a

    goto :goto_3

    :cond_a
    move v4, v3

    :goto_3
    move v1, v4

    .line 757
    .local v1, "blackModeOn":Z
    iget-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    and-int/2addr v4, v1

    iput-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    .line 758
    iget-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    if-eqz v4, :cond_b

    .line 759
    and-int/lit8 v0, v0, -0x1

    .line 760
    or-int/lit8 v0, v0, 0x8

    goto :goto_4

    .line 762
    :cond_b
    and-int/lit8 v0, v0, -0x9

    .line 763
    or-int/2addr v0, v3

    .line 768
    :goto_4
    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v3, :cond_c

    .line 769
    and-int/lit8 v0, v0, -0x11

    .line 770
    or-int/2addr v0, v2

    .line 785
    :cond_c
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 786
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v2, :cond_d

    .line 787
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 789
    :cond_d
    return-void
.end method

.method private updateDockState(I)V
    .locals 5
    .param p1, "newState"    # I

    .line 702
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_1

    .line 704
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 705
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 706
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    .line 707
    invoke-virtual {p0, v3, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 710
    :cond_1
    monitor-exit v0

    .line 711
    return-void

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateForceDarkFromSettings(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 429
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    .line 430
    .local v0, "oldForceDark":Z
    nop

    .line 431
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 430
    const/4 v2, 0x0

    const-string/jumbo v3, "oem_black_mode"

    invoke-static {v1, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 433
    .local v1, "blackModeOn":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "op_force_dark_mode"

    invoke-static {v4, v5, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    .line 435
    iget-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    if-eq v0, v4, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method private updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "userId"    # I

    .line 406
    const v0, 0x10e0039

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 408
    .local v0, "defaultNightMode":I
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 409
    .local v1, "oldNightMode":I
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ui_night_mode"

    invoke-static {v2, v3, v0, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    goto :goto_0

    .line 413
    :cond_0
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 416
    :goto_0
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private verifySetupWizardCompleted()V
    .locals 6

    .line 380
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 382
    .local v1, "userId":I
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 384
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 385
    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 384
    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 388
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 390
    :goto_0
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 632
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_0
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const-string v1, "  mDockState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 635
    const-string v1, " mLastBroadcastState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 636
    const-string v1, "  mNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->access$1800(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    const-string v1, " mNightModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 639
    const-string v1, " mCarModeEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 640
    const-string v1, " mComputedNightMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 641
    const-string v1, " mCarModeEnableFlags="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 642
    const-string v1, " mEnableCarDockLaunch="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 643
    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    const-string v1, " mUiModeLocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 645
    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 647
    const-string v1, " mSystemReady="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 648
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_0

    .line 650
    const-string v1, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 653
    :cond_0
    monitor-exit v0

    .line 654
    return-void

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onStart$0$UiModeManagerService(Landroid/os/PowerSaveState;)V
    .locals 3
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 314
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v1, v2, :cond_0

    .line 316
    monitor-exit v0

    return-void

    .line 318
    :cond_0
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 319
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    .line 320
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 322
    :cond_1
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onStart$1$UiModeManagerService()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 354
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    .line 355
    monitor-exit v0

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .line 658
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 661
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 662
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 663
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 664
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    .line 665
    invoke-virtual {p0, v4, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 666
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 668
    :cond_1
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 12

    .line 294
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 296
    .local v0, "context":Landroid/content/Context;
    nop

    .line 297
    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 298
    .local v1, "powerManager":Landroid/os/PowerManager;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 302
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 304
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 307
    .local v2, "batteryFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    const-class v3, Landroid/os/PowerManagerInternal;

    .line 310
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 311
    .local v3, "localPowerManager":Landroid/os/PowerManagerInternal;
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v5

    iget-boolean v5, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 312
    new-instance v5, Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;

    invoke-direct {v5, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$vYS4_RzjAavNRF50rrGN0tXI5JM;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 325
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 327
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 328
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10e0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 330
    const v5, 0x10e002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 332
    const v5, 0x10e0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v7, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 334
    const v5, 0x111006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 336
    const v5, 0x1110096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 337
    const v5, 0x1110095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 339
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 340
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "android.hardware.type.television"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 341
    const-string v8, "android.software.leanback"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v6, v7

    :cond_3
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 342
    const-string v6, "android.hardware.type.watch"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 344
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, v0, v4, v6}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 347
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/android/server/UiModeManagerService;->updateForceDarkFromSettings(Landroid/content/Context;I)Z

    .line 351
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v8, Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;

    invoke-direct {v8, p0}, Lcom/android/server/-$$Lambda$UiModeManagerService$vuGxqIEDBezs_Xyz-NAh0Bonp5g;-><init>(Lcom/android/server/UiModeManagerService;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".onStart"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 358
    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    const-string/jumbo v8, "uimode"

    invoke-virtual {p0, v8, v6}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 359
    const-class v6, Lcom/android/server/UiModeManagerInternal;

    iget-object v8, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {p0, v6, v8}, Lcom/android/server/UiModeManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 361
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 362
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    new-instance v8, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    iget-object v10, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v6, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 366
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 367
    const-string/jumbo v9, "op_force_dark_mode"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/UiModeManagerService;->mForceDarkObserver:Landroid/database/ContentObserver;

    .line 366
    const/4 v11, -0x1

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 371
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 372
    const-string/jumbo v9, "oem_black_mode"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/UiModeManagerService;->mForceDarkObserver:Landroid/database/ContentObserver;

    .line 371
    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 376
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 242
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 243
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 244
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 245
    return-void
.end method

.method setCarModeLocked(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "flags"    # I

    .line 671
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 672
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 675
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 677
    .local v0, "context":Landroid/content/Context;
    nop

    .line 678
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 679
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 677
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettings(Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 682
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateForceDarkFromSettings(Landroid/content/Context;I)Z

    .line 687
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->enableThemeMode()V

    .line 689
    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 693
    :cond_0
    const-string v0, "OPFD"

    const-string v1, "Op Disable ForceDark during CarMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mForceDark:Z

    .line 698
    :cond_1
    :goto_0
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 699
    return-void
.end method

.method updateLocked(II)V
    .locals 18
    .param p1, "enableFlags"    # I
    .param p2, "disableFlags"    # I

    .line 804
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 805
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 806
    .local v4, "oldAction":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 808
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_0

    .line 809
    :cond_0
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 810
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 813
    :cond_1
    :goto_0
    iget-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 814
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v5, v6, :cond_6

    .line 815
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 816
    if-eqz v4, :cond_2

    .line 817
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 819
    :cond_2
    iput v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 820
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_1

    .line 822
    :cond_3
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 823
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 824
    if-eqz v4, :cond_4

    .line 825
    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 827
    :cond_4
    iget v5, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 828
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_1

    .line 831
    :cond_5
    iput v7, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 832
    move-object v3, v4

    .line 835
    :cond_6
    :goto_1
    const/4 v5, 0x1

    if-eqz v3, :cond_7

    .line 848
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "enableFlags"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    const-string v9, "disableFlags"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 851
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 858
    iput-boolean v5, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 859
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 860
    .end local v8    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 861
    :cond_7
    const/4 v8, 0x0

    .line 862
    .local v8, "category":Ljava/lang/String;
    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v9, :cond_8

    .line 863
    iget-boolean v9, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v9, :cond_a

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a

    .line 865
    const-string v8, "android.intent.category.CAR_DOCK"

    goto :goto_2

    .line 867
    :cond_8
    iget v9, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v9}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 868
    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_a

    .line 870
    const-string v8, "android.intent.category.DESK_DOCK"

    goto :goto_2

    .line 873
    :cond_9
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_a

    .line 874
    const-string v8, "android.intent.category.HOME"

    .line 883
    :cond_a
    :goto_2
    invoke-direct {v0, v8}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 887
    .end local v8    # "category":Ljava/lang/String;
    :goto_3
    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v8, :cond_d

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v8, :cond_b

    iget-boolean v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v8, :cond_b

    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_c

    :cond_b
    iget v8, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    if-ne v8, v6, :cond_d

    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v6, :cond_d

    :cond_c
    goto :goto_4

    :cond_d
    move v5, v7

    .line 891
    .local v5, "keepScreenOn":Z
    :goto_4
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eq v5, v6, :cond_f

    .line 892
    if-eqz v5, :cond_e

    .line 893
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_5

    .line 895
    :cond_e
    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 898
    :cond_f
    :goto_5
    return-void
.end method
