.class public Lcom/android/server/inputmethod/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;,
        Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;,
        Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;,
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;,
        Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandResult;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

.field static final DEBUG:Z = false

.field private static final FALLBACK_DISPLAY_ID:I = 0x0

.field private static final IME_CONNECTION_BIND_FLAGS:I = 0x40800005

.field private static final IME_VISIBLE_BIND_FLAGS:I = 0x2c081001

.field static final MSG_APPLY_IME_VISIBILITY:I = 0xbfe

.field static final MSG_BIND_CLIENT:I = 0xbc2

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_DISPATCH_ON_INPUT_METHOD_LIST_UPDATED:I = 0x1392

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_INITIALIZE_IME:I = 0x410

.field static final MSG_INLINE_SUGGESTIONS_REQUEST:I = 0x1770

.field static final MSG_NOTIFY_IME_UID_TO_AUDIO_SERVICE:I = 0x1b58

.field static final MSG_REMOVE_IME_SURFACE:I = 0x424

.field static final MSG_REMOVE_IME_SURFACE_FROM_WINDOW:I = 0x425

.field static final MSG_REPORT_FULLSCREEN_MODE:I = 0xbe5

.field static final MSG_REPORT_PRE_RENDERED:I = 0xbf4

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

.field static final MSG_UNBIND_CLIENT:I = 0xbb8

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field private LONGSHOT_BLOCK_SHOWING_TIMEOUT:I

.field private mAccessibilityRequestingNoSoftKeyboard:Z

.field private mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdditionalSubtypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field mCurFocusedWindowSoftInputMode:I

.field private mCurHostInputToken:Landroid/os/IBinder;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurInputContextMissingMethods:I

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurMethodUid:I

.field private mCurPerceptible:Z

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurTokenDisplayId:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mHideRequestWindowMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field private final mImeTargetWindowMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInFullscreenMode:Z

.field final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;",
            ">;"
        }
    .end annotation
.end field

.field mInputShown:Z

.field mIsInteractive:Z

.field private final mIsLowRam:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field mLastImeTargetWindow:Landroid/os/IBinder;

.field private mLastSwitchUserId:I

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field private mLongshotBlockShowing:Z

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodMapUpdateCount:I

.field private final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mRes:Landroid/content/res/Resources;

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field private final mShowRequestWindowMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mShowRequested:Z

.field private final mSlotIme:Ljava/lang/String;

.field private final mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

.field private final mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private mSwitchingDialogToken:Landroid/os/IBinder;

