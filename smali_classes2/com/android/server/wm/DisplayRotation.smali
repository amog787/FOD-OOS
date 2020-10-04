.class public Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$ContentObserverRegister;,
        Lcom/android/server/wm/DisplayRotation$SettingsObserver;,
        Lcom/android/server/wm/DisplayRotation$OrientationListener;,
        Lcom/android/server/wm/DisplayRotation$FixedToUserRotation;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field static final FIXED_TO_USER_ROTATION_DEFAULT:I = 0x0

.field static final FIXED_TO_USER_ROTATION_DISABLED:I = 0x1

.field static final FIXED_TO_USER_ROTATION_ENABLED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final isDefaultDisplay:Z

.field private mAllowAllRotations:I

.field private final mCarDockRotation:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppOrientation:I

.field private mDefaultFixedToUserRotation:Z

.field private mDemoHdmiRotation:I

.field private mDemoHdmiRotationLock:Z

.field private mDemoRotation:I

.field private mDemoRotationLock:Z

.field private final mDeskDockRotation:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field private mFixedToUserRotation:I

.field mLandscapeRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLidOpenRotation:I

.field private final mLock:Ljava/lang/Object;

.field private mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSeascapeRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field private mShowRotationSuggestions:I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSupportAutoRotation:Z

.field private final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserRotation:I

.field private mUserRotationMode:I

.field private mWifiDisplayConnected:Z

