.class Lcom/android/server/policy/LegacyGlobalActions;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "LegacyGlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

.field private mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/globalactions/ActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/globalactions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mOnDismiss:Ljava/lang/Runnable;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/globalactions/Action;

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
    .param p3, "onDismiss"    # Ljava/lang/Runnable;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    .line 114
    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 115
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    .line 737
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$9;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 759
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$10;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 770
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$11;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 779
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$12;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/LegacyGlobalActions$12;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 791
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$13;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$13;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 128
    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    .line 129
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 130
    nop

    .line 131
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 134
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    nop

    .line 141
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 142
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    .line 145
    nop

    .line 146
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 147
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 148
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 149
    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 148
    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 152
    .local v4, "vibrator":Landroid/os/Vibrator;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x11100f9

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    .line 157
    new-instance v0, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ActionsDialog;)Lcom/android/internal/globalactions/ActionsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/globalactions/ActionsDialog;

    .line 79
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p1, "x1"    # Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)Lcom/android/internal/globalactions/ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/globalactions/ToggleAction$State;

    .line 79
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    return-object v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/globalactions/Action;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/globalactions/Action;>;"
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 542
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 543
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 544
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 545
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 546
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 547
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 548
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v7, :cond_1

    goto :goto_1

    :cond_0
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v8, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    move v5, v6

    :goto_2
    move v11, v5

    .line 549
    .local v11, "isCurrentUser":Z
    iget-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v8, v5

    goto :goto_3

    .line 550
    :cond_2
    const/4 v5, 0x0

    move-object v8, v5

    :goto_3
    nop

    .line 551
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v12, Lcom/android/server/policy/LegacyGlobalActions$8;

    const v7, 0x10804a2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    iget-object v6, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const-string v6, "Primary"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    if-eqz v11, :cond_4

    const-string v6, " \u2714"

    goto :goto_5

    :cond_4
    const-string v6, ""

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v12

    move-object v6, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/LegacyGlobalActions$8;-><init>(Lcom/android/server/policy/LegacyGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 574
    .local v5, "switchToUser":Lcom/android/internal/globalactions/SinglePressAction;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "switchToUser":Lcom/android/internal/globalactions/SinglePressAction;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "isCurrentUser":Z
    :cond_5
    goto :goto_0

    .line 578
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_1

    .line 180
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 187
    :cond_1
    :goto_0
    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 828
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 829
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 831
    nop

    .line 828
    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 834
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 836
    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_1

    .line 837
    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_0
    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 839
    :cond_1
    return-void
.end method

.method private createDialog()Lcom/android/internal/globalactions/ActionsDialog;
    .locals 11

    .line 217
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    .line 222
    :goto_0
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$1;

    const v6, 0x10803c3

    const v7, 0x10803c5

    const v8, 0x104038f

    const v9, 0x104038e

    const v10, 0x104038d

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/LegacyGlobalActions$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    .line 264
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 267
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "defaultActions":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 271
    .local v1, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_d

    .line 272
    aget-object v3, v0, v2

    .line 273
    .local v3, "actionKey":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    goto/16 :goto_3

    .line 277
    :cond_1
    const-string/jumbo v5, "power"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/PowerAction;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v5, v6, v7}, Lcom/android/server/policy/PowerAction;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 279
    :cond_2
    const-string v5, "airplane"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 280
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 281
    :cond_3
    const-string v5, "bugreport"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bugreport_in_power_menu"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_c

    .line 283
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isCurrentUserOwner()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 284
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    invoke-direct {v5, p0}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 286
    :cond_4
    const-string/jumbo v5, "silent"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 287
    iget-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v4, :cond_c

    .line 288
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 290
    :cond_5
    const-string/jumbo v5, "users"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 291
    const-string v5, "fw.power_user_switcher"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 292
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/policy/LegacyGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 294
    :cond_6
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 295
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getSettingsAction()Lcom/android/internal/globalactions/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 296
    :cond_7
    const-string/jumbo v4, "lockdown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 297
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getLockdownAction()Lcom/android/internal/globalactions/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 298
    :cond_8
    const-string/jumbo v4, "voiceassist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 299
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getVoiceAssistAction()Lcom/android/internal/globalactions/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 300
    :cond_9
    const-string v4, "assist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 301
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getAssistAction()Lcom/android/internal/globalactions/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 302
    :cond_a
    const-string/jumbo v4, "restart"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 303
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/RestartAction;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v5, v6, v7}, Lcom/android/server/policy/RestartAction;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 305
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid global action key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LegacyGlobalActions"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_c
    :goto_2
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v3    # "actionKey":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 311
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v2}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 312
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getEmergencyAction()Lcom/android/internal/globalactions/Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_e
    new-instance v2, Lcom/android/internal/globalactions/ActionsAdapter;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$wqp7aD3DxIVGmy_uGo-yxhtwmQk;

    invoke-direct {v6, p0}, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$wqp7aD3DxIVGmy_uGo-yxhtwmQk;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    new-instance v7, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$MdLN6qUJHty5FwMejjTE2cTYSvc;

    invoke-direct {v7, p0}, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$MdLN6qUJHty5FwMejjTE2cTYSvc;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/android/internal/globalactions/ActionsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 318
    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 319
    .local v2, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 320
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 321
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 323
    new-instance v5, Lcom/android/internal/globalactions/ActionsDialog;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/android/internal/globalactions/ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 324
    .local v5, "dialog":Lcom/android/internal/globalactions/ActionsDialog;
    invoke-virtual {v5, v4}, Lcom/android/internal/globalactions/ActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 326
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 327
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 328
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/LegacyGlobalActions$2;

    invoke-direct {v4, p0}, Lcom/android/server/policy/LegacyGlobalActions$2;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 340
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 342
    invoke-virtual {v5}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 344
    invoke-virtual {v5, p0}, Lcom/android/internal/globalactions/ActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 346
    return-object v5