.field mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 1694
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 358
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 379
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 380
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 387
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 391
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 407
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 496
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    .line 522
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    .line 608
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 680
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 706
    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    .line 728
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 730
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 757
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    .line 764
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 772
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 841
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 949
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    .line 957
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    .line 1114
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-direct {v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    .line 1118
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    invoke-direct {v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    .line 3274
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->LONGSHOT_BLOCK_SHOWING_TIMEOUT:I

    .line 3275
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLongshotBlockShowing:Z

    .line 1695
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1696
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1697
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1698
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1700
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 1701
    nop

    .line 1702
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1701
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1703
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1704
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1705
    const-class v3, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 1706
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1707
    new-instance v3, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 1708
    new-instance v3, Lcom/android/internal/os/HandlerCaller;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-direct {v3, p1, v0, v4, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1714
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1715
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1716
    const-class v3, Landroid/os/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1717
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v3, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    .line 1718
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.input_methods"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHasFeature:Z

    .line 1720
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10407a2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1721
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    .line 1723
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1724
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "android.allowDuringSetup"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1725
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 1727
    .local v3, "accentColor":I
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1729
    const v5, 0x10804e7

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1730
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1731
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1732
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1733
    const-string/jumbo v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1734
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1736
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1737
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1738
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1740
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1742
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    .line 1743
    const/4 v1, 0x0

    .line 1745
    .local v1, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 1748
    goto :goto_0

    .line 1746
    :catch_0
    move-exception v5

    .line 1747
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "InputMethodManagerService"

    const-string v7, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1750
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1753
    new-instance v5, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1754
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v13, v6, 0x1

    move-object v8, v5

    move v12, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1757
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v2, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1758
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v2, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1760
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 223
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/view/IInputMethodClient;

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserOnHandlerLocked(ILcom/android/internal/view/IInputMethodClient;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLongshotBlockShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p3, "x3"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethod(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportImeControl(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastSwitchUserId(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;
    .param p2, "x2"    # Z

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethod(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserAction(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/inputmethod/EditorInfo;

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportPreRendered(Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # Z

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeVisibility(Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    return-void
.end method

.method private applyImeVisibility(Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "setVisible"    # Z

    .line 4267
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4269
    monitor-exit v0

    return-void

    .line 4271
    :cond_0
    if-nez p3, :cond_1

    .line 4272
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    .line 4279
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    .line 4280
    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 4279
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->hideIme(Landroid/os/IBinder;I)V

    goto :goto_0

    .line 4285
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->showImePostLayout(Landroid/os/IBinder;)V

    .line 4287
    :cond_2
    :goto_0
    monitor-exit v0

    .line 4288
    return-void

    .line 4287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 2009
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2016
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OpStartAppControlInjector;->setCurrentIME(Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2020
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2019
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 2010
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- bind failed: service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const/4 v0, 0x0

    return v0
.end method

.method private calledFromValidUserLocked()Z
    .locals 6

    .line 1942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1943
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1951
    .local v1, "userId":I
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 1952
    return v2

    .line 1957
    :cond_0
    new-array v3, v2, [I

    const/16 v4, 0x1a

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3e7

    if-ne v1, v3, :cond_1

    .line 1959
    return v2

    .line 1963
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 1964
    return v2

    .line 1972
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1979
    return v2

    .line 1982
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 1983
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1982
    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    return v5
.end method

.method private calledWithValidTokenLocked(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1995
    if-eqz p1, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_0

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to an invalid token. uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1999
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const/4 v0, 0x0

    return v0

    .line 2003
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1996
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "token must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 3841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3842
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3843
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 3844
    return v2

    .line 3845
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3848
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3845
    invoke-static {v3, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3849
    return v2

    .line 3851
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    .line 4706
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4707
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 4706
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 4708
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    .line 4712
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4713
    const/4 v1, 0x1

    return v1

    .line 4716
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "checker"    # Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 2651
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 2657
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->displayCanShowIme(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p0

    :cond_1
    return v0

    .line 2652
    :cond_2
    :goto_0
    return v0
.end method

.method private createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5382
    if-eqz p1, :cond_6

    .line 5385
    if-eqz p3, :cond_5

    .line 5388
    if-eqz p2, :cond_4

    .line 5391
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 5392
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5396
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 5397
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5398
    .local v4, "uid":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5399
    monitor-exit v1

    return-object v3

    .line 5401
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_1

    .line 5402
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5404
    monitor-exit v1

    return-object v3

    .line 5409
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5410
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5412
    monitor-exit v1

    return-object v3

    .line 5415
    :cond_2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v8, v2

    .line 5417
    .local v8, "imeUserId":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5419
    .local v7, "appUserId":I
    invoke-static {p2, v8}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 5421
    .local v6, "contentUriOwnerUserId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 5428
    .local v3, "contentUriWithoutUserId":Landroid/net/Uri;
    new-instance v9, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v2, v9

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    monitor-exit v1

    return-object v9

    .line 5430
    .end local v3    # "contentUriWithoutUserId":Landroid/net/Uri;
    .end local v4    # "uid":I
    .end local v6    # "contentUriOwnerUserId":I
    .end local v7    # "appUserId":I
    .end local v8    # "imeUserId":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5393
    :cond_3
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "contentUri must have content scheme"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5389
    .end local v0    # "contentUriScheme":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5386
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5383
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .locals 4
    .param p1, "sessionState"    # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2784
    if-eqz p1, :cond_1

    .line 2785
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2787
    :try_start_0
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2791
    goto :goto_0

    .line 2788
    :catch_0
    move-exception v0

    .line 2789
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2790
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2792
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2794
    :cond_0
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 2795
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2796
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2799
    :cond_1
    return-void
.end method

.method private getActivityViewToScreenMatrixLocked(II)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "clientDisplayId"    # I
    .param p2, "imeDisplayId"    # I

    .line 2462
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 2463
    return-object v0

    .line 2465
    :cond_0
    move v1, p1

    .line 2466
    .local v1, "displayId":I
    const/4 v2, 0x0

    .line 2468
    .local v2, "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 2469
    .local v3, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v3, :cond_1

    .line 2470
    return-object v0

    .line 2472
    :cond_1
    if-nez v2, :cond_2

    .line 2473
    new-instance v4, Landroid/graphics/Matrix;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v2, v4

    goto :goto_1

    .line 2475
    :cond_2
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2477
    :goto_1
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-ne v4, p2, :cond_3

    .line 2478
    return-object v2

    .line 2480
    :cond_3
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget v1, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2481
    .end local v3    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    goto :goto_0
.end method

.method private getAppShowFlags()I
    .locals 2

    .line 2407
    const/4 v0, 0x0

    .line 2408
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_0

    .line 2409
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2410
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_1

    .line 2411
    or-int/lit8 v0, v0, 0x1

    .line 2413
    :cond_1
    :goto_0
    return v0
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 8

    .line 5202
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5203
    return-object v1

    .line 5205
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v0

    .line 5206
    .local v0, "subtypeIsSelected":Z
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 5207
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 5210
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v3, :cond_2

    .line 5211
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 5212
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    .line 5213
    .local v3, "subtypeId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 5217
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5218
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 5221
    .local v4, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 5222
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 5223
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 5224
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v7, "keyboard"

    invoke-static {v5, v4, v7, v1, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5227
    if-nez v5, :cond_4

    .line 5228
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v5, v4, v1, v1, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5233
    .end local v4    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    :goto_0
    goto :goto_1

    .line 5234
    :cond_5
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5237
    .end local v3    # "subtypeId":I
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v1

    .line 5208
    :cond_7
    :goto_2
    return-object v1
.end method

.method private getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 5247
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5248
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getEnabledInputMethodListLocked(I)Ljava/util/List;
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2083
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2086
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2087
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 2088
    .local v7, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v1

    .line 2090
    .local v8, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v8, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2091
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v8, v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 2093
    new-instance v9, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2094
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, v9

    move-object v4, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 2095
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method private getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 11
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 2239
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 2241
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2242
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    .line 2244
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2246
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 2247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2249
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2252
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2253
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 2254
    .local v7, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v1

    .line 2256
    .local v8, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v8, p3}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2257
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, v8, v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 2259
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 2260
    .local v9, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v9, :cond_3

    .line 2261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2263
    :cond_3
    new-instance v10, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2264
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, v10

    move-object v4, v0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 2265
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v9, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getImeShowFlags()I
    .locals 2

    .line 2396
    const/4 v0, 0x0

    .line 2397
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_0

    .line 2398
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 2400
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_1

    .line 2401
    or-int/lit8 v0, v0, 0x1

    .line 2403
    :cond_1
    :goto_0
    return v0
.end method

.method private getInputMethodListAsUser(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 5241
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5242
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getInputMethodListLocked(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2066
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2068
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_0

    .line 2070
    .end local v0    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2071
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2072
    .local v1, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2074
    .local v2, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2075
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    move-object v0, v1

    .line 2078
    .end local v1    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_0
    return-object v0
.end method

.method private getLastSwitchUserId(Landroid/os/ShellCommand;)I
    .locals 3
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5737
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5738
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5739
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 5740
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I
    .locals 5
    .param p0, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5843
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 5844
    .local v0, "nextOption":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5845
    nop

    .line 5853
    .end local v0    # "nextOption":Ljava/lang/String;
    const/4 v0, -0x2

    return v0

    .line 5847
    .restart local v0    # "nextOption":Ljava/lang/String;
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x5e8

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x4f7b216b

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_3
    const-string v2, "-u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_4

    .line 5852
    .end local v0    # "nextOption":Ljava/lang/String;
    goto :goto_0

    .line 5850
    .restart local v0    # "nextOption":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private handleSetInteractive(Z)V
    .locals 8
    .param p1, "interactive"    # Z

    .line 4688
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4689
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 4690
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 4693
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v2, :cond_3

    .line 4696
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetInteractive active:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mInFullscreenMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 4698
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    .line 4699
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    if-eqz v7, :cond_2

    move v1, v6

    :cond_2
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4698
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4702
    :cond_3
    monitor-exit v0

    .line 4703
    return-void

    .line 4702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .locals 17
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;
    .param p2, "enabled"    # Z

    .line 5809
    move-object/from16 v7, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v8

    .line 5810
    .local v8, "userIdToBeResolved":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 5811
    .local v9, "imeId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 5812
    .local v10, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    .line 5813
    .local v11, "error":Ljava/io/PrintWriter;
    iget-object v12, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 5814
    :try_start_0
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5815
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 5814
    invoke-static {v8, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 5816
    .local v0, "userIds":[I
    array-length v13, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_1

    aget v1, v0, v15

    move v6, v1

    .line 5817
    .local v6, "userId":I
    move-object/from16 v5, p1

    invoke-direct {v7, v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5818
    goto :goto_1

    .line 5820
    :cond_0
    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v9

    move/from16 v4, p2

    move-object v5, v10

    move/from16 v16, v6

    .end local v6    # "userId":I
    .local v16, "userId":I
    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)V

    .line 5816
    .end local v16    # "userId":I
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5823
    .end local v0    # "userIds":[I
    :cond_1
    monitor-exit v12

    .line 5824
    return v14

    .line 5823
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .locals 19
    .param p1, "userId"    # I
    .param p2, "imeId"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "out"    # Ljava/io/PrintWriter;
    .param p5, "error"    # Ljava/io/PrintWriter;

    .line 5860
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    .line 5861
    .local v12, "failedToEnableUnknownIme":Z
    const/4 v13, 0x0

    .line 5862
    .local v13, "previouslyEnabled":Z
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v7, v1, :cond_1

    .line 5863
    if-eqz v9, :cond_0

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5864
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 5866
    :cond_0
    invoke-direct {v0, v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v13

    goto/16 :goto_2

    .line 5869
    :cond_1
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v1

    .line 5870
    .local v14, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 5871
    .local v15, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v1

    .line 5873
    .local v6, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v6, v7}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5874
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v6, v14, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5876
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5877
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object v4, v14

    move/from16 v5, p1

    move-object/from16 v18, v6

    .end local v6    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v18, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 5878
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    if-eqz v9, :cond_5

    .line 5879
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5880
    const/4 v12, 0x1

    goto :goto_2

    .line 5882
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5883
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5884
    const/4 v2, 0x1

    .line 5885
    .end local v13    # "previouslyEnabled":Z
    .local v2, "previouslyEnabled":Z
    move v13, v2

    goto :goto_1

    .line 5887
    .end local v2    # "previouslyEnabled":Z
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v13    # "previouslyEnabled":Z
    :cond_3
    goto :goto_0

    .line 5888
    :cond_4
    :goto_1
    if-nez v13, :cond_6

    .line 5889
    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    goto :goto_2

    .line 5893
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5896
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v3

    .line 5894
    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v13

    .line 5899
    .end local v1    # "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .end local v14    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v18    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_6
    :goto_2
    if-eqz v12, :cond_7

    .line 5900
    const-string v1, "Unknown input method "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5901
    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cannot be enabled for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 5904
    :cond_7
    const-string v1, "Input method "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5905
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5906
    const-string v1, ": "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5907
    if-ne v9, v13, :cond_8

    const-string v1, "already "

    goto :goto_3

    :cond_8
    const-string/jumbo v1, "now "

    :goto_3
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5908
    if-eqz v9, :cond_9

    const-string v1, "enabled"

    goto :goto_4

    :cond_9
    const-string v1, "disabled"

    :goto_4
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5909
    const-string v1, " for user #"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5910
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 5912
    :goto_5
    return-void
.end method

.method private handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .locals 16
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5751
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 5752
    .local v0, "all":Z
    const/4 v2, 0x0

    .line 5753
    .local v2, "brief":Z
    const/4 v3, -0x2

    move v4, v3

    move v3, v2

    move v2, v0

    .line 5755
    .end local v0    # "all":Z
    .local v2, "all":Z
    .local v3, "brief":Z
    .local v4, "userIdToBeResolved":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 5756
    .local v0, "nextOption":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_5

    .line 5757
    nop

    .line 5772
    .end local v0    # "nextOption":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 5773
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5774
    .local v0, "pr":Ljava/io/PrintWriter;
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5775
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 5774
    invoke-static {v4, v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v8

    .line 5776
    .local v8, "userIds":[I
    array-length v9, v8

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_4

    aget v11, v8, v10

    .line 5777
    .local v11, "userId":I
    if-eqz v2, :cond_0

    .line 5778
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v12

    goto :goto_2

    .line 5779
    :cond_0
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v12

    :goto_2
    nop

    .line 5780
    .local v12, "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    array-length v13, v8

    if-le v13, v6, :cond_1

    .line 5781
    const-string v13, "User #"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5782
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5783
    const-string v13, ":"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5785
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 5786
    .local v14, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v3, :cond_2

    .line 5787
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 5789
    :cond_2
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5790
    const-string v15, ":"

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5791
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/inputmethod/-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8;

    invoke-direct {v15, v0}, Lcom/android/server/inputmethod/-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8;-><init>(Ljava/io/PrintWriter;)V

    const-string v6, "  "

    invoke-virtual {v14, v15, v6}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5793
    .end local v14    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :goto_4
    const/4 v6, 0x1

    goto :goto_3

    .line 5776
    .end local v11    # "userId":I
    .end local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto :goto_1

    .line 5795
    .end local v0    # "pr":Ljava/io/PrintWriter;
    .end local v8    # "userIds":[I
    :cond_4
    monitor-exit v7

    .line 5796
    return v5

    .line 5795
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5759
    .local v0, "nextOption":Ljava/lang/String;
    :cond_5
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x5d4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v8, :cond_a

    const/16 v5, 0x5e6

    if-eq v7, v5, :cond_9

    const/16 v5, 0x5e8

    if-eq v7, v5, :cond_8

    const v5, 0x4f7b216b

    if-eq v7, v5, :cond_7

    :cond_6
    goto :goto_5

    :cond_7
    const-string v5, "--user"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v9

    goto :goto_6

    :cond_8
    const-string v5, "-u"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v10

    goto :goto_6

    :cond_9
    const-string v5, "-s"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const-string v7, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_6

    :goto_5
    move v5, v6

    :goto_6
    if-eqz v5, :cond_d

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    if-eq v5, v10, :cond_b

    if-eq v5, v9, :cond_b

    goto :goto_7

    .line 5768
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    .line 5764
    :cond_c
    const/4 v3, 0x1

    .line 5765
    goto :goto_7

    .line 5761
    :cond_d
    const/4 v2, 0x1

    .line 5762
    nop

    .line 5771
    .end local v0    # "nextOption":Ljava/lang/String;
    :goto_7
    goto/16 :goto_0
.end method

.method private handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .locals 20
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5958
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5959
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v3

    .line 5960
    .local v3, "userIdToBeResolved":I
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 5961
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5962
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 5961
    invoke-static {v3, v0, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 5963
    .local v0, "userIds":[I
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget v8, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5964
    .local v8, "userId":I
    move-object/from16 v15, p1

    :try_start_1
    invoke-direct {v1, v8, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 5965
    goto/16 :goto_2

    .line 5969
    :cond_0
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 5970
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v6, v11, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 5972
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 5974
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5976
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9, v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5978
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;

    invoke-direct {v10, v1}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5981
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$Ufznp6QtlvKmc-UE2qM5QE0C6tE;

    invoke-direct {v10, v1}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$Ufznp6QtlvKmc-UE2qM5QE0C6tE;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5983
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 5984
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5985
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5986
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5987
    invoke-virtual {v12}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v12

    .line 5984
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 5988
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v9

    .line 5989
    .local v9, "nextIme":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_1

    .line 5991
    .end local v9    # "nextIme":Ljava/lang/String;
    .end local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_1
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v9

    .line 5992
    .local v14, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v9

    .line 5993
    .local v13, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v9

    .line 5995
    .local v12, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v12, v8}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5996
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9, v8, v12, v14, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5998
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5999
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v17, 0x0

    move-object/from16 v9, v16

    move-object/from16 v18, v12

    .end local v12    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v18, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    move-object v12, v14

    move-object v6, v13

    .end local v13    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v6, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    move v13, v8

    move-object/from16 v19, v14

    .end local v14    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v19, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    move/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    move-object/from16 v9, v16

    .line 6002
    .local v9, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 6003
    .restart local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 6006
    .local v11, "nextIme":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v9, v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 6007
    new-instance v12, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$fNiO49PxZWEh32vCF6nuqhrDtOw;

    invoke-direct {v12, v9}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$fNiO49PxZWEh32vCF6nuqhrDtOw;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    invoke-interface {v10, v12}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 6011
    invoke-virtual {v9, v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 6012
    const/4 v12, -0x1

    invoke-virtual {v9, v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    move-object v9, v11

    .line 6014
    .end local v6    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v11    # "nextIme":Ljava/lang/String;
    .end local v18    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v19    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v9, "nextIme":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset current and enabled IMEs for user #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Selected: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6016
    new-instance v6, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$i1_7vZfXoh5fbjEb2f7kLcAViOU;

    invoke-direct {v6, v2}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$i1_7vZfXoh5fbjEb2f7kLcAViOU;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v10, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5963
    .end local v8    # "userId":I
    .end local v9    # "nextIme":Ljava/lang/String;
    .end local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v15, p1

    .line 6018
    .end local v0    # "userIds":[I
    monitor-exit v4

    .line 6019
    const/4 v0, 0x0

    return v0

    .line 6018
    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .locals 12
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5922
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v0

    .line 5923
    .local v0, "userIdToBeResolved":I
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 5924
    .local v1, "imeId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5925
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 5926
    .local v3, "error":Ljava/io/PrintWriter;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 5927
    :try_start_0
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5928
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    .line 5927
    invoke-static {v0, v5, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v5

    .line 5929
    .local v5, "userIds":[I
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget v9, v5, v8

    .line 5930
    .local v9, "userId":I
    invoke-direct {p0, v9, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5931
    goto :goto_1

    .line 5933
    :cond_0
    invoke-direct {p0, v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethod(Ljava/lang/String;I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 5934
    .local v10, "failedToSelectUnknownIme":Z
    if-eqz v10, :cond_1

    .line 5935
    const-string v11, "Unknown input method "

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5936
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5937
    const-string v11, " cannot be selected for user #"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5938
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    .line 5940
    :cond_1
    const-string v11, "Input method "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5941
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5942
    const-string v11, " selected for user #"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5943
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 5929
    .end local v9    # "userId":I
    .end local v10    # "failedToSelectUnknownIme":Z
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5946
    .end local v5    # "userIds":[I
    :cond_2
    monitor-exit v4

    .line 5947
    return v7

    .line 5946
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 4315
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4316
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4317
    monitor-exit v0

    return-void

    .line 4319
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4321
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v3, p2, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4326
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4327
    nop

    .line 4328
    .end local v1    # "ident":J
    monitor-exit v0

    .line 4329
    return-void

    .line 4326
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4327
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "flags":I
    throw v3

    .line 4328
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "flags":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 2951
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScreenLocked()Z
    .locals 1

    .line 4897
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 4898
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4897
    :goto_0
    return v0
.end method

.method static synthetic lambda$handleMessage$1(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 0
    .param p0, "imes"    # Ljava/util/List;
    .param p1, "userId"    # I
    .param p2, "listener"    # Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    .line 4652
    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;->onInputMethodListUpdated(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$4(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2
    .param p0, "settings"    # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 6007
    nop

    .line 6008
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 6007
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$5(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintWriter;
    .param p1, "ime"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 6016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private notifyUserAction(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4237
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v1, p1, :cond_0

    .line 4243
    monitor-exit v0

    return-void

    .line 4245
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 4246
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1

    .line 4247
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4249
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    monitor-exit v0

    .line 4250
    return-void

    .line 4249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p3, "callback"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 5255
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5256
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onCreateInlineSuggestionsRequestLocked(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 5257
    monitor-exit v0

    .line 5258
    return-void

    .line 5257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCreateInlineSuggestionsRequestLocked(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p3, "callback"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 2101
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2103
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 2104
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isInlineSuggestionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_0

    .line 2105
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x1770

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    new-instance v11, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;

    .line 2108
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object v5, v11

    move-object v6, p3

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;-><init>(Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 2106
    invoke-virtual {v2, v3, v4, p2, v11}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2105
    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_0

    .line 2111
    :cond_0
    invoke-interface {p3}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    :goto_0
    goto :goto_1

    .line 2113
    :catch_0
    move-exception v1

    .line 2114
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling onCreateInlineSuggestionsRequest(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method static queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .line 4722
    .local p2, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p3, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p4, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 4723
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 4728
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4733
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4734
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 4736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4737
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 4738
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4739
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v4

    .line 4740
    .local v4, "imeId":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "InputMethodManagerService"

    if-nez v5, :cond_0

    .line 4741
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping input method "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": it does not require the permission "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    goto :goto_1

    .line 4750
    :cond_0
    :try_start_0
    new-instance v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 4751
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v5, p0, v2, v6}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 4752
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4753
    goto :goto_1

    .line 4755
    :cond_1
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4756
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4762
    nop

    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_1

    .line 4760
    :catch_0
    move-exception v5

    .line 4761
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load input method "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4736
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    .end local v4    # "imeId":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4764
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private reportFullscreenMode(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fullscreen"    # Z

    .line 5435
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5436
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5437
    monitor-exit v0

    return-void

    .line 5439
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_2

    .line 5440
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 5441
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe5

    .line 5442
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5441
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 5444
    :cond_2
    monitor-exit v0

    .line 5445
    return-void

    .line 5444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportImeControl(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 5306
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-eq v1, p1, :cond_0

    .line 5310
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 5312
    :cond_0
    monitor-exit v0

    .line 5313
    return-void

    .line 5312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportPreRendered(Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/view/inputmethod/EditorInfo;

    .line 4254
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4255
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4256
    monitor-exit v0

    return-void

    .line 4258
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    .line 4259
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbf4

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4262
    :cond_1
    monitor-exit v0

    .line 4263
    return-void

    .line 4262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startInputToken"    # Landroid/os/IBinder;

    .line 2995
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2996
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2997
    monitor-exit v0

    return-void

    .line 2999
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 3000
    .local v1, "targetWindow":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    if-eq v2, v1, :cond_1

    .line 3001
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 3003
    :cond_1
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 3004
    .end local v1    # "targetWindow":Landroid/os/IBinder;
    monitor-exit v0

    .line 3005
    return-void

    .line 3004
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1773
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 1774
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1779
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1778
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1780
    .local v0, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1781
    const-string v1, "InputMethodManagerService"

    const-string v2, "No default found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    return-void

    .line 1784
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1788
    .local v2, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1789
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    .line 5170
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 5171
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, -0x1

    .line 5173
    .local v1, "lastSubtypeId":I
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5174
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5175
    .local v2, "subtypeHashCode":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 5177
    nop

    .line 5178
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5177
    invoke-static {v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 5181
    goto :goto_0

    .line 5179
    :catch_0
    move-exception v3

    .line 5180
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HashCode for subtype looks broken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5184
    .end local v2    # "subtypeHashCode":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5185
    return-void
.end method

.method private scheduleNotifyImeUidToAudioService(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2662
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 2663
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2664
    return-void
.end method

.method private setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .line 2957
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 2959
    .local v0, "topFocusedDisplayId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2960
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2961
    monitor-exit v1

    return-void

    .line 2967
    :cond_0
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v2, v0, :cond_1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eqz v2, :cond_1

    .line 2969
    monitor-exit v1

    return-void

    .line 2971
    :cond_1
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2972
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 2973
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2974
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2977
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_4

    const/4 v3, 0x2

    if-eq p3, v3, :cond_3

    .line 2986
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .local v3, "dismissImeOnBackKeyPressed":Z
    :goto_0
    goto :goto_1

    .line 2979
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :cond_3
    const/4 v3, 0x1

    .line 2980
    .restart local v3    # "dismissImeOnBackKeyPressed":Z
    goto :goto_1

    .line 2982
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :cond_4
    const/4 v3, 0x0

    .line 2983
    .restart local v3    # "dismissImeOnBackKeyPressed":Z
    nop

    .line 2989
    :goto_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodWindowStatus(Landroid/os/IBinder;ZZ)V

    .line 2991
    return-void

    .line 2974
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .line 3900
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3901
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3902
    monitor-exit v0

    return-void

    .line 3904
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3905
    monitor-exit v0

    .line 3906
    return-void

    .line 3905
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 3911
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3912
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3913
    monitor-exit v0

    return-void

    .line 3915
    :cond_0
    if-eqz p3, :cond_1

    .line 3916
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 3917
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3918
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 3917
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3916
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0

    .line 3920
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3922
    :goto_0
    monitor-exit v0

    .line 3923
    return-void

    .line 3922
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 5109
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5110
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 5112
    .local v0, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 5113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 5114
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5117
    return v1

    .line 5119
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_0

    .line 5120
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 5122
    return v2

    .line 5124
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5125
    .local v3, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, v3, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5128
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 5129
    .local v2, "selId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5130
    const-string v4, "InputMethodManagerService"

    const-string v5, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5131
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5134
    :cond_3
    return v1

    .line 5138
    .end local v2    # "selId":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .line 4291
    if-nez p1, :cond_1

    .line 4292
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4295
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4299
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_2

    .line 4300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring setInputMethod of uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    return-void

    .line 4305
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4307
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4309
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4310
    nop

    .line 4311
    return-void

    .line 4309
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4310
    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 3
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    .line 5145
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5148
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 5152
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 5153
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 5154
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5155
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5156
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 5157
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5159
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_1

    .line 5149
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5163
    :goto_1
    if-nez p3, :cond_4

    .line 5165
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5167
    :cond_4
    return-void
.end method

.method private shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4029
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4030
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4031
    monitor-exit v0

    return v2

    .line 4033
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 4034
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4033
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 4035
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_1

    .line 4036
    monitor-exit v0

    return v2

    .line 4038
    :cond_1
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 4039
    .end local v1    # "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .locals 16
    .param p1, "visibility"    # I

    .line 2889
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2890
    :cond_0
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    return v2

    .line 2891
    :cond_1
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    .line 2892
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 2893
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_11

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    goto/16 :goto_5

    .line 2897
    :cond_3
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 2902
    return v3

    .line 2903
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_5

    .line 2904
    return v2

    .line 2907
    :cond_5
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2908
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 2909
    .local v4, "N":I
    const/4 v5, 0x2

    if-le v4, v5, :cond_6

    return v3

    .line 2910
    :cond_6
    if-ge v4, v3, :cond_7

    return v2

    .line 2911
    :cond_7
    const/4 v5, 0x0

    .line 2912
    .local v5, "nonAuxCount":I
    const/4 v6, 0x0

    .line 2913
    .local v6, "auxCount":I
    const/4 v7, 0x0

    .line 2914
    .local v7, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v8, 0x0

    .line 2915
    .local v8, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_b

    .line 2916
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2917
    .local v10, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2918
    invoke-virtual {v11, v12, v10, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2919
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 2920
    .local v12, "subtypeCount":I
    if-nez v12, :cond_8

    .line 2921
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2923
    :cond_8
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v12, :cond_a

    .line 2924
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2925
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v15

    if-nez v15, :cond_9

    .line 2926
    add-int/lit8 v5, v5, 0x1

    .line 2927
    move-object v7, v14

    goto :goto_2

    .line 2929
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 2930
    move-object v8, v14

    .line 2923
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2915
    .end local v10    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "subtypeCount":I
    .end local v13    # "j":I
    :cond_a
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2935
    .end local v9    # "i":I
    :cond_b
    if-gt v5, v3, :cond_10

    if-le v6, v3, :cond_c

    goto :goto_4

    .line 2937
    :cond_c
    if-ne v5, v3, :cond_f

    if-ne v6, v3, :cond_f

    .line 2938
    if-eqz v7, :cond_e

    if-eqz v8, :cond_e

    .line 2939
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 2940
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-nez v9, :cond_d

    .line 2941
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    nop

    .line 2942
    const-string v9, "TrySuppressingImeSwitcher"

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2943
    return v2

    .line 2945
    :cond_e
    return v3

    .line 2947
    :cond_f
    return v2

    .line 2936
    :cond_10
    :goto_4
    return v3

    .line 2895
    .end local v1    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "N":I
    .end local v5    # "nonAuxCount":I
    .end local v6    # "auxCount":I
    .end local v7    # "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_11
    :goto_5
    return v2
.end method

.method private showConfigureInputMethods()V
    .locals 4

    .line 4889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4890
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4893
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4894
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .line 4874
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4875
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4878
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4879
    const-string/jumbo v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4882
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4883
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 4884
    .local v2, "userId":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4885
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4886
    return-void

    .line 4884
    .end local v2    # "userId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private showInputMethodMenu(ZI)V
    .locals 23
    .param p1, "showAuxSubtypes"    # Z
    .param p2, "displayId"    # I

    .line 4904
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isScreenLocked()Z

    move-result v3

    .line 4906
    .local v3, "isScreenLocked":Z
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 4907
    .local v4, "lastInputMethodId":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v5

    .line 4910
    .local v5, "lastInputMethodSubtypeId":I
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 4911
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4912
    move/from16 v7, p1

    :try_start_1
    invoke-virtual {v0, v7, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v0

    .line 4914
    .local v0, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_0

    .line 4915
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 5035
    .end local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :catchall_0
    move-exception v0

    move/from16 v17, v3

    goto/16 :goto_4

    .line 4918
    .restart local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4920
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 4921
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 4922
    .local v9, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v9, :cond_1

    .line 4923
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 4924
    .local v10, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 4925
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    .line 4924
    invoke-static {v10, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v11

    .line 4929
    .end local v9    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 4930
    .local v9, "N":I
    new-array v10, v9, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4931
    new-array v10, v9, [I

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4932
    const/4 v10, 0x0

    .line 4933
    .local v10, "checkedItem":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_5

    .line 4934
    :try_start_6
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4935
    .local v12, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v14, v12, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v14, v13, v11

    .line 4936
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    iget v14, v12, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v14, v13, v11

    .line 4937
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v13, v13, v11

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4938
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    aget v13, v13, v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4939
    .local v13, "subtypeId":I
    if-eq v13, v8, :cond_3

    if-ne v5, v8, :cond_2

    if-eqz v13, :cond_3

    :cond_2
    if-ne v13, v5, :cond_4

    .line 4942
    :cond_3
    move v10, v11

    .line 4933
    .end local v12    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v13    # "subtypeId":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4947
    .end local v11    # "i":I
    :cond_5
    :try_start_7
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    .line 4948
    .local v8, "currentThread":Landroid/app/ActivityThread;
    new-instance v11, Landroid/view/ContextThemeWrapper;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4949
    if-nez v2, :cond_6

    :try_start_8
    invoke-virtual {v8}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 4950
    :cond_6
    :try_start_9
    invoke-virtual {v8, v2}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v12

    :goto_1
    const v13, 0x1030223

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4953
    .local v11, "settingsContext":Landroid/content/Context;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4954
    new-instance v13, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-direct {v13, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4961
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 4962
    .local v12, "dialogContext":Landroid/content/Context;
    sget-object v13, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v14, 0x101005d

    const/4 v15, 0x0

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 4965
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 4967
    .local v14, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 4969
    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 4971
    const-class v15, Landroid/view/LayoutInflater;

    invoke-virtual {v12, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4972
    .local v15, "inflater":Landroid/view/LayoutInflater;
    move/from16 v17, v3

    .end local v3    # "isScreenLocked":Z
    .local v17, "isScreenLocked":Z
    const v3, 0x109008a

    :try_start_a
    invoke-virtual {v15, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4974
    .local v2, "tv":Landroid/view/View;
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4977
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4978
    const v3, 0x10202e3

    .line 4979
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4980
    move-object/from16 v18, v2

    .end local v2    # "tv":Landroid/view/View;
    .local v18, "tv":Landroid/view/View;
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4981
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    .line 4980
    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4982
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v3, 0x10202e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 4984
    .local v2, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4985
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$6;

    invoke-direct {v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4995
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    move-object/from16 v16, v2

    .end local v2    # "hardKeySwitch":Landroid/widget/Switch;
    .local v16, "hardKeySwitch":Landroid/widget/Switch;
    const v2, 0x109008b

    invoke-direct {v3, v12, v2, v0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    move-object v2, v3

    .line 4997
    .local v2, "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$7;

    invoke-direct {v3, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$7;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)V

    .line 5019
    .local v3, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v19, v0

    .end local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .local v19, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v10, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5021
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 5022
    move-object/from16 v20, v2

    .end local v2    # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    .local v20, "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 5023
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5024
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5025
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v21, v3

    .end local v3    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .local v21, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    const/16 v3, 0x7dc

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 5029
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5030
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5031
    const-string v3, "Select input method"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 5032
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5033
    iget v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    move-object/from16 v22, v0

    .end local v0    # "w":Landroid/view/Window;
    .local v22, "w":Landroid/view/Window;
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {v1, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 5034
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5035
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "currentThread":Landroid/app/ActivityThread;
    .end local v9    # "N":I
    .end local v10    # "checkedItem":I
    .end local v11    # "settingsContext":Landroid/content/Context;
    .end local v12    # "dialogContext":Landroid/content/Context;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v18    # "tv":Landroid/view/View;
    .end local v19    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v20    # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v21    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v22    # "w":Landroid/view/Window;
    monitor-exit v6

    .line 5036
    return-void

    .line 5035
    .end local v17    # "isScreenLocked":Z
    .local v3, "isScreenLocked":Z
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move/from16 v7, p1

    :goto_3
    move/from16 v17, v3

    .end local v3    # "isScreenLocked":Z
    .restart local v17    # "isScreenLocked":Z
    :goto_4
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

.method private showMySoftInput(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 4333
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4334
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4335
    monitor-exit v0

    return-void

    .line 4337
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4339
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {p0, v3, p2, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4342
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4343
    nop

    .line 4344
    .end local v1    # "ident":J
    monitor-exit v0

    .line 4345
    return-void

    .line 4342
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4343
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "flags":I
    throw v3

    .line 4344
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "flags":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;III)Lcom/android/internal/view/InputBindResult;
    .locals 23
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I
    .param p10, "unverifiedTargetSdkVersion"    # I
    .param p11, "userId"    # I

    .line 3600
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    move/from16 v12, p10

    move/from16 v13, p11

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_0

    .line 3602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInputOrWindowGainedFocusInternalLocked: reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3603
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " client="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3604
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inputContext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " missingMethods="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3607
    invoke-static/range {p9 .. p9}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attribute="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " startInputFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3610
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " softInputMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3611
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unverifiedTargetSdkVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3602
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3600
    :cond_0
    move-object/from16 v14, p8

    .line 3616
    :goto_0
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v15

    .line 3618
    .local v15, "windowDisplayId":I
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3619
    .local v6, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v6, :cond_22

    .line 3622
    iget v0, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v0, v15, :cond_1

    .line 3623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInputOrWindowGainedFocusInternal: display ID mismatch. from client:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from window:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    sget-object v0, Lcom/android/internal/view/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3629
    :cond_1
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v3, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v4, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3638
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 3640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus gain on non-focused client "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    :cond_2
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3646
    :cond_3
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 3648
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 3649
    .local v0, "nextUserId":I
    if-ne v13, v0, :cond_4

    .line 3650
    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v7, v13, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 3651
    sget-object v1, Lcom/android/internal/view/InputBindResult;->USER_SWITCHING:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3653
    :cond_4
    iget-object v1, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_6

    aget v4, v1, v2

    .line 3654
    .local v4, "profileId":I
    if-ne v4, v13, :cond_5

    .line 3655
    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v7, v13, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 3656
    sget-object v1, Lcom/android/internal/view/InputBindResult;->USER_SWITCHING:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3653
    .end local v4    # "profileId":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3659
    :cond_6
    sget-object v1, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3663
    .end local v0    # "nextUserId":I
    :cond_7
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_8

    .line 3664
    const-string v0, "A background user is requesting window. Hiding IME."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    const-string v0, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xa

    invoke-virtual {v7, v0, v2, v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 3670
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3673
    :cond_8
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-eq v13, v0, :cond_9

    .line 3674
    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v7, v13, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 3675
    sget-object v0, Lcom/android/internal/view/InputBindResult;->USER_SWITCHING:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3681
    :cond_9
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_a

    .line 3683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME PreRendering MASTER flag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    .line 3684
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", LowRam: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3683
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    :cond_a
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    iget-boolean v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    if-nez v0, :cond_b

    move v0, v4

    goto :goto_2

    :cond_b
    move v0, v2

    :goto_2
    iput-boolean v0, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->shouldPreRenderIme:Z

    .line 3689
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v0, v8, :cond_d

    .line 3696
    if-eqz v11, :cond_c

    .line 3697
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move-object v13, v6

    .end local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .local v13, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    .line 3700
    .end local v13    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_c
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 3704
    :cond_d
    move-object v13, v6

    .end local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v13    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    iput-object v8, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 3705
    iput v10, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 3706
    iput-object v13, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3707
    iput-boolean v4, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 3716
    and-int/lit16 v0, v10, 0xf0

    const/16 v3, 0x10

    const/4 v6, 0x3

    if-eq v0, v3, :cond_f

    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3719
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    move v0, v2

    goto :goto_4

    :cond_f
    :goto_3
    move v0, v4

    :goto_4
    move/from16 v16, v0

    .line 3721
    .local v16, "doAutoShow":Z
    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_5

    :cond_10
    move v0, v2

    :goto_5
    move/from16 v17, v0

    .line 3727
    .local v17, "isTextEditor":Z
    const/16 v18, 0x0

    .line 3729
    .local v18, "didStart":Z
    const/16 v19, 0x0

    .line 3730
    .local v19, "res":Lcom/android/internal/view/InputBindResult;
    and-int/lit8 v0, v10, 0xf

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eqz v0, :cond_19

    if-eq v0, v4, :cond_18

    if-eq v0, v6, :cond_17

    const/4 v2, 0x4

    if-eq v0, v2, :cond_14

    if-eq v0, v3, :cond_11

    goto/16 :goto_9

    .line 3806
    :cond_11
    invoke-static {v12, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3808
    if-eqz v11, :cond_12

    .line 3809
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p8

    move/from16 v3, p9

    const/4 v6, 0x1

    move-object/from16 v4, p7

    move-object v14, v5

    move/from16 v5, p4

    move v14, v6

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v19

    .line 3811
    const/16 v18, 0x1

    goto :goto_6

    .line 3808
    :cond_12
    const/4 v14, 0x1

    .line 3813
    :goto_6
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v14, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_9

    .line 3816
    :cond_13
    const-string v0, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3786
    :cond_14
    const/4 v14, 0x1

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_1d

    .line 3788
    invoke-static {v12, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3790
    if-eqz v11, :cond_15

    .line 3791
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v19

    .line 3793
    const/16 v18, 0x1

    .line 3795
    :cond_15
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v14, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_9

    .line 3798
    :cond_16
    const-string v0, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3782
    :cond_17
    move-object v1, v5

    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v3, 0xd

    invoke-virtual {v7, v0, v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 3784
    goto :goto_9

    .line 3774
    :cond_18
    move-object v1, v5

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_1d

    .line 3776
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v3, 0xc

    invoke-virtual {v7, v0, v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_9

    .line 3732
    :cond_19
    const/4 v14, 0x1

    if-eqz v17, :cond_1c

    if-nez v16, :cond_1a

    goto :goto_8

    .line 3751
    :cond_1a
    if-eqz v17, :cond_1d

    if-eqz v16, :cond_1d

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_1d

    .line 3761
    if-eqz v11, :cond_1b

    .line 3762
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p8

    move v6, v3

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move v14, v6

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 3764
    .end local v19    # "res":Lcom/android/internal/view/InputBindResult;
    .local v0, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v1, 0x1

    move-object/from16 v19, v0

    move/from16 v18, v1

    .end local v18    # "didStart":Z
    .local v1, "didStart":Z
    goto :goto_7

    .line 3761
    .end local v0    # "res":Lcom/android/internal/view/InputBindResult;
    .end local v1    # "didStart":Z
    .restart local v18    # "didStart":Z
    .restart local v19    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_1b
    move v14, v3

    .line 3766
    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v7, v8, v1, v0, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_9

    .line 3733
    :cond_1c
    :goto_8
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3738
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v4, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 3747
    iget v0, v13, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v1, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v0, v1, :cond_1d

    .line 3748
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 3823
    :cond_1d
    :goto_9
    if-nez v18, :cond_21

    .line 3824
    if-eqz v11, :cond_20

    .line 3825
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v0

    if-eqz v0, :cond_1f

    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_1e

    goto :goto_a

    .line 3830
    :cond_1e
    sget-object v19, Lcom/android/internal/view/InputBindResult;->NO_EDITOR:Lcom/android/internal/view/InputBindResult;

    goto :goto_b

    .line 3827
    :cond_1f
    :goto_a
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v19

    goto :goto_b

    .line 3833
    :cond_20
    sget-object v19, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    .line 3836
    :cond_21
    :goto_b
    return-object v19

    .line 3620
    .end local v13    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v16    # "doAutoShow":Z
    .end local v17    # "isTextEditor":Z
    .end local v18    # "didStart":Z
    .end local v19    # "res":Lcom/android/internal/view/InputBindResult;
    .restart local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private switchToInputMethod(Ljava/lang/String;I)Z
    .locals 17
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5261
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 5262
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-ne v9, v0, :cond_2

    .line 5263
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5264
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 5265
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5268
    :cond_0
    invoke-virtual {v1, v2, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 5269
    monitor-exit v10

    return v11

    .line 5266
    :cond_1
    :goto_0
    monitor-exit v10

    return v13

    .line 5271
    :cond_2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5272
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .line 5273
    .local v14, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v15, v3

    .line 5275
    .local v15, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v15, v9}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5276
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v15, v0, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5278
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5279
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    move-object/from16 v3, v16

    move-object v6, v0

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    move-object/from16 v3, v16

    .line 5281
    .local v3, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5282
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v4

    .line 5283
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 5286
    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5287
    invoke-virtual {v3, v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5288
    monitor-exit v10

    return v11

    .line 5284
    :cond_4
    :goto_1
    monitor-exit v10

    return v13

    .line 5289
    .end local v0    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v3    # "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .end local v14    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .line 4012
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4013
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4014
    monitor-exit v0

    return v2

    .line 4016
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 4017
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4016
    invoke-virtual {v1, p2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 4018
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_1

    .line 4019
    monitor-exit v0

    return v2

    .line 4021
    :cond_1
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4023
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 4024
    .end local v1    # "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchToPreviousInputMethod(Landroid/os/IBinder;)Z
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3940
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 3941
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3942
    monitor-exit v2

    return v3

    .line 3944
    :cond_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v0

    .line 3946
    .local v0, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 3947
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .local v4, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    .line 3949
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v4, 0x0

    .line 3951
    .restart local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    const/4 v5, 0x0

    .line 3952
    .local v5, "targetLastImiId":Ljava/lang/String;
    const/4 v6, -0x1

    .line 3953
    .local v6, "subtypeId":I
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 3954
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3955
    .local v7, "imiIdIsSame":Z
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3956
    .local v8, "lastSubtypeHash":I
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v9, :cond_2

    const/4 v9, -0x1

    goto :goto_1

    .line 3957
    :cond_2
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    :goto_1
    nop

    .line 3960
    .local v9, "currentSubtypeHash":I
    if-eqz v7, :cond_3

    if-eq v8, v9, :cond_4

    .line 3961
    :cond_3
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 3962
    invoke-static {v4, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v10

    move v6, v10

    .line 3966
    .end local v7    # "imiIdIsSame":Z
    .end local v8    # "lastSubtypeHash":I
    .end local v9    # "currentSubtypeHash":I
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3967
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3971
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 3972
    .local v7, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v7, :cond_7

    .line 3973
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 3974
    .local v9, "N":I
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v10, :cond_5

    .line 3975
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 3976
    :cond_5
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    :goto_2
    nop

    .line 3977
    .local v10, "locale":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v9, :cond_7

    .line 3978
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 3979
    .local v12, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    if-lez v13, :cond_6

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3980
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3982
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v15, "keyboard"

    .line 3981
    invoke-static {v13, v14, v15, v10, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    .line 3984
    .local v13, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v13, :cond_6

    .line 3985
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 3986
    nop

    .line 3987
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v14

    .line 3986
    invoke-static {v12, v14}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v14

    move v6, v14

    .line 3988
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3989
    goto :goto_4

    .line 3977
    .end local v12    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3997
    .end local v7    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "N":I
    .end local v10    # "locale":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_7
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_8

    .line 4002
    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v1, v7, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4003
    monitor-exit v2

    return v8

    .line 4005
    :cond_8
    move-object/from16 v7, p1

    monitor-exit v2

    return v3

    .line 4007
    .end local v0    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "targetLastImiId":Ljava/lang/String;
    .end local v6    # "subtypeId":I
    :catchall_0
    move-exception v0

    move-object/from16 v7, p1

    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method private switchUserOnHandlerLocked(ILcom/android/internal/view/IInputMethodClient;)V
    .locals 8
    .param p1, "newUserId"    # I
    .param p2, "clientToBeReset"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1798
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1802
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1803
    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1804
    .local v0, "useCopyOnWriteSettings":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1805
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1807
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v3, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1808
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 1818
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1819
    .local v4, "initialUserSwitch":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1822
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v5, :cond_3

    .line 1823
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-virtual {p0, v5, v1, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 1826
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 1827
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1828
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1831
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1833
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1836
    :cond_3
    if-eqz v4, :cond_4

    .line 1837
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1838
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1839
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 1837
    invoke-static {v1, v2, p1, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1845
    :cond_4
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1847
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    .line 1848
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1849
    .local v1, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-nez v1, :cond_5

    .line 1851
    return-void

    .line 1854
    :cond_5
    :try_start_0
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-interface {v2, v5}, Lcom/android/internal/view/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    goto :goto_2

    .line 1855
    :catch_0
    move-exception v2

    .line 1858
    .end local v1    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_6
    :goto_2
    return-void
.end method

.method private transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .locals 2
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 5296
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5297
    :try_start_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5300
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 5301
    .local v1, "curHostInputToken":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5302
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManagerInternal;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 5298
    .end local v1    # "curHostInputToken":Landroid/os/IBinder;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v0

    return v1

    .line 5301
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .line 2848
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2849
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2850
    monitor-exit v0

    return-void

    .line 2852
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2854
    .local v1, "ident":J
    const/4 v3, 0x0

    if-nez p3, :cond_1

    .line 2856
    :try_start_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_3

    .line 2857
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 2883
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2859
    :cond_1
    if-eqz p2, :cond_3

    .line 2863
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateInputMethod(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2865
    const/4 v5, 0x0

    .line 2868
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2869
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2871
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    .line 2870
    invoke-interface {v7, p2, v3, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2869
    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v3

    .line 2874
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 2872
    :catch_0
    move-exception v3

    .line 2875
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_3

    .line 2876
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v10, 0x0

    .line 2877
    if-eqz v5, :cond_2

    .line 2878
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move-object v11, v3

    .line 2876
    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2879
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2883
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    :goto_2
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2884
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "iconId":I
    throw v3

    .line 2883
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "iconId":I
    :cond_3
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2884
    nop

    .line 2885
    .end local v1    # "ident":J
    monitor-exit v0

    .line 2886
    return-void

    .line 2885
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private updateSystemUiLocked(II)V
    .locals 11
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I

    .line 3009
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 3010
    return-void

    .line 3021
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3024
    .local v0, "ident":J
    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    if-nez v2, :cond_1

    .line 3025
    const/4 p1, 0x0

    .line 3027
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    if-nez v2, :cond_2

    .line 3028
    and-int/lit8 p1, p1, -0x3

    .line 3031
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v2

    move v9, v2

    .line 3032
    .local v9, "needsToShowImeSwitcher":Z
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v2, :cond_3

    .line 3033
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v8, 0x0

    move v5, p1

    move v6, p2

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(ILandroid/os/IBinder;IIZZ)V

    .line 3036
    :cond_3
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3037
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    if-eqz v9, :cond_6

    .line 3039
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v7, 0x1040743

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 3041
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v7, v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 3043
    .local v7, "summary":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 3044
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 3045
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3048
    :try_start_1
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 3055
    invoke-interface {v8, v3}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3056
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_4

    .line 3058
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3063
    :cond_4
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 3065
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3063
    invoke-virtual {v3, v5, v4, v8, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3066
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3069
    :cond_5
    goto :goto_0

    .line 3068
    :catch_0
    move-exception v3

    .line 3070
    .end local v6    # "title":Ljava/lang/CharSequence;
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    .line 3071
    :cond_6
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v6, :cond_7

    .line 3075
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v4, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3077
    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3081
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "needsToShowImeSwitcher":Z
    :cond_7
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    nop

    .line 3083
    return-void

    .line 3081
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    throw v2
.end method

.method private userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6029
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 6030
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 6029
    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6031
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6033
    const/4 v0, 0x0

    return v0

    .line 6035
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    .locals 16
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "selfReportedDisplayId"    # I

    .line 2295
    move-object/from16 v1, p0

    move/from16 v9, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2296
    .local v10, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2297
    .local v11, "callerPid":I
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 2299
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v13, v0

    .line 2300
    .local v13, "numClients":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v13, :cond_2

    .line 2301
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2302
    .local v2, "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    if-ne v3, v10, :cond_1

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    if-ne v3, v11, :cond_1

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v3, v9, :cond_0

    goto :goto_1

    .line 2304
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is already registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v10    # "callerUid":I
    .end local v11    # "callerPid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p3    # "selfReportedDisplayId":I
    throw v3

    .line 2300
    .end local v2    # "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v10    # "callerUid":I
    .restart local v11    # "callerPid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p3    # "selfReportedDisplayId":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2308
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v14, p1

    :try_start_1
    invoke-direct {v0, v1, v14}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v0

    .line 2310
    .local v15, "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v15, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2313
    nop

    .line 2324
    :try_start_3
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v10

    move v6, v11

    move-object v1, v7

    move/from16 v7, p3

    move-object v9, v8

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;IIILcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;)V

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    nop

    .end local v13    # "numClients":I
    .end local v15    # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    monitor-exit v12

    .line 2327
    return-void

    .line 2311
    .restart local v13    # "numClients":I
    .restart local v15    # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :catch_0
    move-exception v0

    .line 2312
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v10    # "callerUid":I
    .end local v11    # "callerPid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p3    # "selfReportedDisplayId":I
    throw v1

    .line 2326
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "numClients":I
    .end local v15    # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    .restart local v10    # "callerUid":I
    .restart local v11    # "callerPid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p3    # "selfReportedDisplayId":I
    :catchall_0
    move-exception v0

    move-object/from16 v14, p1

    :goto_2
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;
    .locals 20
    .param p1, "startInputReason"    # I
    .param p2, "initial"    # Z

    .line 2419
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2420
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3f2

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2422
    iput-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2425
    :cond_0
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 2426
    .local v1, "startInputToken":Landroid/os/Binder;
    new-instance v16, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    xor-int/lit8 v9, p2, 0x1

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    .line 2428
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v11, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v14, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget v15, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    move-object/from16 v3, v16

    move/from16 v8, p1

    invoke-direct/range {v3 .. v15}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    move-object/from16 v11, v16

    .line 2430
    .local v11, "info":Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2431
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v3, v11}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 2438
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2439
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    const/4 v7, 0x0

    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    .line 2440
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v9, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    const/4 v10, 0x1

    .line 2439
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2443
    :cond_1
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v12, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2444
    .local v12, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    iget-object v13, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x7d0

    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 2445
    xor-int/lit8 v6, p2, 0x1

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2444
    move-object v7, v1

    move-object v8, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2447
    iget-boolean v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 2450
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    const-string v3, "InputMethodManagerService"

    const-string v5, "Attach new input asks to show input"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :cond_2
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getAppShowFlags()I

    move-result v5

    invoke-virtual {v0, v3, v5, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 2455
    :cond_3
    new-instance v2, Lcom/android/internal/view/InputBindResult;

    const/4 v14, 0x0

    iget-object v15, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2456
    iget-object v3, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_4

    iget-object v3, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v4

    :cond_4
    move-object/from16 v16, v4

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object v13, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v19}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    .line 2455
    return-object v2
.end method

.method buildInputMethodListLocked(Z)V
    .locals 10
    .param p1, "resetDefaultEnabledIme"    # Z

    .line 4772
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_0

    .line 4773
    const-string v0, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    return-void

    .line 4776
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 4777
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 4779
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 4789
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4790
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.view.InputMethod"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4792
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    .line 4790
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4793
    .local v0, "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 4794
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 4795
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4796
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4797
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    .line 4794
    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4802
    .end local v0    # "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 4804
    .local v0, "reenableMinimumNonAuxSystemImes":Z
    if-nez p1, :cond_6

    .line 4805
    const/4 v3, 0x0

    .line 4806
    .local v3, "enabledImeFound":Z
    const/4 v4, 0x0

    .line 4807
    .local v4, "enabledNonAuxImeFound":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    .line 4808
    .local v5, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 4809
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 4810
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 4811
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4812
    const/4 v3, 0x1

    .line 4813
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v9

    if-nez v9, :cond_3

    .line 4814
    const/4 v4, 0x1

    .line 4815
    goto :goto_2

    .line 4809
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4819
    .end local v7    # "i":I
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 4823
    const/4 p1, 0x1

    .line 4824
    const-string v7, ""

    invoke-direct {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    goto :goto_3

    .line 4825
    :cond_5
    if-nez v4, :cond_6

    .line 4829
    const/4 v0, 0x1

    .line 4833
    .end local v3    # "enabledImeFound":Z
    .end local v4    # "enabledNonAuxImeFound":Z
    .end local v5    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "N":I
    :cond_6
    :goto_3
    if-nez p1, :cond_7

    if-eqz v0, :cond_8

    .line 4834
    :cond_7
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 4835
    invoke-static {v3, v4, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 4837
    .local v3, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4838
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v4, :cond_8

    .line 4839
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 4843
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4838
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4847
    .end local v3    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 4848
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 4849
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 4850
    const-string v4, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4852
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_5

    .line 4856
    :cond_9
    invoke-direct {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4863
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 4866
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4867
    .local v1, "inputMethodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1392

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4868
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    const/4 v6, 0x0

    .line 4867
    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4868
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4869
    return-void
.end method

.method clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .locals 1
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2778
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2779
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2780
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2781
    return-void
.end method

.method clearCurMethodLocked()V
    .locals 3

    .line 2802
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1

    .line 2803
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2804
    .local v0, "numClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2805
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2808
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2809
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2810
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2811
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    .line 2812
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 2814
    .end local v0    # "numClients":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2815
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2817
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 2818
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5449
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5455
    :cond_0
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 5457
    .local v0, "p":Landroid/util/Printer;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 5458
    :try_start_0
    const-string v2, "Current Input Method Manager state:"

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5459
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5460
    .local v2, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5461
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 5462
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 5463
    .local v4, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  InputMethod #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5464
    const-string v5, "    "

    invoke-virtual {v4, v0, v5}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5461
    .end local v4    # "info":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5466
    .end local v3    # "i":I
    :cond_1
    const-string v3, "  Clients:"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5467
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 5468
    .local v3, "numClients":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 5469
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5470
    .local v5, "ci":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5471
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    inputContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5473
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    sessionRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    curSession="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5468
    .end local v5    # "ci":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5476
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurMethodId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5477
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5478
    .local v4, "client":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurClient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mCurSeq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurPerceptible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurFocusedWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " softInputMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 5482
    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5480
    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5484
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5485
    .local v5, "focusedWindowClient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mHaveConnection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mBoundToMethod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mVisibleBound="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurTokenDisplayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurHostInputToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurIntent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5491
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 5492
    .local v6, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mCurMethod="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mEnabledSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mShowRequested="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mShowExplicitlyRequested="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mShowForced="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mInputShown="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5498
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mInFullscreenMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSystemReady="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mInteractive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSettingsObserver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5501
    const-string v7, "  mSwitchingController:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5502
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v7, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 5503
    const-string v7, "  mSettings:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5504
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v8, "    "

    invoke-virtual {v7, v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5506
    const-string v7, "  mStartInputHistory:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5507
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    const-string v8, "   "

    invoke-virtual {v7, p2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5509
    const-string v7, "  mSoftInputShowHideHistory:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5510
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    const-string v8, "   "

    invoke-virtual {v7, p2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5511
    .end local v2    # "N":I
    .end local v3    # "numClients":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5513
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5514
    if-eqz v4, :cond_3

    .line 5515
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5517
    :try_start_1
    iget-object v1, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 5518
    :catch_0
    move-exception v1

    .line 5519
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5520
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 5522
    :cond_3
    const-string v1, "No input method client."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5525
    :goto_3
    if-eqz v5, :cond_4

    if-eq v4, v5, :cond_4

    .line 5526
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5527
    const-string v1, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5529
    const-string v1, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5530
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5531
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5533
    :try_start_2
    iget-object v1, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5536
    goto :goto_4

    .line 5534
    :catch_1
    move-exception v1

    .line 5535
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method client in focused window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5539
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5540
    if-eqz v6, :cond_5

    .line 5541
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5543
    :try_start_3
    invoke-interface {v6}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 5544
    :catch_2
    move-exception v1

    .line 5545
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5546
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    goto :goto_6

    .line 5548
    :cond_5
    const-string v1, "No input method service."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5550
    :goto_6
    return-void

    .line 5511
    .end local v4    # "client":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v5    # "focusedWindowClient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v6    # "method":Lcom/android/internal/view/IInputMethod;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    .line 2363
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2366
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 2367
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 2369
    :goto_0
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .line 5192
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5194
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5195
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 5197
    :cond_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnabledInputMethodList(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2045
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2049
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2050
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2049
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 2051
    .local v1, "resolvedUserIds":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2052
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2054
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2056
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_1
    aget v4, v1, v4

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2058
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2056
    return-object v4

    .line 2058
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2059
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "userId":I
    throw v4

    .line 2060
    .end local v1    # "resolvedUserIds":[I
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 2219
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2220
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2221
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2222
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 2221
    invoke-static {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v2

    .line 2223
    .local v2, "resolvedUserIds":[I
    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 2226
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2228
    .local v3, "ident":J
    const/4 v5, 0x0

    :try_start_1
    aget v5, v2, v5

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2231
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 2228
    return-object v5

    .line 2231
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2232
    nop

    .end local v0    # "callingUserId":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "imiId":Ljava/lang/String;
    .end local p2    # "allowsImplicitlySelectedSubtypes":Z
    throw v5

    .line 2233
    .end local v2    # "resolvedUserIds":[I
    .end local v3    # "ident":J
    .restart local v0    # "callingUserId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "imiId":Ljava/lang/String;
    .restart local p2    # "allowsImplicitlySelectedSubtypes":Z
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getInputMethodList(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2025
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2029
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2030
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2029
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 2031
    .local v1, "resolvedUserIds":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2032
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2034
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2036
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_1
    aget v4, v1, v4

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2038
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2036
    return-object v4

    .line 2038
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2039
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "userId":I
    throw v4

    .line 2040
    .end local v1    # "resolvedUserIds":[I
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 2

    .line 4134
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 7

    .line 4044
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4045
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4046
    monitor-exit v0

    return-object v2

    .line 4048
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 4050
    .local v1, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 4051
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 4052
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4053
    .local v3, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 4055
    :cond_2
    :try_start_1
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4056
    .local v4, "lastSubtypeHash":I
    nop

    .line 4057
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 4058
    .local v5, "lastSubtypeId":I
    if-ltz v5, :cond_4

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    if-lt v5, v6, :cond_3

    goto :goto_0

    .line 4061
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 4059
    :cond_4
    :goto_0
    monitor-exit v0

    return-object v2

    .line 4062
    .end local v4    # "lastSubtypeHash":I
    .end local v5    # "lastSubtypeId":I
    :catch_0
    move-exception v4

    .line 4063
    .local v4, "e":Ljava/lang/NumberFormatException;
    monitor-exit v0

    return-object v2

    .line 4051
    .end local v3    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_1
    monitor-exit v0

    return-object v2

    .line 4065
    .end local v1    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 4371
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_16

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/16 v1, 0x424

    if-eq v0, v1, :cond_12

    const/16 v1, 0x425

    if-eq v0, v1, :cond_10

    sparse-switch v0, :sswitch_data_0

    .line 4684
    return v2

    .line 4675
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_0

    .line 4676
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 4678
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1

    .line 4679
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    .line 4681
    :cond_1
    return v3

    .line 4658
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4659
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    .line 4661
    .local v1, "requestInfo":Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 4664
    .local v2, "callback":Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v4, v1, v2}, Lcom/android/internal/view/IInputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4668
    goto :goto_0

    .line 4666
    :catch_0
    move-exception v4

    .line 4667
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException calling onCreateInlineSuggestionsRequest(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4670
    return v3

    .line 4649
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "requestInfo":Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .end local v2    # "callback":Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4650
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 4651
    .local v1, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;

    invoke-direct {v4, v1, v0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 4653
    return v3

    .line 4644
    .end local v0    # "userId":I
    .end local v1    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4645
    .restart local v0    # "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnlockUser(I)V

    .line 4646
    return v3

    .line 4641
    .end local v0    # "userId":I
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    .line 4642
    return v3

    .line 4627
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    move v0, v2

    .line 4628
    .local v0, "setVisible":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4630
    .local v1, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_1
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v0}, Lcom/android/internal/view/IInputMethodClient;->applyImeVisibility(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4635
    goto :goto_1

    .line 4631
    :catch_1
    move-exception v2

    .line 4632
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got RemoteException sending applyImeVisibility("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") notification to pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v3

    .line 4613
    .end local v0    # "setVisible":Z
    .end local v1    # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4614
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 4615
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4617
    .local v2, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4, v1}, Lcom/android/internal/view/IInputMethodClient;->reportPreRendered(Landroid/view/inputmethod/EditorInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4622
    goto :goto_2

    .line 4618
    :catch_2
    move-exception v4

    .line 4619
    .restart local v4    # "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending reportPreRendered("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") notification to pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4624
    return v3

    .line 4601
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    move v0, v2

    .line 4602
    .local v0, "fullscreen":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4604
    .local v1, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_3
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v0}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4609
    goto :goto_3

    .line 4605
    :catch_3
    move-exception v2

    .line 4606
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got RemoteException sending reportFullscreen("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") notification to pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    return v3

    .line 4598
    .end local v0    # "fullscreen":Z
    .end local v1    # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 4599
    return v3

    .line 4590
    :sswitch_9
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_7

    move v2, v3

    :cond_7
    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4595
    goto :goto_5

    .line 4591
    :catch_4
    move-exception v0

    .line 4592
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return v3

    .line 4571
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4572
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 4573
    .local v1, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/InputBindResult;

    .line 4575
    .local v2, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_5
    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4581
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_8

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4582
    :goto_6
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    goto :goto_7

    .line 4581
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 4576
    :catch_5
    move-exception v4

    .line 4577
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client died receiving input method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4581
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_8

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4582
    goto :goto_6

    .line 4585
    :cond_8
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4586
    return v3

    .line 4581
    :goto_8
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_9

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4582
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    .line 4584
    :cond_9
    throw v3

    .line 4565
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v2    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_b
    :try_start_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 4568
    goto :goto_9

    .line 4566
    :catch_6
    move-exception v0

    .line 4569
    :goto_9
    return v3

    .line 4538
    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4539
    .local v0, "missingMethods":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_a

    move v9, v3

    goto :goto_a

    :cond_a
    move v9, v2

    .line 4540
    .local v9, "restarting":Z
    :goto_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 4541
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 4542
    .local v2, "startInputToken":Landroid/os/IBinder;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 4543
    .local v11, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, Lcom/android/internal/view/IInputContext;

    .line 4544
    .local v12, "inputContext":Lcom/android/internal/view/IInputContext;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Landroid/view/inputmethod/EditorInfo;

    .line 4546
    .local v13, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_8
    invoke-virtual {p0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 4549
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_b

    .line 4550
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_START_INPUT startInputToken :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4553
    :cond_b
    iget-object v4, v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v5, v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->client:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-boolean v10, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->shouldPreRenderIme:Z

    move-object v5, v2

    move-object v6, v12

    move v7, v0

    move-object v8, v13

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/view/IInputMethod;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;ZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    .line 4556
    goto :goto_b

    .line 4555
    :catch_7
    move-exception v4

    .line 4557
    :goto_b
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4558
    return v3

    .line 4494
    .end local v0    # "missingMethods":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "startInputToken":Landroid/os/IBinder;
    .end local v9    # "restarting":Z
    .end local v11    # "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    .end local v12    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local v13    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4495
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    .line 4496
    .local v1, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputChannel;

    .line 4498
    .local v2, "channel":Landroid/view/InputChannel;
    :try_start_9
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4503
    if-eqz v2, :cond_d

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4504
    goto :goto_c

    .line 4503
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_c

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4504
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 4506
    :cond_c
    throw v3

    .line 4499
    :catch_8
    move-exception v4

    .line 4503
    if-eqz v2, :cond_d

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4504
    :goto_c
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 4507
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4508
    return v3

    .line 4480
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "method":Lcom/android/internal/view/IInputMethod;
    .end local v2    # "channel":Landroid/view/InputChannel;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4486
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 4487
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethod;

    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v5, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    invoke-interface {v2, v1, v4, v5}, Lcom/android/internal/view/IInputMethod;->initializeInternal(Landroid/os/IBinder;ILcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    .line 4490
    .end local v1    # "token":Landroid/os/IBinder;
    goto :goto_d

    .line 4489
    :catch_9
    move-exception v1

    .line 4491
    :goto_d
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4492
    return v3

    .line 4473
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_f
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4474
    :try_start_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4475
    .local v1, "reason":I
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 4477
    nop

    .end local v1    # "reason":I
    monitor-exit v0

    .line 4478
    return v3

    .line 4477
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    .line 4447
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4449
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 4452
    .local v9, "reason":I
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_e

    const-string v1, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".hideSoftInput(0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") for reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4454
    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4452
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    :cond_e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/ResultReceiver;

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V

    .line 4458
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 4460
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget-boolean v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4463
    invoke-virtual {v11, v12}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/IBinder;

    .line 4462
    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v12, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4464
    invoke-virtual {v4, v12}, Lcom/android/server/wm/WindowManagerInternal;->getImeControlTargetNameForLogging(I)Ljava/lang/String;

    move-result-object v12

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v13, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4466
    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowManagerInternal;->getImeTargetNameForLogging(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a

    .line 4469
    .end local v9    # "reason":I
    goto :goto_e

    .line 4468
    :catch_a
    move-exception v1

    .line 4470
    :goto_e
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4471
    return v3

    .line 4421
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4423
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 4426
    .restart local v9    # "reason":I
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_f

    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".showSoftInput("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") for reason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4428
    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4426
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    :cond_f
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/ResultReceiver;

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/view/IInputMethod;->showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V

    .line 4432
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 4434
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget-boolean v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4437
    invoke-virtual {v11, v12}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/IBinder;

    .line 4436
    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v12, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4438
    invoke-virtual {v4, v12}, Lcom/android/server/wm/WindowManagerInternal;->getImeControlTargetNameForLogging(I)Ljava/lang/String;

    move-result-object v12

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v13, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4440
    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowManagerInternal;->getImeTargetNameForLogging(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4432
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b

    .line 4443
    .end local v9    # "reason":I
    goto :goto_f

    .line 4442
    :catch_b
    move-exception v1

    .line 4444
    :goto_f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4445
    return v3

    .line 4413
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4415
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_c

    .line 4417
    goto :goto_10

    .line 4416
    :catch_c
    move-exception v1

    .line 4418
    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4419
    return v3

    .line 4407
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_13
    :try_start_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_d

    .line 4410
    goto :goto_11

    .line 4408
    :catch_d
    move-exception v0

    .line 4411
    :goto_11
    return v3

    .line 4523
    :cond_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 4524
    .local v0, "windowToken":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4526
    :try_start_10
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_11

    .line 4528
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodSession;->removeImeSurface()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 4531
    :cond_11
    goto :goto_12

    .line 4532
    :catchall_3
    move-exception v2

    goto :goto_13

    .line 4530
    :catch_e
    move-exception v2

    .line 4532
    :goto_12
    :try_start_11
    monitor-exit v1

    .line 4533
    return v3

    .line 4532
    :goto_13
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v2

    .line 4511
    .end local v0    # "windowToken":Landroid/os/IBinder;
    :cond_12
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4513
    :try_start_12
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    if-nez v1, :cond_13

    .line 4515
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->removeImeSurface()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 4518
    :cond_13
    goto :goto_14

    .line 4519
    :catchall_4
    move-exception v1

    goto :goto_15

    .line 4517
    :catch_f
    move-exception v1

    .line 4519
    :goto_14
    :try_start_13
    monitor-exit v0

    .line 4520
    return v3

    .line 4519
    :goto_15
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v1

    .line 4400
    :cond_14
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showConfigureInputMethods()V

    .line 4401
    return v3

    .line 4396
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 4397
    return v3

    .line 4374
    :cond_16
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 4375
    .local v0, "displayId":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_19

    if-eq v4, v3, :cond_18

    if-eq v4, v1, :cond_17

    .line 4389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown subtype picker mode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    return v2

    .line 4386
    :cond_17
    const/4 v1, 0x0

    .line 4387
    .local v1, "showAuxSubtypes":Z
    goto :goto_16

    .line 4383
    .end local v1    # "showAuxSubtypes":Z
    :cond_18
    const/4 v1, 0x1

    .line 4384
    .restart local v1    # "showAuxSubtypes":Z
    goto :goto_16

    .line 4380
    .end local v1    # "showAuxSubtypes":Z
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 4381
    .restart local v1    # "showAuxSubtypes":Z
    nop

    .line 4392
    :goto_16
    invoke-direct {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodMenu(ZI)V

    .line 4393
    return v3

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_13
        0x3f2 -> :sswitch_12
        0x3fc -> :sswitch_11
        0x406 -> :sswitch_10
        0x40b -> :sswitch_f
        0x410 -> :sswitch_e
        0x41a -> :sswitch_d
        0x7d0 -> :sswitch_c
        0xbb8 -> :sswitch_b
        0xbc2 -> :sswitch_a
        0xbcc -> :sswitch_9
        0xbd6 -> :sswitch_8
        0xbe5 -> :sswitch_7
        0xbf4 -> :sswitch_6
        0xbfe -> :sswitch_5
        0xfa0 -> :sswitch_4
        0x1388 -> :sswitch_3
        0x1392 -> :sswitch_2
        0x1770 -> :sswitch_1
        0x1b58 -> :sswitch_0
    .end sparse-switch
.end method

.method hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .locals 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 3457
    and-int/lit8 v0, p2, 0x1

    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_2

    .line 3461
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "Not hiding: explicit show not cancelled by non-explicit hide"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    :cond_1
    return v2

    .line 3465
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_4

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4

    .line 3468
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "Not hiding: forced show not cancelled by not-always hide"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    :cond_3
    return v2

    .line 3481
    :cond_4
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    :cond_5
    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    move v0, v1

    .line 3484
    .local v0, "shouldHideSoftInput":Z
    if-eqz v0, :cond_7

    .line 3485
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 3486
    .local v1, "hideInputToken":Landroid/os/Binder;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x406

    move v5, p4

    move-object v6, v9

    move-object v7, p3

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v9, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3493
    const/4 v3, 0x1

    .line 3497
    .local v3, "res":Z
    invoke-static {v2}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateInputMethod(Z)V

    .line 3499
    .end local v1    # "hideInputToken":Landroid/os/Binder;
    goto :goto_1

    .line 3500
    .end local v3    # "res":Z
    :cond_7
    const/4 v3, 0x0

    .line 3502
    .restart local v3    # "res":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v1, :cond_8

    .line 3503
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3504
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 3506
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3507
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 3508
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3509
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    .line 3510
    return v3
.end method

.method hideInputMethodMenu()V
    .locals 2

    .line 5079
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5080
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 5081
    monitor-exit v0

    .line 5082
    return-void

    .line 5081
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .locals 3

    .line 5087
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5088
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5089
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 5090
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 5093
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 5094
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 5095
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 5096
    return-void
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3402
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3403
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3404
    monitor-exit v1

    return v3

    .line 3406
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3408
    .local v4, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3409
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v2, v6, :cond_3

    .line 3413
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3414
    .local v2, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v2, :cond_8

    .line 3417
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v9, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3421
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_2

    .line 3423
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring hideSoftInput of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3425
    :cond_2
    nop

    .line 3450
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3425
    return v3

    .line 3431
    .end local v2    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_3
    :try_start_3
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    const-string v2, "InputMethodManagerService"

    const-string v6, "Client requesting input be hidden"

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    :cond_4
    sget-boolean v2, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    const/4 v6, 0x3

    if-eqz v2, :cond_7

    .line 3437
    const/4 v2, 0x0

    .line 3438
    .local v2, "zoomMode":Z
    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-static {v0, v7}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->shouldIgnoreInputShownForResult(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3439
    const/4 v2, 0x1

    .line 3442
    :cond_5
    invoke-virtual {p0, p2, p3, p4, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_6

    if-nez v2, :cond_6

    const/4 v3, 0x1

    .line 3450
    :cond_6
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3442
    return v3

    .line 3447
    .end local v2    # "zoomMode":Z
    :cond_7
    :try_start_5
    invoke-virtual {p0, p2, p3, p4, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3450
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3447
    return v2

    .line 3415
    .local v2, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_8
    :try_start_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":I
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3450
    .end local v2    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v0    # "uid":I
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "flags":I
    .restart local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3451
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    throw v2

    .line 3452
    .end local v4    # "ident":J
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "flags":I
    .restart local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2
.end method

.method public hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3280
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3281
    const/4 v0, 0x0

    return v0

    .line 3283
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3284
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3286
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3287
    :try_start_1
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Longshot requesting input be hidden, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLongshotBlockShowing:Z

    .line 3290
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->LONGSHOT_BLOCK_SHOWING_TIMEOUT:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3298
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-virtual {p0, v4, p1, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3301
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3298
    return v4

    .line 3299
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "uid":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "flags":I
    .end local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3301
    .restart local v0    # "uid":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "flags":I
    .restart local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3302
    throw v3
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 2

    .line 3890
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3891
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 3892
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3894
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$handleShellCommandResetInputMethod$2$InputMethodManagerService(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 5979
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    return-void
.end method

.method public synthetic lambda$handleShellCommandResetInputMethod$3$InputMethodManagerService(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 5982
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    return-void
.end method

.method public synthetic lambda$new$0$InputMethodManagerService(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 1707
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->shouldShowIme(I)Z

    move-result v0

    return v0
.end method

.method onActionLocaleChanged()V
    .locals 4

    .line 1273
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 1275
    .local v1, "possibleNewLocale":Landroid/os/LocaleList;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1276
    monitor-exit v0

    return-void

    .line 1278
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1280
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1281
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1282
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1283
    .end local v1    # "possibleNewLocale":Landroid/os/LocaleList;
    monitor-exit v0

    .line 1284
    return-void

    .line 1283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2668
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2670
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2671
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2672
    .local v1, "curMethodPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2673
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    .line 2672
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v2

    .line 2674
    .local v2, "curMethodUid":I
    if-gez v2, :cond_0

    .line 2675
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get UID for package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    goto :goto_0

    .line 2678
    :cond_0
    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    .line 2680
    :goto_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v3, :cond_1

    .line 2681
    const-string v3, "InputMethodManagerService"

    const-string v4, "Service connected without a token!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2683
    monitor-exit v0

    return-void

    .line 2687
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x410

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2689
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 2690
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_2

    .line 2691
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2692
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2695
    .end local v1    # "curMethodPackage":Ljava/lang/String;
    .end local v2    # "curMethodUid":I
    :cond_2
    monitor-exit v0

    .line 2696
    return-void

    .line 2695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2829
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2833
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2834
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    .line 2838
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 2839
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 2840
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2842
    :cond_0
    monitor-exit v0

    .line 2843
    return-void

    .line 2842
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 6
    .param p1, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 2700
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2701
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v1, :cond_0

    .line 2703
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2704
    monitor-exit v0

    return-void

    .line 2706
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2707
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 2708
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    .line 2709
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2710
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2712
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    .line 2714
    .local v1, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v2, v1, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_1

    .line 2715
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2718
    :cond_1
    monitor-exit v0

    return-void

    .line 2721
    .end local v1    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2724
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2725
    return-void

    .line 2721
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5558
    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 5560
    .local v9, "callingUid":I
    if-eqz v9, :cond_2

    const/16 v0, 0x7d0

    if-eq v9, v0, :cond_2

    .line 5564
    if-eqz v8, :cond_0

    .line 5565
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5567
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5569
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5570
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/Process;->isCoreUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5572
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5573
    return-void

    .line 5575
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5577
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    move-object v10, p0

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 5579
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1870
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 1874
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 1661
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1662
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 1666
    .local v1, "currentUserId":I
    if-eq p1, v1, :cond_0

    .line 1667
    monitor-exit v0

    return-void

    .line 1669
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1670
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2

    .line 1672
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1673
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1675
    .end local v1    # "currentUserId":I
    :cond_2
    monitor-exit v0

    .line 1676
    return-void

    .line 1675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 8
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 2330
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2332
    .local v1, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v1, :cond_4

    .line 2333
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->clientDeathRecipient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2334
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2336
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2337
    .local v2, "numItems":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 2338
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 2339
    .local v5, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v6

    if-ne v6, v1, :cond_0

    .line 2340
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2337
    .end local v5    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2344
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v5, 0x0

    if-ne v3, v1, :cond_3

    .line 2345
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v3, :cond_2

    .line 2346
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2347
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_2

    .line 2348
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2352
    :cond_2
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2353
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2355
    :cond_3
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-ne v3, v1, :cond_4

    .line 2356
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2359
    .end local v1    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v2    # "numItems":I
    :cond_4
    monitor-exit v0

    .line 2360
    return-void

    .line 2359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeImeSurface()V
    .locals 3

    .line 4221
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4222
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x424

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4223
    return-void
.end method

.method public removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 4229
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x425

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4230
    return-void
.end method

.method public reportActivityView(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .locals 12
    .param p1, "parentClient"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "childDisplayId"    # I
    .param p3, "matrixValues"    # [F

    .line 4140
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 4141
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_10

    .line 4145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4146
    .local v1, "callingUid":I
    iget v2, v0, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v1, v2, :cond_f

    .line 4150
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 4151
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4152
    .local v3, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-nez v3, :cond_0

    .line 4153
    monitor-exit v2

    return-void

    .line 4157
    :cond_0
    if-nez p3, :cond_3

    .line 4158
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 4159
    .local v4, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v4, :cond_1

    .line 4160
    monitor-exit v2

    return-void

    .line 4162
    :cond_1
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v5

    if-ne v5, v3, :cond_2

    .line 4166
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 4167
    monitor-exit v2

    return-void

    .line 4163
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only the owner client can clear ActivityViewGeometry for display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    throw v5

    .line 4170
    .end local v4    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v1    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_3
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 4171
    .restart local v4    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v5

    if-ne v5, v3, :cond_4

    goto :goto_0

    .line 4172
    :cond_4
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is already registered by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4173
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    throw v5

    .line 4175
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v1    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_5
    :goto_0
    if-nez v4, :cond_7

    .line 4176
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v6, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4180
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v5, v3, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V

    move-object v4, v5

    .line 4181
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 4177
    :cond_6
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot access to display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "childDisplayId":I
    .end local p3    # "matrixValues":[F
    throw v5

    .line 4183
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v1    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_7
    :goto_1
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 4185
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-nez v5, :cond_8

    goto :goto_6

    .line 4189
    :cond_8
    const/4 v5, 0x0

    .line 4190
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 4191
    .local v6, "displayId":I
    const/4 v7, 0x0

    .line 4193
    .local v7, "needToNotify":Z
    :goto_2
    if-ne v6, p2, :cond_9

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    or-int/2addr v7, v8

    .line 4194
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 4195
    .local v8, "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v8, :cond_a

    .line 4196
    goto :goto_5

    .line 4198
    :cond_a
    if-nez v5, :cond_b

    .line 4199
    new-instance v9, Landroid/graphics/Matrix;

    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v5, v9

    goto :goto_4

    .line 4201
    :cond_b
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 4203
    :goto_4
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v9

    iget v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v9, v10, :cond_d

    .line 4204
    if-eqz v7, :cond_c

    .line 4205
    const/16 v9, 0x9

    new-array v9, v9, [F

    .line 4206
    .local v9, "values":[F
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->getValues([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4208
    :try_start_1
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v10, v10, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    invoke-interface {v10, v11, v9}, Lcom/android/internal/view/IInputMethodClient;->updateActivityViewToScreenMatrix(I[F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4210
    goto :goto_5

    .line 4209
    :catch_0
    move-exception v10

    .line 4216
    .end local v3    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v4    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "displayId":I
    .end local v7    # "needToNotify":Z
    .end local v8    # "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    .end local v9    # "values":[F
    :cond_c
    :goto_5
    :try_start_2
    monitor-exit v2

    .line 4217
    return-void

    .line 4214
    .restart local v3    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v4    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v6    # "displayId":I
    .restart local v7    # "needToNotify":Z
    .restart local v8    # "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    :cond_d
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v9

    iget v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    move v6, v9

    .line 4215
    .end local v8    # "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    goto :goto_2

    .line 4186
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "displayId":I
    .end local v7    # "needToNotify":Z
    :cond_e
    :goto_6
    monitor-exit v2

    return-void

    .line 4216
    .end local v3    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v4    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4147
    :cond_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The caller doesn\'t own the display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4142
    .end local v1    # "callingUid":I
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display for non-existent displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reportPerceptible(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 3309
    const-string/jumbo v0, "windowToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3311
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3312
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3313
    monitor-exit v1

    return-void

    .line 3315
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3317
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v4, p1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    if-eq v4, p2, :cond_1

    .line 3319
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 3320
    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3323
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3324
    nop

    .line 3325
    .end local v2    # "ident":J
    monitor-exit v1

    .line 3326
    return-void

    .line 3323
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3324
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "perceptible":Z
    throw v4

    .line 3325
    .end local v2    # "ident":J
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "perceptible":Z
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .locals 8
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2767
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_0

    .line 2769
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2770
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2771
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x41a

    aget-object v1, v0, v1

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    invoke-virtual {v3, v4, v2, v1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2775
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_0
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .locals 1
    .param p1, "unbindClientReason"    # I

    .line 2761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2762
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2763
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2764
    return-void
.end method

.method scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "clientToBeReset"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1681
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_1

    .line 1682
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v0, p1, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

    .line 1684
    return-void

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1688
    :cond_1
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V

    .line 1690
    .local v0, "task":Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 1691
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1692
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 10
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 4072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 4073
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4074
    .local v0, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 4075
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4076
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4078
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicated subtype definition found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4079
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4078
    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4082
    :cond_2
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4083
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4084
    monitor-exit v1

    return-void

    .line 4086
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_4

    .line 4087
    monitor-exit v1

    return-void

    .line 4089
    :cond_4
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4090
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 4093
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4097
    .local v4, "packageInfos":[Ljava/lang/String;
    nop

    .line 4098
    if-eqz v4, :cond_8

    .line 4099
    :try_start_2
    array-length v5, v4

    .line 4100
    .local v5, "packageNum":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_8

    .line 4101
    aget-object v7, v4, v6

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4102
    array-length v7, p2

    if-lez v7, :cond_6

    .line 4103
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4105
    :cond_6
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4107
    :goto_3
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4108
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    .line 4107
    invoke-static {v7, v8, v9}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 4109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4111
    .local v7, "ident":J
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4113
    :try_start_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4114
    nop

    .line 4115
    monitor-exit v1

    return-void

    .line 4113
    :catchall_0
    move-exception v2

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4114
    nop

    .end local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "imiId":Ljava/lang/String;
    .end local p2    # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    throw v2

    .line 4100
    .end local v7    # "ident":J
    .restart local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "imiId":Ljava/lang/String;
    .restart local p2    # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4119
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "packageInfos":[Ljava/lang/String;
    .end local v5    # "packageNum":I
    .end local v6    # "i":I
    :cond_8
    monitor-exit v1

    .line 4120
    return-void

    .line 4094
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v2

    .line 4095
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    const-string v5, "Failed to get package infos"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    monitor-exit v1

    return-void

    .line 4119
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 4072
    .end local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9
    :goto_4
    return-void
.end method

.method setCurHostInputToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "callerImeToken"    # Landroid/os/IBinder;
    .param p2, "hostInputToken"    # Landroid/os/IBinder;

    .line 2204
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2205
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2206
    monitor-exit v0

    return-void

    .line 2208
    :cond_0
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 2209
    monitor-exit v0

    .line 2210
    return-void

    .line 2209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 4348
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_1

    .line 4349
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 4352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4354
    goto :goto_0

    .line 4353
    :catch_0
    move-exception v0

    .line 4356
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 4357
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1

    .line 4360
    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4362
    goto :goto_1

    .line 4361
    :catch_1
    move-exception v0

    .line 4365
    :cond_1
    :goto_1
    return-void
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .line 3168
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3169
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_7

    .line 3174
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3175
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 3176
    .local v1, "subtypeCount":I
    if-gtz v1, :cond_0

    .line 3177
    return-void

    .line 3179
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3181
    .local v2, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_1

    if-ge p2, v1, :cond_1

    .line 3182
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .local v3, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    .line 3186
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 3188
    .restart local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    const-string v4, "InputMethodManagerService"

    if-eqz v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 3193
    :cond_2
    if-eq v3, v2, :cond_3

    .line 3194
    const/4 v5, 0x1

    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 3195
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v5, :cond_3

    .line 3197
    :try_start_0
    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3198
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v5, v3}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3201
    goto :goto_1

    .line 3199
    :catch_0
    move-exception v5

    .line 3200
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Failed to call changeInputMethodSubtype"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void

    .line 3189
    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal subtype state: old subtype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new subtype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    return-void

    .line 3208
    .end local v1    # "subtypeCount":I
    .end local v2    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3212
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 3216
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3218
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3219
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3220
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3221
    const-string/jumbo v4, "input_method_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3222
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3224
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3226
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3227
    nop

    .line 3228
    return-void

    .line 3226
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3227
    throw v3

    .line 3170
    .end local v1    # "ident":J
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .locals 11
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 3331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 3332
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3333
    return v2

    .line 3336
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 3337
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3338
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    goto :goto_0

    .line 3339
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    .line 3340
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3343
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_3

    .line 3344
    return v2

    .line 3349
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLongshotBlockShowing:Z

    const-string v3, "InputMethodManagerService"

    if-eqz v1, :cond_4

    .line 3350
    const-string v0, "Longshot Blocking"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    return v2

    .line 3355
    :cond_4
    const/4 v1, 0x0

    .line 3356
    .local v1, "res":Z
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v4, :cond_7

    .line 3359
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showCurrentInputLocked: mCurToken="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_5
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 3363
    .local v2, "showInputToken":Landroid/os/Binder;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3364
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3fc

    .line 3365
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getImeShowFlags()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 3364
    move v6, p4

    move-object v8, p3

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v10, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3367
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3368
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-nez v3, :cond_6

    .line 3369
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v5, 0x2c081001

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3371
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 3373
    :cond_6
    const/4 v1, 0x1

    .line 3374
    .end local v2    # "showInputToken":Landroid/os/Binder;
    goto :goto_1

    :cond_7
    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    const-wide/16 v5, 0xbb8

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    add-long/2addr v9, v5

    cmp-long v4, v7, v9

    if-ltz v4, :cond_8

    .line 3380
    const/16 v4, 0x7d00

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 3381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v5, v2

    .line 3380
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3382
    const-string v0, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3384
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x40800005    # 4.0000024f

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    .line 3388
    :cond_8
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_9

    .line 3390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t show input: connection = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    add-long/2addr v7, v5

    .line 3391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3390
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    :cond_9
    :goto_1
    return v1
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .line 3928
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3930
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3931
    monitor-exit v0

    return-void

    .line 3933
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3935
    monitor-exit v0

    .line 3936
    return-void

    .line 3935
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .line 3857
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3858
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3859
    monitor-exit v0

    return-void

    .line 3861
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3862
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3862
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    monitor-exit v0

    return-void

    .line 3869
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x1

    .line 3871
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 3869
    :goto_0
    invoke-virtual {v2, v3, p2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3872
    monitor-exit v0

    .line 3873
    return-void

    .line 3872
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I
    .param p3, "displayId"    # I

    .line 3878
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3885
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3887
    return-void

    .line 3880
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "showInputMethodPickerFromSystem requires WRITE_SECURE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3234
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3235
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3236
    monitor-exit v1

    return v3

    .line 3238
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3240
    .local v4, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3241
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v2, v6, :cond_2

    .line 3245
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3246
    .local v2, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v2, :cond_4

    .line 3249
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v9, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3251
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring showSoftInput of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3252
    nop

    .line 3267
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3252
    return v3

    .line 3257
    .end local v2    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_2
    :try_start_3
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3

    const-string v2, "InputMethodManagerService"

    const-string v6, "Client requesting input be shown"

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateInputMethod(Z)V

    .line 3264
    invoke-virtual {p0, p2, p3, p4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3267
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3264
    return v2

    .line 3247
    .restart local v2    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_4
    :try_start_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uid":I
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3267
    .end local v2    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v0    # "uid":I
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "flags":I
    .restart local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3268
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    throw v2

    .line 3269
    .end local v4    # "ident":J
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "windowToken":Landroid/os/IBinder;
    .restart local p3    # "flags":I
    .restart local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .locals 20
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I
    .param p10, "unverifiedTargetSdkVersion"    # I

    .line 3520
    move-object/from16 v13, p0

    move-object/from16 v14, p7

    if-nez p3, :cond_0

    .line 3521
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "windowToken cannot be null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3524
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 3526
    .local v15, "callingUserId":I
    if-eqz v14, :cond_3

    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_3

    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 3527
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, v15, :cond_3

    .line 3528
    iget-object v0, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "Using EditorInfo.targetInputMethodUser requires INTERACT_ACROSS_USERS_FULL."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 3538
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3537
    invoke-static {v0}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v15, :cond_1

    .line 3540
    const/4 v0, 0x0

    .local v0, "userId":I
    goto :goto_0

    .line 3542
    .end local v0    # "userId":I
    :cond_1
    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3546
    .restart local v0    # "userId":I
    :goto_0
    iget-object v1, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v1, v0}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not running."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    sget-object v1, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3546
    :cond_2
    move/from16 v16, v0

    goto :goto_1

    .line 3561
    .end local v0    # "userId":I
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3e7

    if-ne v15, v0, :cond_4

    .line 3563
    const/4 v0, 0x0

    move/from16 v16, v0

    .restart local v0    # "userId":I
    goto :goto_1

    .line 3565
    .end local v0    # "userId":I
    :cond_4
    move v0, v15

    move/from16 v16, v0

    .line 3570
    .local v16, "userId":I
    :goto_1
    iget-object v12, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 3571
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v17, v0

    .line 3573
    .local v17, "ident":J
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v19, v12

    move/from16 v12, v16

    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;III)Lcom/android/internal/view/InputBindResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3577
    .local v0, "result":Lcom/android/internal/view/InputBindResult;
    :try_start_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3578
    nop

    .line 3579
    .end local v17    # "ident":J
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3580
    if-nez v0, :cond_5

    .line 3582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3583
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3584
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " editorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3582
    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3588
    :cond_5
    return-object v0

    .line 3577
    .end local v0    # "result":Lcom/android/internal/view/InputBindResult;
    .restart local v17    # "ident":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3578
    nop

    .end local v15    # "callingUserId":I
    .end local v16    # "userId":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "startInputReason":I
    .end local p2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p3    # "windowToken":Landroid/os/IBinder;
    .end local p4    # "startInputFlags":I
    .end local p5    # "softInputMode":I
    .end local p6    # "windowFlags":I
    .end local p7    # "attribute":Landroid/view/inputmethod/EditorInfo;
    .end local p8    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p9    # "missingMethods":I
    .end local p10    # "unverifiedTargetSdkVersion":I
    throw v1

    .line 3579
    .end local v17    # "ident":J
    .restart local v15    # "callingUserId":I
    .restart local v16    # "userId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "startInputReason":I
    .restart local p2    # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p3    # "windowToken":Landroid/os/IBinder;
    .restart local p4    # "startInputFlags":I
    .restart local p5    # "softInputMode":I
    .restart local p6    # "windowFlags":I
    .restart local p7    # "attribute":Landroid/view/inputmethod/EditorInfo;
    .restart local p8    # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p9    # "missingMethods":I
    .restart local p10    # "unverifiedTargetSdkVersion":I
    :catchall_1
    move-exception v0

    move-object/from16 v19, v12

    :goto_2
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    .locals 19
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "missingMethods"    # I
    .param p4, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p5, "startInputFlags"    # I
    .param p6, "startInputReason"    # I

    .line 2490
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2491
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2494
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 2497
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2502
    :cond_1
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget-object v5, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    const-string v4, "InputMethodManagerService"

    if-nez v0, :cond_2

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2509
    :cond_2
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2511
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2515
    :cond_3
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result v5

    .line 2518
    .local v5, "displayIdToShowIme":I
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v6, 0x1

    if-eq v0, v2, :cond_5

    .line 2520
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 2523
    invoke-virtual {v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2526
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switching to client: client="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2527
    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " keyguard="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2526
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_4
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_5

    .line 2532
    iget-object v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v8, 0xbcc

    invoke-virtual {v7, v8, v6, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2537
    :cond_5
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    .line 2538
    if-gtz v0, :cond_6

    iput v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    .line 2539
    :cond_6
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2540
    move-object/from16 v7, p2

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 2541
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2542
    invoke-direct {v1, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getActivityViewToScreenMatrixLocked(II)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2543
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v0, v5, :cond_7

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 2548
    or-int/lit8 v0, p3, 0x8

    move v8, v0

    .end local p3    # "missingMethods":I
    .local v0, "missingMethods":I
    goto :goto_0

    .line 2550
    .end local v0    # "missingMethods":I
    .restart local p3    # "missingMethods":I
    :cond_7
    move/from16 v8, p3

    .end local p3    # "missingMethods":I
    .local v8, "missingMethods":I
    :goto_0
    iput v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 2551
    iput-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2555
    const/16 v0, 0x40

    iget v9, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    const/4 v11, 0x0

    if-eqz v9, :cond_8

    move v9, v6

    goto :goto_1

    :cond_8
    move v9, v11

    .line 2556
    :goto_1
    invoke-static {v0, v9}, Lcom/android/server/vcaction/OpVerificationCodeInjector;->notifyImeAttributeChanged(IZ)V

    .line 2564
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v5, v0, :cond_d

    .line 2566
    iget-object v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_a

    .line 2569
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    move v6, v11

    :goto_2
    move/from16 v9, p6

    invoke-virtual {v1, v9, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    .line 2572
    :cond_a
    move/from16 v9, p6

    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_e

    .line 2573
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_b

    .line 2576
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2577
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/16 v18, 0x0

    move-object v12, v0

    move-object/from16 v16, v4

    move/from16 v17, v6

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2580
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v16, 0xbb8

    add-long v14, v14, v16

    cmp-long v0, v12, v14

    if-gez v0, :cond_c

    .line 2589
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/16 v18, 0x0

    move-object v12, v0

    move-object/from16 v16, v4

    move/from16 v17, v6

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2593
    :cond_c
    const/16 v0, 0x7d00

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v13, v12, v11

    .line 2594
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-wide v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v12, v6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v10, 0x2

    aput-object v11, v12, v10

    .line 2593
    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_3

    .line 2564
    :cond_d
    move/from16 v9, p6

    .line 2599
    :cond_e
    :goto_3
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2600
    .local v10, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v10, :cond_10

    .line 2604
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2606
    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.view.InputMethod"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2607
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2608
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v11, 0x10403d7

    const-string v12, "android.intent.extra.client_label"

    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2610
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v11, v13, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    const-string v12, "android.intent.extra.client_intent"

    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2613
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v11, 0x40800005    # 4.0000024f

    invoke-direct {v1, v0, v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    .line 2615
    iput-boolean v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    .line 2616
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2617
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2618
    iput v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2624
    :try_start_0
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x7db

    invoke-interface {v4, v0, v6, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2627
    goto :goto_4

    .line 2626
    :catch_0
    move-exception v0

    .line 2628
    :goto_4
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/16 v17, 0x0

    move-object v11, v0

    move/from16 v16, v4

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2632
    :cond_f
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure connecting to input method service: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2601
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 14
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1881
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1885
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_4

    .line 1886
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 1887
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1888
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1889
    .local v2, "currentUserId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1890
    invoke-virtual {v4, v2}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1889
    :goto_0
    invoke-virtual {v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1891
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1892
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1893
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1894
    if-eqz p1, :cond_1

    .line 1895
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1897
    :cond_1
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 1898
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v4, 0x111012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1900
    if-eqz v3, :cond_2

    .line 1901
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 1905
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1906
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1908
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1909
    .local v3, "broadcastFilterForSystemUser":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1910
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1911
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1912
    const-string v4, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1913
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;

    invoke-direct {v6, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1916
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1917
    .local v4, "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1918
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    invoke-direct {v9, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v4

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1921
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    .line 1922
    .local v6, "defaultImiId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v1

    .line 1923
    .local v7, "imeSelectedOnBoot":Z
    if-nez v7, :cond_3

    move v5, v1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1924
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1925
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1926
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1927
    invoke-virtual {v8}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v8

    .line 1925
    invoke-static {v1, v5, v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1930
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/server/vcaction/OpVerificationCodeInjector;->init(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1933
    .end local v2    # "currentUserId":I
    .end local v3    # "broadcastFilterForSystemUser":Landroid/content/IntentFilter;
    .end local v4    # "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    .end local v6    # "defaultImiId":Ljava/lang/String;
    .end local v7    # "imeSelectedOnBoot":Z
    :cond_4
    monitor-exit v0

    .line 1934
    return-void

    .line 1933
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unbindCurrentClientLocked(I)V
    .locals 6
    .param p1, "unbindClientReason"    # I

    .line 2372
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    .line 2375
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2376
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2377
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    .line 2378
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2383
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2385
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2387
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2389
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 2393
    :cond_1
    return-void
.end method

.method unbindCurrentMethodLocked()V
    .locals 5

    .line 2728
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2729
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2730
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 2733
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_1

    .line 2734
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2735
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    .line 2738
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2744
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-interface {v3, v0, v4}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2746
    goto :goto_0

    .line 2745
    :catch_0
    move-exception v0

    .line 2748
    :goto_0
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2749
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 2750
    invoke-direct {p0, v1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2751
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2752
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2753
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 2756
    :cond_2
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2757
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2758
    return-void
.end method

.method updateCurrentProfileIds()V
    .locals 3

    .line 1861
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1862
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 1861
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1863
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0
    .param p1, "enabledMayChange"    # Z

    .line 3086
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 3087
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 3088
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 12
    .param p1, "enabledMayChange"    # Z

    .line 3091
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 3092
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 3093
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3096
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3098
    .local v3, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x8000

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3100
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3098
    invoke-interface {v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 3101
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v5, v0, :cond_0

    .line 3107
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3109
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3110
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v11

    .line 3107
    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3113
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_1

    .line 3112
    :catch_0
    move-exception v4

    .line 3093
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3120
    .end local v1    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 3122
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3123
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 3125
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3127
    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3128
    :catch_1
    move-exception v0

    .line 3129
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown input method from prefs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3130
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 3131
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    goto :goto_3

    .line 3134
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 3140
    :goto_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 3142
    return-void
.end method

.method public updateKeyboardFromSettingsLocked()V
    .locals 3

    .line 3145
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 3146
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3148
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3149
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x10202e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 3157
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/widget/Switch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3165
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_0
    return-void
.end method