.field private mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiDisplayRotation:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 163
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "displayPolicy"    # Lcom/android/server/wm/DisplayPolicy;
    .param p4, "displayWindowSettings"    # Lcom/android/server/wm/DisplayWindowSettings;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "lock"    # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 103
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 105
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 137
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 159
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    .line 160
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    .line 187
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 188
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 189
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 190
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 191
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 192
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 193
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 197
    const v0, 0x10e0069

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 199
    const v0, 0x10e002b

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 201
    const v0, 0x10e0045

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 203
    const v0, 0x10e00c7

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 206
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 208
    .local v0, "uiHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 210
    new-instance v1, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 218
    new-instance v1, Lcom/android/server/wm/DisplayRotation$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$2;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    .end local v0    # "uiHandler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayRotation$3;

    invoke-direct {v0, p0, p5}, Lcom/android/server/wm/DisplayRotation$3;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;)V

    .line 284
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayRotation;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/DisplayRotation;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayRotation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 68
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayRotation$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/DisplayRotation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/wm/DisplayRotation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayRotation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 68
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayRotation;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoicePossible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayRotation;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isValidRotationChoice(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayRotation;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "allowAll"    # I

    .line 949
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 957
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 955
    :cond_0
    const-string v0, "true"

    return-object v0

    .line 953
    :cond_1
    const-string v0, "false"

    return-object v0

    .line 951
    :cond_2
    const-string v0, "unknown"

    return-object v0
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .line 844
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .line 840
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRotationChoicePossible(I)Z
    .locals 9
    .param p1, "orientation"    # I

    .line 875
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    return v2

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 886
    .local v0, "lidState":I
    if-ne v0, v1, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v3, :cond_2

    .line 887
    return v2

    .line 890
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v3

    .line 891
    .local v3, "dockMode":I
    const/4 v4, 0x0

    .line 892
    .local v4, "carDockEnablesAccelerometer":Z
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 893
    return v2

    .line 896
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 897
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v6

    .line 898
    .local v6, "deskDockEnablesAccelerometer":Z
    if-eq v3, v1, :cond_4

    const/4 v7, 0x3

    if-eq v3, v7, :cond_4

    const/4 v7, 0x4

    if-ne v3, v7, :cond_5

    :cond_4
    if-nez v6, :cond_5

    .line 902
    return v2

    .line 905
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v7

    .line 906
    .local v7, "hdmiPlugged":Z
    if-eqz v7, :cond_6

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v8, :cond_6

    .line 907
    return v2

    .line 909
    :cond_6
    if-eqz v7, :cond_7

    if-nez v3, :cond_7

    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v8, :cond_7

    .line 911
    return v2

    .line 913
    :cond_7
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v8, :cond_8

    .line 914
    return v2

    .line 916
    :cond_8
    iget-object v8, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 917
    return v2

    .line 919
    :cond_9
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v8, :cond_a

    .line 920
    return v2

    .line 924
    :cond_a
    const/4 v8, -0x1

    if-eq p1, v8, :cond_b

    if-eq p1, v5, :cond_b

    packed-switch p1, :pswitch_data_0

    .line 935
    return v2

    .line 931
    :cond_b
    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidRotationChoice(I)Z
    .locals 4
    .param p1, "preferredRotation"    # I

    .line 849
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 870
    return v3

    .line 852
    :pswitch_0
    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 858
    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    .line 862
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    .line 867
    :cond_2
    if-ltz p1, :cond_3

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private needSensorRunning()Z
    .locals 5

    .line 584
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 587
    return v1

    .line 590
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 591
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_1

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 597
    :cond_1
    return v3

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 602
    .local v0, "dockMode":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 604
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_5

    .line 610
    :cond_4
    return v3

    .line 613
    :cond_5
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v2, v3, :cond_7

    .line 625
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne v2, v3, :cond_6

    move v1, v3

    :cond_6
    return v1

    .line 628
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    return v1
.end method

.method private readRotation(I)I
    .locals 2
    .param p1, "resID"    # I

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .local v0, "rotation":I
    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 302
    .end local v0    # "rotation":I
    goto :goto_0

    .line 298
    .restart local v0    # "rotation":I
    :cond_0
    const/4 v1, 0x3

    return v1

    .line 296
    :cond_1
    const/4 v1, 0x2

    return v1

    .line 294
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 292
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 300
    .end local v0    # "rotation":I
    :catch_0
    move-exception v0

    .line 303
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 940
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_0

    .line 941
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_1

    .line 944
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    .line 946
    :cond_1
    return-void
.end method

.method private setUserRotation(II)V
    .locals 5
    .param p1, "userRotationMode"    # I
    .param p2, "userRotation"    # I

    .line 414
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 418
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 419
    .local v1, "accelerometerRotation":I
    :goto_0
    const/4 v2, -0x2

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 421
    const-string v3, "user_rotation"

    invoke-static {v0, v3, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 423
    return-void

    .line 426
    .end local v0    # "res":Landroid/content/ContentResolver;
    .end local v1    # "accelerometerRotation":I
    :cond_1
    const/4 v0, 0x0

    .line 427
    .local v0, "changed":Z
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v3, p1, :cond_2

    .line 428
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 429
    const/4 v0, 0x1

    .line 431
    :cond_2
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v3, p2, :cond_3

    .line 432
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 433
    const/4 v0, 0x1

    .line 435
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setUserRotation(Lcom/android/server/wm/DisplayContent;II)V

    .line 437
    if-eqz v0, :cond_4

    .line 438
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 441
    :cond_4
    return-void
.end method

.method private updateOrientationListenerLw()V
    .locals 7

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    .line 541
    .local v0, "screenOnEarly":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 542
    .local v1, "awake":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    .line 543
    .local v2, "keyguardDrawComplete":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v3

    .line 547
    .local v3, "windowManagerDrawComplete":Z
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenOnEarly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", awake="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", currentAppOrientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", orientationSensorEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", keyguardDrawComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", windowManagerDrawComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1
    const/4 v4, 0x1

    .line 557
    .local v4, "disable":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 558
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->needSensorRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 559
    const/4 v4, 0x0

    .line 561
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v5, :cond_2

    .line 568
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->enable(Z)V

    .line 573
    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-eqz v5, :cond_3

    .line 574
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->disable()V

    .line 576
    :cond_3
    return-void

    .line 537
    .end local v0    # "screenOnEarly":Z
    .end local v1    # "awake":Z
    .end local v2    # "keyguardDrawComplete":Z
    .end local v3    # "windowManagerDrawComplete":Z
    .end local v4    # "disable":Z
    :cond_4
    :goto_0
    return-void
.end method

.method private updateSettings()Z
    .locals 10

    .line 969
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 970
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 972
    .local v1, "shouldUpdateRotation":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 973
    const/4 v3, 0x0

    .line 977
    .local v3, "shouldUpdateOrientationListener":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 978
    move v4, v7

    goto :goto_0

    .line 979
    :cond_0
    const-string v4, "show_rotation_suggestions"

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    :goto_0
    nop

    .line 983
    .local v4, "showRotationSuggestions":I
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v8, v4, :cond_1

    .line 984
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 985
    const/4 v3, 0x1

    .line 989
    :cond_1
    const-string v8, "user_rotation"

    invoke-static {v0, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 992
    .local v8, "userRotation":I
    iget v9, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v9, v8, :cond_2

    .line 993
    iput v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 994
    const/4 v1, 0x1

    .line 998
    :cond_2
    const-string v9, "accelerometer_rotation"

    .line 997
    invoke-static {v0, v9, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    .line 999
    move v5, v7

    goto :goto_1

    .line 1000
    :cond_3
    nop

    :goto_1
    nop

    .line 1001
    .local v5, "userRotationMode":I
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v6, v5, :cond_4

    .line 1002
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1003
    const/4 v3, 0x1

    .line 1004
    const/4 v1, 0x1

    .line 1007
    :cond_4
    if-eqz v3, :cond_5

    .line 1008
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 1010
    .end local v3    # "shouldUpdateOrientationListener":Z
    .end local v4    # "showRotationSuggestions":I
    .end local v5    # "userRotationMode":I
    .end local v8    # "userRotation":I
    :cond_5
    monitor-exit v2

    .line 1012
    return v1

    .line 1010
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method configure(IIII)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "shortSizeDp"    # I
    .param p4, "longSizeDp"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 308
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x11100b3

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le p1, p2, :cond_1

    .line 309
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 310
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 313
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_0

    .line 315
    :cond_0
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 316
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_0

    .line 319
    :cond_1
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 320
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 323
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_0

    .line 325
    :cond_2
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 326
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 332
    :goto_0
    const-string v1, "persist.demo.hdmirotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_1

    .line 335
    :cond_3
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .line 337
    :goto_1
    const-string v1, "persist.demo.hdmirotationlock"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 341
    const-string v1, "persist.demo.remoterotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 342
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_2

    .line 344
    :cond_4
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .line 346
    :goto_2
    const-string v1, "persist.demo.rotationlock"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    .line 349
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 352
    .local v1, "isCar":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 354
    .local v2, "isTv":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v5

    .line 356
    .local v3, "forceDesktopMode":Z
    :goto_3
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v6, :cond_6

    if-eqz v3, :cond_7

    .line 361
    :cond_6
    const-string v6, "config.override_forced_orient"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    .line 362
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 1018
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLandscapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSeascapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPortraitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUpsideDownRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSupportAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_0

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1028
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCarDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeskDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1033
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowAllRotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDemoHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDemoHdmiRotationLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUndockedHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLidOpenRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method freezeRotation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 444
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move p1, v0

    .line 445
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 446
    return-void
.end method

.method public getCurrentAppOrientation()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getLandscapeRotation()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0
.end method

.method public getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object v0
.end method

.method public getPortraitRotation()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0
.end method

.method public getSeascapeRotation()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0
.end method

.method public getUpsideDownRotation()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0
.end method

.method public getUserRotation()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0
.end method

.method public getUserRotationMode()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return v0
.end method

.method isFixedToUserRotation()Z
    .locals 3

    .line 462
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 468
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return v0

    .line 466
    :cond_0
    return v1

    .line 464
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLandscapeOrSeascape()Z
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayRotation()I

    move-result v0

    .line 835
    .local v0, "rot":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    return v1
.end method

.method isRotationFrozen()Z
    .locals 5

    .line 453
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 454
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public onDisplayRemoved()V
    .locals 1

    .line 171
    new-instance v0, Lcom/android/server/wm/DisplayRotation$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayRotation$1;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    .line 179
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method

.method public onUserSwitch()V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    if-eqz v0, :cond_0

    .line 963
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    .line 965
    :cond_0
    return-void
.end method

.method respectAppRequestedOrientation()Z
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method restoreSettings(III)V
    .locals 4
    .param p1, "userRotationMode"    # I
    .param p2, "userRotation"    # I
    .param p3, "fixedToUserRotation"    # I

    .line 381
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 384
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 385
    return-void

    .line 387
    :cond_0
    const-string v0, " for "

    const-string v1, "WindowManager"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 p1, 0x0

    .line 393
    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_3

    .line 394
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 p2, 0x0

    .line 398
    :cond_3
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 399
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 400
    return-void
.end method

.method rotationForOrientation(II)I
    .locals 16
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .line 641
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const-string v4, "WindowManager"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotationForOrientation(orient="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", last="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "); user="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v6, v5, :cond_0

    .line 646
    const-string v6, "USER_ROTATION_LOCKED"

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 642
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_1
    new-array v3, v5, [I

    const/16 v6, 0x52

    const/4 v7, 0x0

    aput v6, v3, v7

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 653
    const-string v3, "Power off return ROTATION_0"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return v7

    .line 658
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 659
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v3

    .line 662
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 663
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_1

    .line 664
    :cond_4
    move v3, v4

    :goto_1
    nop

    .line 665
    .local v3, "sensorRotation":I
    if-gez v3, :cond_5

    .line 666
    move/from16 v3, p2

    .line 669
    :cond_5
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v6

    .line 670
    .local v6, "lidState":I
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v8

    .line 671
    .local v8, "dockMode":I
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v9

    .line 672
    .local v9, "hdmiPlugged":Z
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 673
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v10

    .line 674
    .local v10, "carDockEnablesAccelerometer":Z
    iget-object v11, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 675
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v11

    .line 678
    .local v11, "deskDockEnablesAccelerometer":Z
    iget-boolean v12, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v13, 0xc

    const/16 v14, 0xb

    if-nez v12, :cond_6

    .line 681
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .local v4, "preferredRotation":I
    goto/16 :goto_7

    .line 682
    .end local v4    # "preferredRotation":I
    :cond_6
    if-ne v6, v5, :cond_7

    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v12, :cond_7

    .line 684
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 685
    .end local v4    # "preferredRotation":I
    :cond_7
    const/4 v12, 0x2

    if-ne v8, v12, :cond_a

    if-nez v10, :cond_8

    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v15, :cond_a

    .line 690
    :cond_8
    if-eqz v10, :cond_9

    move v4, v3

    goto :goto_2

    :cond_9
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .restart local v4    # "preferredRotation":I
    :goto_2
    goto/16 :goto_7

    .line 691
    .end local v4    # "preferredRotation":I
    :cond_a
    const/4 v15, 0x4

    if-eq v8, v5, :cond_b

    const/4 v7, 0x3

    if-eq v8, v7, :cond_b

    if-ne v8, v15, :cond_c

    :cond_b
    if-nez v11, :cond_1d

    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v7, :cond_c

    goto/16 :goto_6

    .line 699
    :cond_c
    if-nez v9, :cond_d

    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v7, :cond_e

    :cond_d
    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v7, :cond_e

    .line 702
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 703
    .end local v4    # "preferredRotation":I
    :cond_e
    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v7, :cond_f

    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    if-le v7, v4, :cond_f

    .line 705
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 706
    .end local v4    # "preferredRotation":I
    :cond_f
    if-eqz v9, :cond_10

    if-nez v8, :cond_10

    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v7, :cond_10

    .line 712
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 713
    .end local v4    # "preferredRotation":I
    :cond_10
    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v7, :cond_11

    .line 716
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 717
    .end local v4    # "preferredRotation":I
    :cond_11
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 722
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 723
    .end local v4    # "preferredRotation":I
    :cond_12
    const/16 v7, 0xe

    if-ne v1, v7, :cond_13

    .line 725
    move/from16 v4, p2

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 726
    .end local v4    # "preferredRotation":I
    :cond_13
    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v7, :cond_14

    .line 729
    const/4 v4, -0x1

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 730
    .end local v4    # "preferredRotation":I
    :cond_14
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v5, 0xd

    const/16 v15, 0xa

    if-nez v7, :cond_15

    if-eq v1, v12, :cond_18

    if-eq v1, v4, :cond_18

    if-eq v1, v14, :cond_18

    if-eq v1, v13, :cond_18

    if-eq v1, v5, :cond_18

    :cond_15
    const/4 v4, 0x4

    if-eq v1, v4, :cond_18

    if-eq v1, v15, :cond_18

    const/4 v4, 0x6

    if-eq v1, v4, :cond_18

    const/4 v4, 0x7

    if-ne v1, v4, :cond_16

    goto :goto_3

    .line 757
    :cond_16
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    const/4 v4, 0x5

    if-eq v1, v4, :cond_17

    .line 763
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .restart local v4    # "preferredRotation":I
    goto :goto_7

    .line 767
    .end local v4    # "preferredRotation":I
    :cond_17
    const/4 v4, -0x1

    .restart local v4    # "preferredRotation":I
    goto :goto_7

    .line 742
    .end local v4    # "preferredRotation":I
    :cond_18
    :goto_3
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-gez v4, :cond_1a

    .line 746
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x111000c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 747
    const/4 v4, 0x1

    goto :goto_4

    :cond_19
    const/4 v4, 0x0

    :goto_4
    iput v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 749
    :cond_1a
    if-ne v3, v12, :cond_1c

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v7, 0x1

    if-eq v4, v7, :cond_1c

    if-eq v1, v15, :cond_1c

    if-ne v1, v5, :cond_1b

    goto :goto_5

    .line 755
    :cond_1b
    move/from16 v4, p2

    .restart local v4    # "preferredRotation":I
    goto :goto_7

    .line 753
    .end local v4    # "preferredRotation":I
    :cond_1c
    :goto_5
    move v4, v3

    .restart local v4    # "preferredRotation":I
    goto :goto_7

    .line 698
    .end local v4    # "preferredRotation":I
    :cond_1d
    :goto_6
    if-eqz v11, :cond_1e

    move v4, v3

    goto :goto_7

    :cond_1e
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 770
    .restart local v4    # "preferredRotation":I
    :goto_7
    if-eqz v1, :cond_2a

    const/4 v5, 0x1

    if-eq v1, v5, :cond_28

    if-eq v1, v14, :cond_25

    if-eq v1, v13, :cond_22

    packed-switch v1, :pswitch_data_0

    .line 824
    if-ltz v4, :cond_1f

    .line 825
    return v4

    .line 827
    :cond_1f
    const/4 v5, 0x0

    return v5

    .line 787
    :pswitch_0
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 788
    return v4

    .line 790
    :cond_20
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v5

    .line 794
    :pswitch_1
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 795
    return v4

    .line 797
    :cond_21
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v5

    .line 813
    :cond_22
    :pswitch_2
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 814
    return v4

    .line 816
    :cond_23
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 817
    return v2

    .line 819
    :cond_24
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v5

    .line 802
    :cond_25
    :pswitch_3
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 803
    return v4

    .line 805
    :cond_26
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 806
    return v2

    .line 808
    :cond_27
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v5

    .line 773
    :cond_28
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 774
    return v4

    .line 776
    :cond_29
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v5

    .line 780
    :cond_2a
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 781
    return v4

    .line 783
    :cond_2b
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setCurrentOrientation(I)V
    .locals 1
    .param p1, "newOrientation"    # I

    .line 371
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 372
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 373
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 377
    :cond_0
    return-void
.end method

.method setFixedToUserRotation(I)V
    .locals 3
    .param p1, "fixedToUserRotation"    # I

    .line 403
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_0

    .line 404
    return-void

    .line 407
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 411
    return-void
.end method

.method setRotation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 368
    :cond_0
    return-void
.end method

.method thawRotation()V
    .locals 2

    .line 449
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 450
    return-void
.end method

.method public updateOrientationListener()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 520
    monitor-exit v0

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