.end method

.method private getAssistAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 458
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$5;

    const v1, 0x108031b

    const v2, 0x104037d

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$5;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .line 529
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEmergencyAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 438
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$4;

    const v1, 0x10802c8

    const v2, 0x104037f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$4;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getLockdownAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 502
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$7;

    const v1, 0x108002f

    const v2, 0x1040381

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$7;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 415
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$3;

    const v1, 0x1080522

    const v2, 0x1040387

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$3;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 480
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$6;

    const v1, 0x108054c

    const v2, 0x104038b

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$6;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->awakenIfNecessary()V

    .line 191
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    .line 192
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->prepareDialog()V

    .line 195
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/globalactions/SinglePressAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/globalactions/LongPressAction;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    check-cast v0, Lcom/android/internal/globalactions/SinglePressAction;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/SinglePressAction;->onPress()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 202
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "LegacyGlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsDialog;->show()V

    .line 205
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 209
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .line 536
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 537
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private onAirplaneModeChanged()V
    .locals 3

    .line 814
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 816
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    move v0, v2

    .line 820
    .local v0, "airplaneModeOn":Z
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_0
    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 821
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    invoke-virtual {v2, v1}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 822
    return-void
.end method

.method private prepareDialog()V
    .locals 3

    .line 581
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    .line 582
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 583
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 584
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 585
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 589
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .line 592
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 594
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 595
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    check-cast v1, Lcom/android/internal/globalactions/ToggleAction;

    .line 596
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 595
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 598
    .end local v0    # "silentModeOn":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$createDialog$0$LegacyGlobalActions()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method public synthetic lambda$createDialog$1$LegacyGlobalActions()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 619
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/globalactions/Action;->onPress()V

    .line 623
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 603
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 604
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_1

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 611
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "LegacyGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .line 165
    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    .line 166
    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    .line 167
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->dismiss()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    .line 175
    :goto_0
    return-void
.end method
