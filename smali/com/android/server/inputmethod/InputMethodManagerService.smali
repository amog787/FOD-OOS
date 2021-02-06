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

    .line 1688
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 352
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 373
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 374
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 381
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 385
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 401
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 490
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    .line 516
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    .line 602
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 674
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 700
    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    .line 722
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 724
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 751
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    .line 758
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 766
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 835
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 943
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    .line 951
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    .line 1108
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-direct {v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    .line 1112
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    invoke-direct {v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    .line 3268
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->LONGSHOT_BLOCK_SHOWING_TIMEOUT:I

    .line 3269
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLongshotBlockShowing:Z

    .line 1689
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1690
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1691
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1692
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1694
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 1695
    nop

    .line 1696
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1695
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1697
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1698
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1699
    const-class v3, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 1700
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1701
    new-instance v3, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 1702
    new-instance v3, Lcom/android/internal/os/HandlerCaller;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-direct {v3, p1, v0, v4, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1708
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1709
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1710
    const-class v3, Landroid/os/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1711
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v3, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    .line 1712
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.input_methods"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHasFeature:Z

    .line 1714
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10407a2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1715
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    .line 1717
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1718
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "android.allowDuringSetup"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1719
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 1721
    .local v3, "accentColor":I
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1723
    const v5, 0x10804e7

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1724
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1725
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1726
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1727
    const-string/jumbo v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1728
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1730
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1731
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1732
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1734
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1736
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    .line 1737
    const/4 v1, 0x0

    .line 1739
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

    .line 1742
    goto :goto_0

    .line 1740
    :catch_0
    move-exception v5

    .line 1741
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "InputMethodManagerService"

    const-string v7, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1744
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1747
    new-instance v5, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1748
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v13, v6, 0x1

    move-object v8, v5

    move v12, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1751
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v2, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1752
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v2, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1754
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 217
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/view/IInputMethodClient;

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserOnHandlerLocked(ILcom/android/internal/view/IInputMethodClient;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Z

    .line 217
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLongshotBlockShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I

    .line 217
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

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethod(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportImeControl(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastSwitchUserId(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Z

    .line 217
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;
    .param p2, "x2"    # Z

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 217
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

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethod(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserAction(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/inputmethod/EditorInfo;

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportPreRendered(Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # Z

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeVisibility(Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    return-void
.end method

.method private applyImeVisibility(Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "setVisible"    # Z

    .line 4247
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4248
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4249
    monitor-exit v0

    return-void

    .line 4251
    :cond_0
    if-nez p3, :cond_1

    .line 4252
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    .line 4259
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    .line 4260
    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 4259
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->hideIme(Landroid/os/IBinder;I)V

    goto :goto_0

    .line 4265
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->showImePostLayout(Landroid/os/IBinder;)V

    .line 4267
    :cond_2
    :goto_0
    monitor-exit v0

    .line 4268
    return-void

    .line 4267
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

    .line 2003
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2010
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OpStartAppControlInjector;->setCurrentIME(Ljava/lang/String;)V

    .line 2013
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2014
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2013
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 2004
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

    .line 2005
    const/4 v0, 0x0

    return v0
.end method

.method private calledFromValidUserLocked()Z
    .locals 6

    .line 1936
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1937
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1945
    .local v1, "userId":I
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 1946
    return v2

    .line 1951
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

    .line 1953
    return v2

    .line 1957
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 1958
    return v2

    .line 1966
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1973
    return v2

    .line 1976
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 1977
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1976
    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    return v5
.end method

.method private calledWithValidTokenLocked(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1989
    if-eqz p1, :cond_1

    .line 1992
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_0

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to an invalid token. uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1993
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/4 v0, 0x0

    return v0

    .line 1997
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1990
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "token must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 3821
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3822
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3823
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 3824
    return v2

    .line 3825
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3828
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3825
    invoke-static {v3, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3829
    return v2

    .line 3831
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    .line 4686
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4687
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 4686
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 4688
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    .line 4692
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4693
    const/4 v1, 0x1

    return v1

    .line 4696
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "checker"    # Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 2645
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 2651
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->displayCanShowIme(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p0

    :cond_1
    return v0

    .line 2646
    :cond_2
    :goto_0
    return v0
.end method

.method private createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5362
    if-eqz p1, :cond_6

    .line 5365
    if-eqz p3, :cond_5

    .line 5368
    if-eqz p2, :cond_4

    .line 5371
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 5372
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5376
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 5377
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5378
    .local v4, "uid":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5379
    monitor-exit v1

    return-object v3

    .line 5381
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_1

    .line 5382
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

    .line 5384
    monitor-exit v1

    return-object v3

    .line 5389
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5390
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

    .line 5392
    monitor-exit v1

    return-object v3

    .line 5395
    :cond_2
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v8, v2

    .line 5397
    .local v8, "imeUserId":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5399
    .local v7, "appUserId":I
    invoke-static {p2, v8}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 5401
    .local v6, "contentUriOwnerUserId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 5408
    .local v3, "contentUriWithoutUserId":Landroid/net/Uri;
    new-instance v9, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v2, v9

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    monitor-exit v1

    return-object v9

    .line 5410
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

    .line 5373
    :cond_3
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "contentUri must have content scheme"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5369
    .end local v0    # "contentUriScheme":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5366
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5363
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .locals 4
    .param p1, "sessionState"    # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2778
    if-eqz p1, :cond_1

    .line 2779
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2781
    :try_start_0
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2785
    goto :goto_0

    .line 2782
    :catch_0
    move-exception v0

    .line 2783
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2784
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2786
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2788
    :cond_0
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 2789
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2790
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2793
    :cond_1
    return-void
.end method

.method private getActivityViewToScreenMatrixLocked(II)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "clientDisplayId"    # I
    .param p2, "imeDisplayId"    # I

    .line 2456
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 2457
    return-object v0

    .line 2459
    :cond_0
    move v1, p1

    .line 2460
    .local v1, "displayId":I
    const/4 v2, 0x0

    .line 2462
    .local v2, "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 2463
    .local v3, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v3, :cond_1

    .line 2464
    return-object v0

    .line 2466
    :cond_1
    if-nez v2, :cond_2

    .line 2467
    new-instance v4, Landroid/graphics/Matrix;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v2, v4

    goto :goto_1

    .line 2469
    :cond_2
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2471
    :goto_1
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-ne v4, p2, :cond_3

    .line 2472
    return-object v2

    .line 2474
    :cond_3
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget v1, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2475
    .end local v3    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    goto :goto_0
.end method

.method private getAppShowFlags()I
    .locals 2

    .line 2401
    const/4 v0, 0x0

    .line 2402
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_0

    .line 2403
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2404
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_1

    .line 2405
    or-int/lit8 v0, v0, 0x1

    .line 2407
    :cond_1
    :goto_0
    return v0
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 8

    .line 5182
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5183
    return-object v1

    .line 5185
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v0

    .line 5186
    .local v0, "subtypeIsSelected":Z
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 5187
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 5190
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v3, :cond_2

    .line 5191
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 5192
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    .line 5193
    .local v3, "subtypeId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 5197
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5198
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 5201
    .local v4, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 5202
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 5203
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 5204
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v7, "keyboard"

    invoke-static {v5, v4, v7, v1, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5207
    if-nez v5, :cond_4

    .line 5208
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v5, v4, v1, v1, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5213
    .end local v4    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    :goto_0
    goto :goto_1

    .line 5214
    :cond_5
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5217
    .end local v3    # "subtypeId":I
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v1

    .line 5188
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

    .line 5227
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5228
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5229
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

    .line 2077
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2080
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2081
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 2082
    .local v7, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v1

    .line 2084
    .local v8, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v8, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2085
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v8, v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 2087
    new-instance v9, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2088
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, v9

    move-object v4, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 2089
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

    .line 2233
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 2235
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2236
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    .line 2238
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2240
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 2241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2243
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2246
    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2247
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 2248
    .local v7, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v1

    .line 2250
    .local v8, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v8, p3}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2251
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, v8, v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 2253
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 2254
    .local v9, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v9, :cond_3

    .line 2255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2257
    :cond_3
    new-instance v10, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2258
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, v10

    move-object v4, v0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 2259
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v9, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getImeShowFlags()I
    .locals 2

    .line 2390
    const/4 v0, 0x0

    .line 2391
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_0

    .line 2392
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 2394
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_1

    .line 2395
    or-int/lit8 v0, v0, 0x1

    .line 2397
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

    .line 5221
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5222
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5223
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

    .line 2060
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2062
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_0

    .line 2064
    .end local v0    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2065
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2066
    .local v1, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2068
    .local v2, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2069
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    move-object v0, v1

    .line 2072
    .end local v1    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_0
    return-object v0
.end method

.method private getLastSwitchUserId(Landroid/os/ShellCommand;)I
    .locals 3
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5717
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5718
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5719
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 5720
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

    .line 5823
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 5824
    .local v0, "nextOption":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5825
    nop

    .line 5833
    .end local v0    # "nextOption":Ljava/lang/String;
    const/4 v0, -0x2

    return v0

    .line 5827
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

    .line 5832
    .end local v0    # "nextOption":Ljava/lang/String;
    goto :goto_0

    .line 5830
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

    .line 4668
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4669
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 4670
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 4673
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v2, :cond_3

    .line 4676
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

    .line 4678
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    .line 4679
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

    .line 4678
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4682
    :cond_3
    monitor-exit v0

    .line 4683
    return-void

    .line 4682
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

    .line 5789
    move-object/from16 v7, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v8

    .line 5790
    .local v8, "userIdToBeResolved":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 5791
    .local v9, "imeId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 5792
    .local v10, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    .line 5793
    .local v11, "error":Ljava/io/PrintWriter;
    iget-object v12, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 5794
    :try_start_0
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5795
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 5794
    invoke-static {v8, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 5796
    .local v0, "userIds":[I
    array-length v13, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_1

    aget v1, v0, v15

    move v6, v1

    .line 5797
    .local v6, "userId":I
    move-object/from16 v5, p1

    invoke-direct {v7, v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5798
    goto :goto_1

    .line 5800
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

    .line 5796
    .end local v16    # "userId":I
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5803
    .end local v0    # "userIds":[I
    :cond_1
    monitor-exit v12

    .line 5804
    return v14

    .line 5803
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

    .line 5840
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    .line 5841
    .local v12, "failedToEnableUnknownIme":Z
    const/4 v13, 0x0

    .line 5842
    .local v13, "previouslyEnabled":Z
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v7, v1, :cond_1

    .line 5843
    if-eqz v9, :cond_0

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5844
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 5846
    :cond_0
    invoke-direct {v0, v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v13

    goto/16 :goto_2

    .line 5849
    :cond_1
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v1

    .line 5850
    .local v14, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 5851
    .local v15, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v1

    .line 5853
    .local v6, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v6, v7}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5854
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v6, v14, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5856
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5857
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

    .line 5858
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    if-eqz v9, :cond_5

    .line 5859
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5860
    const/4 v12, 0x1

    goto :goto_2

    .line 5862
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

    .line 5863
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5864
    const/4 v2, 0x1

    .line 5865
    .end local v13    # "previouslyEnabled":Z
    .local v2, "previouslyEnabled":Z
    move v13, v2

    goto :goto_1

    .line 5867
    .end local v2    # "previouslyEnabled":Z
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v13    # "previouslyEnabled":Z
    :cond_3
    goto :goto_0

    .line 5868
    :cond_4
    :goto_1
    if-nez v13, :cond_6

    .line 5869
    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    goto :goto_2

    .line 5873
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5876
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v3

    .line 5874
    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v13

    .line 5879
    .end local v1    # "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .end local v14    # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v18    # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_6
    :goto_2
    if-eqz v12, :cond_7

    .line 5880
    const-string v1, "Unknown input method "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5881
    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cannot be enabled for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 5884
    :cond_7
    const-string v1, "Input method "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5885
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5886
    const-string v1, ": "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5887
    if-ne v9, v13, :cond_8

    const-string v1, "already "

    goto :goto_3

    :cond_8
    const-string/jumbo v1, "now "

    :goto_3
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5888
    if-eqz v9, :cond_9

    const-string v1, "enabled"

    goto :goto_4

    :cond_9
    const-string v1, "disabled"

    :goto_4
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5889
    const-string v1, " for user #"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5890
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 5892
    :goto_5
    return-void
.end method

.method private handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .locals 16
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5731
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 5732
    .local v0, "all":Z
    const/4 v2, 0x0

    .line 5733
    .local v2, "brief":Z
    const/4 v3, -0x2

    move v4, v3

    move v3, v2

    move v2, v0

    .line 5735
    .end local v0    # "all":Z
    .local v2, "all":Z
    .local v3, "brief":Z
    .local v4, "userIdToBeResolved":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 5736
    .local v0, "nextOption":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_5

    .line 5737
    nop

    .line 5752
    .end local v0    # "nextOption":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 5753
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5754
    .local v0, "pr":Ljava/io/PrintWriter;
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5755
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 5754
    invoke-static {v4, v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v8

    .line 5756
    .local v8, "userIds":[I
    array-length v9, v8

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_4

    aget v11, v8, v10

    .line 5757
    .local v11, "userId":I
    if-eqz v2, :cond_0

    .line 5758
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v12

    goto :goto_2

    .line 5759
    :cond_0
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v12

    :goto_2
    nop

    .line 5760
    .local v12, "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    array-length v13, v8

    if-le v13, v6, :cond_1

    .line 5761
    const-string v13, "User #"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5762
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5763
    const-string v13, ":"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5765
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

    .line 5766
    .local v14, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v3, :cond_2

    .line 5767
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 5769
    :cond_2
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5770
    const-string v15, ":"

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5771
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/inputmethod/-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8;

    invoke-direct {v15, v0}, Lcom/android/server/inputmethod/-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8;-><init>(Ljava/io/PrintWriter;)V

    const-string v6, "  "

    invoke-virtual {v14, v15, v6}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5773
    .end local v14    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :goto_4
    const/4 v6, 0x1

    goto :goto_3

    .line 5756
    .end local v11    # "userId":I
    .end local v12    # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto :goto_1

    .line 5775
    .end local v0    # "pr":Ljava/io/PrintWriter;
    .end local v8    # "userIds":[I
    :cond_4
    monitor-exit v7

    .line 5776
    return v5

    .line 5775
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5739
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

    .line 5748
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    .line 5744
    :cond_c
    const/4 v3, 0x1

    .line 5745
    goto :goto_7

    .line 5741
    :cond_d
    const/4 v2, 0x1

    .line 5742
    nop

    .line 5751
    .end local v0    # "nextOption":Ljava/lang/String;
    :goto_7
    goto/16 :goto_0
.end method

.method private handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .locals 20
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5938
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5939
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v3

    .line 5940
    .local v3, "userIdToBeResolved":I
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 5941
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5942
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 5941
    invoke-static {v3, v0, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 5943
    .local v0, "userIds":[I
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget v8, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5944
    .local v8, "userId":I
    move-object/from16 v15, p1

    :try_start_1
    invoke-direct {v1, v8, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 5945
    goto/16 :goto_2

    .line 5949
    :cond_0
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 5950
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v6, v11, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 5952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 5954
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5956
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9, v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5958
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;

    invoke-direct {v10, v1}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5961
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$Ufznp6QtlvKmc-UE2qM5QE0C6tE;

    invoke-direct {v10, v1}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$Ufznp6QtlvKmc-UE2qM5QE0C6tE;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5963
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 5964
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5965
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5966
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5967
    invoke-virtual {v12}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v12

    .line 5964
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 5968
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v9

    .line 5969
    .local v9, "nextIme":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_1

    .line 5971
    .end local v9    # "nextIme":Ljava/lang/String;
    .end local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_1
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v9

    .line 5972
    .local v14, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v9

    .line 5973
    .local v13, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v9

    .line 5975
    .local v12, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v12, v8}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5976
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9, v8, v12, v14, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5978
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5979
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

    .line 5982
    .local v9, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 5983
    .restart local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 5986
    .local v11, "nextIme":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v9, v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 5987
    new-instance v12, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$fNiO49PxZWEh32vCF6nuqhrDtOw;

    invoke-direct {v12, v9}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$fNiO49PxZWEh32vCF6nuqhrDtOw;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    invoke-interface {v10, v12}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5991
    invoke-virtual {v9, v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5992
    const/4 v12, -0x1

    invoke-virtual {v9, v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    move-object v9, v11

    .line 5994
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

    .line 5995
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Selected: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5996
    new-instance v6, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$i1_7vZfXoh5fbjEb2f7kLcAViOU;

    invoke-direct {v6, v2}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$i1_7vZfXoh5fbjEb2f7kLcAViOU;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v10, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5943
    .end local v8    # "userId":I
    .end local v9    # "nextIme":Ljava/lang/String;
    .end local v10    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v15, p1

    .line 5998
    .end local v0    # "userIds":[I
    monitor-exit v4

    .line 5999
    const/4 v0, 0x0

    return v0

    .line 5998
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

    .line 5902
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v0

    .line 5903
    .local v0, "userIdToBeResolved":I
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 5904
    .local v1, "imeId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5905
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 5906
    .local v3, "error":Ljava/io/PrintWriter;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 5907
    :try_start_0
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5908
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    .line 5907
    invoke-static {v0, v5, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v5

    .line 5909
    .local v5, "userIds":[I
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget v9, v5, v8

    .line 5910
    .local v9, "userId":I
    invoke-direct {p0, v9, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5911
    goto :goto_1

    .line 5913
    :cond_0
    invoke-direct {p0, v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethod(Ljava/lang/String;I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 5914
    .local v10, "failedToSelectUnknownIme":Z
    if-eqz v10, :cond_1

    .line 5915
    const-string v11, "Unknown input method "

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5916
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5917
    const-string v11, " cannot be selected for user #"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5918
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    .line 5920
    :cond_1
    const-string v11, "Input method "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5921
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5922
    const-string v11, " selected for user #"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5923
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 5909
    .end local v9    # "userId":I
    .end local v10    # "failedToSelectUnknownIme":Z
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5926
    .end local v5    # "userIds":[I
    :cond_2
    monitor-exit v4

    .line 5927
    return v7

    .line 5926
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

    .line 4295
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4296
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4297
    monitor-exit v0

    return-void

    .line 4299
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4301
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v3, p2, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4306
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4307
    nop

    .line 4308
    .end local v1    # "ident":J
    monitor-exit v0

    .line 4309
    return-void

    .line 4306
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4307
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "flags":I
    throw v3

    .line 4308
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

    .line 2945
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

    .line 4877
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 4878
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

    .line 4877
    :goto_0
    return v0
.end method

.method static synthetic lambda$handleMessage$1(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 0
    .param p0, "imes"    # Ljava/util/List;
    .param p1, "userId"    # I
    .param p2, "listener"    # Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    .line 4632
    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;->onInputMethodListUpdated(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$4(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2
    .param p0, "settings"    # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 5987
    nop

    .line 5988
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 5987
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$5(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintWriter;
    .param p1, "ime"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 5996
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

    .line 4217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v1, p1, :cond_0

    .line 4223
    monitor-exit v0

    return-void

    .line 4225
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 4226
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1

    .line 4227
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4229
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    monitor-exit v0

    .line 4230
    return-void

    .line 4229
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

    .line 5235
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5236
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onCreateInlineSuggestionsRequestLocked(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 5237
    monitor-exit v0

    .line 5238
    return-void

    .line 5237
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

    .line 2095
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2097
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 2098
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isInlineSuggestionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_0

    .line 2099
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x1770

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    new-instance v11, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;

    .line 2102
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object v5, v11

    move-object v6, p3

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;-><init>(Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 2100
    invoke-virtual {v2, v3, v4, p2, v11}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2099
    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_0

    .line 2105
    :cond_0
    invoke-interface {p3}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2109
    :goto_0
    goto :goto_1

    .line 2107
    :catch_0
    move-exception v1

    .line 2108
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

    .line 2110
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

    .line 4702
    .local p2, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p3, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p4, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 4703
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 4708
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4713
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4714
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 4716
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4717
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 4718
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4719
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v4

    .line 4720
    .local v4, "imeId":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "InputMethodManagerService"

    if-nez v5, :cond_0

    .line 4721
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

    .line 4724
    goto :goto_1

    .line 4730
    :cond_0
    :try_start_0
    new-instance v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 4731
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v5, p0, v2, v6}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 4732
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4733
    goto :goto_1

    .line 4735
    :cond_1
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4736
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4742
    nop

    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_1

    .line 4740
    :catch_0
    move-exception v5

    .line 4741
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load input method "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4716
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    .end local v4    # "imeId":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4744
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private reportFullscreenMode(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fullscreen"    # Z

    .line 5415
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5416
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5417
    monitor-exit v0

    return-void

    .line 5419
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_2

    .line 5420
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 5421
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe5

    .line 5422
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5421
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 5424
    :cond_2
    monitor-exit v0

    .line 5425
    return-void

    .line 5424
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

    .line 5286
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-eq v1, p1, :cond_0

    .line 5290
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 5292
    :cond_0
    monitor-exit v0

    .line 5293
    return-void

    .line 5292
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

    .line 4234
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4235
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4236
    monitor-exit v0

    return-void

    .line 4238
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    .line 4239
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbf4

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4242
    :cond_1
    monitor-exit v0

    .line 4243
    return-void

    .line 4242
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

    .line 2989
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2990
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2991
    monitor-exit v0

    return-void

    .line 2993
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2994
    .local v1, "targetWindow":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    if-eq v2, v1, :cond_1

    .line 2995
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2997
    :cond_1
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 2998
    .end local v1    # "targetWindow":Landroid/os/IBinder;
    monitor-exit v0

    .line 2999
    return-void

    .line 2998
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

    .line 1767
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 1768
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1769
    return-void

    .line 1772
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1773
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1772
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1774
    .local v0, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1775
    const-string v1, "InputMethodManagerService"

    const-string v2, "No default found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return-void

    .line 1778
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1782
    .local v2, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1783
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    .line 5150
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 5151
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, -0x1

    .line 5153
    .local v1, "lastSubtypeId":I
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5154
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5155
    .local v2, "subtypeHashCode":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 5157
    nop

    .line 5158
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5157
    invoke-static {v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 5161
    goto :goto_0

    .line 5159
    :catch_0
    move-exception v3

    .line 5160
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

    .line 5164
    .end local v2    # "subtypeHashCode":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5165
    return-void
.end method

.method private scheduleNotifyImeUidToAudioService(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2656
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 2657
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2658
    return-void
.end method

.method private setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .line 2951
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 2953
    .local v0, "topFocusedDisplayId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2954
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2955
    monitor-exit v1

    return-void

    .line 2961
    :cond_0
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v2, v0, :cond_1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eqz v2, :cond_1

    .line 2963
    monitor-exit v1

    return-void

    .line 2965
    :cond_1
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2966
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 2967
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2968
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2971
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_4

    const/4 v3, 0x2

    if-eq p3, v3, :cond_3

    .line 2980
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .local v3, "dismissImeOnBackKeyPressed":Z
    :goto_0
    goto :goto_1

    .line 2973
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :cond_3
    const/4 v3, 0x1

    .line 2974
    .restart local v3    # "dismissImeOnBackKeyPressed":Z
    goto :goto_1

    .line 2976
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :cond_4
    const/4 v3, 0x0

    .line 2977
    .restart local v3    # "dismissImeOnBackKeyPressed":Z
    nop

    .line 2983
    :goto_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodWindowStatus(Landroid/os/IBinder;ZZ)V

    .line 2985
    return-void

    .line 2968
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

    .line 3880
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3881
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3882
    monitor-exit v0

    return-void

    .line 3884
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3885
    monitor-exit v0

    .line 3886
    return-void

    .line 3885
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

    .line 3891
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3892
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3893
    monitor-exit v0

    return-void

    .line 3895
    :cond_0
    if-eqz p3, :cond_1

    .line 3896
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 3897
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3898
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 3897
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3896
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0

    .line 3900
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3902
    :goto_0
    monitor-exit v0

    .line 3903
    return-void

    .line 3902
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

    .line 5089
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5090
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 5092
    .local v0, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 5093
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 5094
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5097
    return v1

    .line 5099
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_0

    .line 5100
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 5102
    return v2

    .line 5104
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5105
    .local v3, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, v3, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5108
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 5109
    .local v2, "selId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5110
    const-string v4, "InputMethodManagerService"

    const-string v5, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5111
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5114
    :cond_3
    return v1

    .line 5118
    .end local v2    # "selId":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .line 4271
    if-nez p1, :cond_1

    .line 4272
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4275
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4279
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_2

    .line 4280
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

    .line 4282
    return-void

    .line 4285
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4287
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4290
    nop

    .line 4291
    return-void

    .line 4289
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4290
    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 3
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    .line 5125
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5128
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 5132
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 5133
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 5134
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5135
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5136
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 5137
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5139
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_1

    .line 5129
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5143
    :goto_1
    if-nez p3, :cond_4

    .line 5145
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5147
    :cond_4
    return-void
.end method

.method private shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4009
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4010
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4011
    monitor-exit v0

    return v2

    .line 4013
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 4014
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4013
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 4015
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_1

    .line 4016
    monitor-exit v0

    return v2

    .line 4018
    :cond_1
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 4019
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

    .line 2883
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2884
    :cond_0
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    return v2

    .line 2885
    :cond_1
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    .line 2886
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 2887
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_11

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    goto/16 :goto_5

    .line 2891
    :cond_3
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 2896
    return v3

    .line 2897
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_5

    .line 2898
    return v2

    .line 2901
    :cond_5
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2902
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 2903
    .local v4, "N":I
    const/4 v5, 0x2

    if-le v4, v5, :cond_6

    return v3

    .line 2904
    :cond_6
    if-ge v4, v3, :cond_7

    return v2

    .line 2905
    :cond_7
    const/4 v5, 0x0

    .line 2906
    .local v5, "nonAuxCount":I
    const/4 v6, 0x0

    .line 2907
    .local v6, "auxCount":I
    const/4 v7, 0x0

    .line 2908
    .local v7, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v8, 0x0

    .line 2909
    .local v8, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_b

    .line 2910
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2911
    .local v10, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2912
    invoke-virtual {v11, v12, v10, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2913
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 2914
    .local v12, "subtypeCount":I
    if-nez v12, :cond_8

    .line 2915
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2917
    :cond_8
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v12, :cond_a

    .line 2918
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2919
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v15

    if-nez v15, :cond_9

    .line 2920
    add-int/lit8 v5, v5, 0x1

    .line 2921
    move-object v7, v14

    goto :goto_2

    .line 2923
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 2924
    move-object v8, v14

    .line 2917
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2909
    .end local v10    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "subtypeCount":I
    .end local v13    # "j":I
    :cond_a
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2929
    .end local v9    # "i":I
    :cond_b
    if-gt v5, v3, :cond_10

    if-le v6, v3, :cond_c

    goto :goto_4

    .line 2931
    :cond_c
    if-ne v5, v3, :cond_f

    if-ne v6, v3, :cond_f

    .line 2932
    if-eqz v7, :cond_e

    if-eqz v8, :cond_e

    .line 2933
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 2934
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-nez v9, :cond_d

    .line 2935
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    nop

    .line 2936
    const-string v9, "TrySuppressingImeSwitcher"

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2937
    return v2

    .line 2939
    :cond_e
    return v3

    .line 2941
    :cond_f
    return v2

    .line 2930
    :cond_10
    :goto_4
    return v3

    .line 2889
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

    .line 4869
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4870
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4873
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4874
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .line 4854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4855
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4858
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4859
    const-string v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4862
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4863
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 4864
    .local v2, "userId":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4865
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4866
    return-void

    .line 4864
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

    .line 4884
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isScreenLocked()Z

    move-result v3

    .line 4886
    .local v3, "isScreenLocked":Z
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 4887
    .local v4, "lastInputMethodId":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v5

    .line 4890
    .local v5, "lastInputMethodSubtypeId":I
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 4891
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4892
    move/from16 v7, p1

    :try_start_1
    invoke-virtual {v0, v7, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v0

    .line 4894
    .local v0, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_0

    .line 4895
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 5015
    .end local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :catchall_0
    move-exception v0

    move/from16 v17, v3

    goto/16 :goto_4

    .line 4898
    .restart local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4900
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 4901
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 4902
    .local v9, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v9, :cond_1

    .line 4903
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 4904
    .local v10, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 4905
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    .line 4904
    invoke-static {v10, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v11

    .line 4909
    .end local v9    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 4910
    .local v9, "N":I
    new-array v10, v9, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4911
    new-array v10, v9, [I

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4912
    const/4 v10, 0x0

    .line 4913
    .local v10, "checkedItem":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_5

    .line 4914
    :try_start_6
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4915
    .local v12, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v14, v12, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v14, v13, v11

    .line 4916
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    iget v14, v12, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v14, v13, v11

    .line 4917
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v13, v13, v11

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4918
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    aget v13, v13, v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4919
    .local v13, "subtypeId":I
    if-eq v13, v8, :cond_3

    if-ne v5, v8, :cond_2

    if-eqz v13, :cond_3

    :cond_2
    if-ne v13, v5, :cond_4

    .line 4922
    :cond_3
    move v10, v11

    .line 4913
    .end local v12    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v13    # "subtypeId":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4927
    .end local v11    # "i":I
    :cond_5
    :try_start_7
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    .line 4928
    .local v8, "currentThread":Landroid/app/ActivityThread;
    new-instance v11, Landroid/view/ContextThemeWrapper;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4929
    if-nez v2, :cond_6

    :try_start_8
    invoke-virtual {v8}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 4930
    :cond_6
    :try_start_9
    invoke-virtual {v8, v2}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v12

    :goto_1
    const v13, 0x1030223

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4933
    .local v11, "settingsContext":Landroid/content/Context;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4934
    new-instance v13, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-direct {v13, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4941
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 4942
    .local v12, "dialogContext":Landroid/content/Context;
    sget-object v13, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v14, 0x101005d

    const/4 v15, 0x0

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 4945
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 4947
    .local v14, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 4949
    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 4951
    const-class v15, Landroid/view/LayoutInflater;

    invoke-virtual {v12, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4952
    .local v15, "inflater":Landroid/view/LayoutInflater;
    move/from16 v17, v3

    .end local v3    # "isScreenLocked":Z
    .local v17, "isScreenLocked":Z
    const v3, 0x109008a

    :try_start_a
    invoke-virtual {v15, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4954
    .local v2, "tv":Landroid/view/View;
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4957
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4958
    const v3, 0x10202e3

    .line 4959
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4960
    move-object/from16 v18, v2

    .end local v2    # "tv":Landroid/view/View;
    .local v18, "tv":Landroid/view/View;
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4961
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    .line 4960
    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4962
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v3, 0x10202e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 4964
    .local v2, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4965
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$6;

    invoke-direct {v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4975
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    move-object/from16 v16, v2

    .end local v2    # "hardKeySwitch":Landroid/widget/Switch;
    .local v16, "hardKeySwitch":Landroid/widget/Switch;
    const v2, 0x109008b

    invoke-direct {v3, v12, v2, v0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    move-object v2, v3

    .line 4977
    .local v2, "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$7;

    invoke-direct {v3, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$7;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)V

    .line 4999
    .local v3, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v19, v0

    .end local v0    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .local v19, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v10, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5001
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 5002
    move-object/from16 v20, v2

    .end local v2    # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    .local v20, "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 5003
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5004
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5005
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v21, v3

    .end local v3    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .local v21, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    const/16 v3, 0x7dc

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 5009
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5010
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5011
    const-string v3, "Select input method"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 5012
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5013
    iget v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    move-object/from16 v22, v0

    .end local v0    # "w":Landroid/view/Window;
    .local v22, "w":Landroid/view/Window;
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {v1, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 5014
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5015
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

    .line 5016
    return-void

    .line 5015
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

    .line 4313
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4314
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4315
    monitor-exit v0

    return-void

    .line 4317
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4319
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {p0, v3, p2, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4322
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4323
    nop

    .line 4324
    .end local v1    # "ident":J
    monitor-exit v0

    .line 4325
    return-void

    .line 4322
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4323
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "flags":I
    throw v3

    .line 4324
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

    .line 3580
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

    .line 3582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInputOrWindowGainedFocusInternalLocked: reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3583
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " client="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3584
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inputContext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " missingMethods="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3587
    invoke-static/range {p9 .. p9}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attribute="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " startInputFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " softInputMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unverifiedTargetSdkVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3582
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3580
    :cond_0
    move-object/from16 v14, p8

    .line 3596
    :goto_0
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v15

    .line 3598
    .local v15, "windowDisplayId":I
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3599
    .local v6, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v6, :cond_22

    .line 3602
    iget v0, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v0, v15, :cond_1

    .line 3603
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

    .line 3606
    sget-object v0, Lcom/android/internal/view/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3609
    :cond_1
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v3, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v4, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3618
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 3620
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

    .line 3623
    :cond_2
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3626
    :cond_3
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 3628
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 3629
    .local v0, "nextUserId":I
    if-ne v13, v0, :cond_4

    .line 3630
    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v7, v13, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 3631
    sget-object v1, Lcom/android/internal/view/InputBindResult;->USER_SWITCHING:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3633
    :cond_4
    iget-object v1, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_6

    aget v4, v1, v2

    .line 3634
    .local v4, "profileId":I
    if-ne v4, v13, :cond_5

    .line 3635
    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v7, v13, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 3636
    sget-object v1, Lcom/android/internal/view/InputBindResult;->USER_SWITCHING:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3633
    .end local v4    # "profileId":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3639
    :cond_6
    sget-object v1, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3643
    .end local v0    # "nextUserId":I
    :cond_7
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_8

    .line 3644
    const-string v0, "A background user is requesting window. Hiding IME."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    const-string v0, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xa

    invoke-virtual {v7, v0, v2, v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 3650
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3653
    :cond_8
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-eq v13, v0, :cond_9

    .line 3654
    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v7, v13, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 3655
    sget-object v0, Lcom/android/internal/view/InputBindResult;->USER_SWITCHING:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3661
    :cond_9
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_a

    .line 3663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME PreRendering MASTER flag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    .line 3664
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", LowRam: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3663
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
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

    .line 3669
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v0, v8, :cond_d

    .line 3676
    if-eqz v11, :cond_c

    .line 3677
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

    .line 3680
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

    .line 3684
    :cond_d
    move-object v13, v6

    .end local v6    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v13    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    iput-object v8, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 3685
    iput v10, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 3686
    iput-object v13, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3687
    iput-boolean v4, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 3696
    and-int/lit16 v0, v10, 0xf0

    const/16 v3, 0x10

    const/4 v6, 0x3

    if-eq v0, v3, :cond_f

    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3699
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

    .line 3701
    .local v16, "doAutoShow":Z
    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_5

    :cond_10
    move v0, v2

    :goto_5
    move/from16 v17, v0

    .line 3707
    .local v17, "isTextEditor":Z
    const/16 v18, 0x0

    .line 3709
    .local v18, "didStart":Z
    const/16 v19, 0x0

    .line 3710
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

    .line 3786
    :cond_11
    invoke-static {v12, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3788
    if-eqz v11, :cond_12

    .line 3789
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

    .line 3791
    const/16 v18, 0x1

    goto :goto_6

    .line 3788
    :cond_12
    const/4 v14, 0x1

    .line 3793
    :goto_6
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v14, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_9

    .line 3796
    :cond_13
    const-string v0, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3766
    :cond_14
    const/4 v14, 0x1

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_1d

    .line 3768
    invoke-static {v12, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3770
    if-eqz v11, :cond_15

    .line 3771
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v19

    .line 3773
    const/16 v18, 0x1

    .line 3775
    :cond_15
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v14, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_9

    .line 3778
    :cond_16
    const-string v0, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3762
    :cond_17
    move-object v1, v5

    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v3, 0xd

    invoke-virtual {v7, v0, v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 3764
    goto :goto_9

    .line 3754
    :cond_18
    move-object v1, v5

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_1d

    .line 3756
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v3, 0xc

    invoke-virtual {v7, v0, v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_9

    .line 3712
    :cond_19
    const/4 v14, 0x1

    if-eqz v17, :cond_1c

    if-nez v16, :cond_1a

    goto :goto_8

    .line 3731
    :cond_1a
    if-eqz v17, :cond_1d

    if-eqz v16, :cond_1d

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_1d

    .line 3741
    if-eqz v11, :cond_1b

    .line 3742
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

    .line 3744
    .end local v19    # "res":Lcom/android/internal/view/InputBindResult;
    .local v0, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v1, 0x1

    move-object/from16 v19, v0

    move/from16 v18, v1

    .end local v18    # "didStart":Z
    .local v1, "didStart":Z
    goto :goto_7

    .line 3741
    .end local v0    # "res":Lcom/android/internal/view/InputBindResult;
    .end local v1    # "didStart":Z
    .restart local v18    # "didStart":Z
    .restart local v19    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_1b
    move v14, v3

    .line 3746
    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v7, v8, v1, v0, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_9

    .line 3713
    :cond_1c
    :goto_8
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3718
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v4, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 3727
    iget v0, v13, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v1, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v0, v1, :cond_1d

    .line 3728
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 3803
    :cond_1d
    :goto_9
    if-nez v18, :cond_21

    .line 3804
    if-eqz v11, :cond_20

    .line 3805
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v0

    if-eqz v0, :cond_1f

    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_1e

    goto :goto_a

    .line 3810
    :cond_1e
    sget-object v19, Lcom/android/internal/view/InputBindResult;->NO_EDITOR:Lcom/android/internal/view/InputBindResult;

    goto :goto_b

    .line 3807
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

    .line 3813
    :cond_20
    sget-object v19, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    .line 3816
    :cond_21
    :goto_b
    return-object v19

    .line 3600
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

    .line 5241
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 5242
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-ne v9, v0, :cond_2

    .line 5243
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5244
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 5245
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5248
    :cond_0
    invoke-virtual {v1, v2, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 5249
    monitor-exit v10

    return v11

    .line 5246
    :cond_1
    :goto_0
    monitor-exit v10

    return v13

    .line 5251
    :cond_2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5252
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .line 5253
    .local v14, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v15, v3

    .line 5255
    .local v15, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v15, v9}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5256
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v15, v0, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5258
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5259
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

    .line 5261
    .local v3, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5262
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v4

    .line 5263
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 5266
    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5267
    invoke-virtual {v3, v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5268
    monitor-exit v10

    return v11

    .line 5264
    :cond_4
    :goto_1
    monitor-exit v10

    return v13

    .line 5269
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

    .line 3992
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3993
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3994
    monitor-exit v0

    return v2

    .line 3996
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3997
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3996
    invoke-virtual {v1, p2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 3998
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_1

    .line 3999
    monitor-exit v0

    return v2

    .line 4001
    :cond_1
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4003
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 4004
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

    .line 3920
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 3921
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3922
    monitor-exit v2

    return v3

    .line 3924
    :cond_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v0

    .line 3926
    .local v0, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 3927
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .local v4, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    .line 3929
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v4, 0x0

    .line 3931
    .restart local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    const/4 v5, 0x0

    .line 3932
    .local v5, "targetLastImiId":Ljava/lang/String;
    const/4 v6, -0x1

    .line 3933
    .local v6, "subtypeId":I
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 3934
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3935
    .local v7, "imiIdIsSame":Z
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3936
    .local v8, "lastSubtypeHash":I
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v9, :cond_2

    const/4 v9, -0x1

    goto :goto_1

    .line 3937
    :cond_2
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    :goto_1
    nop

    .line 3940
    .local v9, "currentSubtypeHash":I
    if-eqz v7, :cond_3

    if-eq v8, v9, :cond_4

    .line 3941
    :cond_3
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 3942
    invoke-static {v4, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v10

    move v6, v10

    .line 3946
    .end local v7    # "imiIdIsSame":Z
    .end local v8    # "lastSubtypeHash":I
    .end local v9    # "currentSubtypeHash":I
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3947
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3951
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 3952
    .local v7, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v7, :cond_7

    .line 3953
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 3954
    .local v9, "N":I
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v10, :cond_5

    .line 3955
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 3956
    :cond_5
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    :goto_2
    nop

    .line 3957
    .local v10, "locale":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v9, :cond_7

    .line 3958
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 3959
    .local v12, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    if-lez v13, :cond_6

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3960
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3962
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v15, "keyboard"

    .line 3961
    invoke-static {v13, v14, v15, v10, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    .line 3964
    .local v13, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v13, :cond_6

    .line 3965
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 3966
    nop

    .line 3967
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v14

    .line 3966
    invoke-static {v12, v14}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v14

    move v6, v14

    .line 3968
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3969
    goto :goto_4

    .line 3957
    .end local v12    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3977
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

    .line 3982
    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v1, v7, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3983
    monitor-exit v2

    return v8

    .line 3985
    :cond_8
    move-object/from16 v7, p1

    monitor-exit v2

    return v3

    .line 3987
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

    .line 1792
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1796
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1797
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

    .line 1798
    .local v0, "useCopyOnWriteSettings":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1801
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v3, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1802
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 1812
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1813
    .local v4, "initialUserSwitch":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1816
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v5, :cond_3

    .line 1817
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-virtual {p0, v5, v1, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 1820
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 1821
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1822
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1825
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1827
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1830
    :cond_3
    if-eqz v4, :cond_4

    .line 1831
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1832
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1833
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 1831
    invoke-static {v1, v2, p1, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1839
    :cond_4
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1841
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    .line 1842
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1843
    .local v1, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-nez v1, :cond_5

    .line 1845
    return-void

    .line 1848
    :cond_5
    :try_start_0
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-interface {v2, v5}, Lcom/android/internal/view/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    goto :goto_2

    .line 1849
    :catch_0
    move-exception v2

    .line 1852
    .end local v1    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_6
    :goto_2
    return-void
.end method

.method private transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .locals 2
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 5276
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5277
    :try_start_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5280
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 5281
    .local v1, "curHostInputToken":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5282
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManagerInternal;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 5278
    .end local v1    # "curHostInputToken":Landroid/os/IBinder;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v0

    return v1

    .line 5281
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

    .line 2842
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2843
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2844
    monitor-exit v0

    return-void

    .line 2846
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2848
    .local v1, "ident":J
    const/4 v3, 0x0

    if-nez p3, :cond_1

    .line 2850
    :try_start_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_3

    .line 2851
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 2877
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 2853
    :cond_1
    if-eqz p2, :cond_3

    .line 2857
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateInputMethod(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2859
    const/4 v5, 0x0

    .line 2862
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2863
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2865
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    .line 2864
    invoke-interface {v7, p2, v3, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2863
    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v3

    .line 2868
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 2866
    :catch_0
    move-exception v3

    .line 2869
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_3

    .line 2870
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v10, 0x0

    .line 2871
    if-eqz v5, :cond_2

    .line 2872
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move-object v11, v3

    .line 2870
    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2873
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2877
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    :goto_2
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2878
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "iconId":I
    throw v3

    .line 2877
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "iconId":I
    :cond_3
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2878
    nop

    .line 2879
    .end local v1    # "ident":J
    monitor-exit v0

    .line 2880
    return-void

    .line 2879
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

    .line 3003
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 3004
    return-void

    .line 3015
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3018
    .local v0, "ident":J
    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    if-nez v2, :cond_1

    .line 3019
    const/4 p1, 0x0

    .line 3021
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    if-nez v2, :cond_2

    .line 3022
    and-int/lit8 p1, p1, -0x3

    .line 3025
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v2

    move v9, v2

    .line 3026
    .local v9, "needsToShowImeSwitcher":Z
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v2, :cond_3

    .line 3027
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v8, 0x0

    move v5, p1

    move v6, p2

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(ILandroid/os/IBinder;IIZZ)V

    .line 3030
    :cond_3
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3031
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    if-eqz v9, :cond_6

    .line 3033
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v7, 0x1040743

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 3035
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v7, v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 3037
    .local v7, "summary":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 3038
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 3039
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3042
    :try_start_1
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 3049
    invoke-interface {v8, v3}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3050
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_4

    .line 3052
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isNavIconHide()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3057
    :cond_4
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 3059
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3057
    invoke-virtual {v3, v5, v4, v8, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3060
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3063
    :cond_5
    goto :goto_0

    .line 3062
    :catch_0
    move-exception v3

    .line 3064
    .end local v6    # "title":Ljava/lang/CharSequence;
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    .line 3065
    :cond_6
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v6, :cond_7

    .line 3069
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v4, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3071
    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3075
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "needsToShowImeSwitcher":Z
    :cond_7
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3076
    nop

    .line 3077
    return-void

    .line 3075
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3076
    throw v2
.end method

.method private userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6009
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 6010
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 6009
    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6011
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

    .line 6013
    const/4 v0, 0x0

    return v0

    .line 6015
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

    .line 2289
    move-object/from16 v1, p0

    move/from16 v9, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2290
    .local v10, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2291
    .local v11, "callerPid":I
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 2293
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v13, v0

    .line 2294
    .local v13, "numClients":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v13, :cond_2

    .line 2295
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2296
    .local v2, "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    if-ne v3, v10, :cond_1

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    if-ne v3, v11, :cond_1

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v3, v9, :cond_0

    goto :goto_1

    .line 2298
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

    .line 2294
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

    .line 2302
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

    .line 2304
    .local v15, "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v15, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2307
    nop

    .line 2318
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

    .line 2320
    nop

    .end local v13    # "numClients":I
    .end local v15    # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    monitor-exit v12

    .line 2321
    return-void

    .line 2305
    .restart local v13    # "numClients":I
    .restart local v15    # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :catch_0
    move-exception v0

    .line 2306
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

    .line 2320
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

    .line 2413
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2414
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3f2

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2416
    iput-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2419
    :cond_0
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 2420
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

    .line 2422
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

    .line 2424
    .local v11, "info":Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v3, v11}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 2432
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2433
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    const/4 v7, 0x0

    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    .line 2434
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v9, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    const/4 v10, 0x1

    .line 2433
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2437
    :cond_1
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v12, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2438
    .local v12, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    iget-object v13, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x7d0

    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 2439
    xor-int/lit8 v6, p2, 0x1

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2438
    move-object v7, v1

    move-object v8, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2441
    iget-boolean v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 2444
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    const-string v3, "InputMethodManagerService"

    const-string v5, "Attach new input asks to show input"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    :cond_2
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getAppShowFlags()I

    move-result v5

    invoke-virtual {v0, v3, v5, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 2449
    :cond_3
    new-instance v2, Lcom/android/internal/view/InputBindResult;

    const/4 v14, 0x0

    iget-object v15, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2450
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

    .line 2449
    return-object v2
.end method

.method buildInputMethodListLocked(Z)V
    .locals 10
    .param p1, "resetDefaultEnabledIme"    # Z

    .line 4752
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_0

    .line 4753
    const-string v0, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    return-void

    .line 4756
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 4757
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 4759
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 4769
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4770
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.view.InputMethod"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4772
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    .line 4770
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4773
    .local v0, "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 4774
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 4775
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4776
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4777
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    .line 4774
    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4782
    .end local v0    # "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 4784
    .local v0, "reenableMinimumNonAuxSystemImes":Z
    if-nez p1, :cond_6

    .line 4785
    const/4 v3, 0x0

    .line 4786
    .local v3, "enabledImeFound":Z
    const/4 v4, 0x0

    .line 4787
    .local v4, "enabledNonAuxImeFound":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    .line 4788
    .local v5, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 4789
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 4790
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 4791
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4792
    const/4 v3, 0x1

    .line 4793
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v9

    if-nez v9, :cond_3

    .line 4794
    const/4 v4, 0x1

    .line 4795
    goto :goto_2

    .line 4789
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4799
    .end local v7    # "i":I
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 4803
    const/4 p1, 0x1

    .line 4804
    const-string v7, ""

    invoke-direct {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    goto :goto_3

    .line 4805
    :cond_5
    if-nez v4, :cond_6

    .line 4809
    const/4 v0, 0x1

    .line 4813
    .end local v3    # "enabledImeFound":Z
    .end local v4    # "enabledNonAuxImeFound":Z
    .end local v5    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "N":I
    :cond_6
    :goto_3
    if-nez p1, :cond_7

    if-eqz v0, :cond_8

    .line 4814
    :cond_7
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 4815
    invoke-static {v3, v4, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 4817
    .local v3, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4818
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v4, :cond_8

    .line 4819
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 4823
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4818
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4827
    .end local v3    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 4828
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 4829
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 4830
    const-string v4, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4831
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4832
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_5

    .line 4836
    :cond_9
    invoke-direct {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4843
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 4846
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4847
    .local v1, "inputMethodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1392

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4848
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    const/4 v6, 0x0

    .line 4847
    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4848
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4849
    return-void
.end method

.method clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .locals 1
    .param p1, "cs"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2772
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2773
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2774
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2775
    return-void
.end method

.method clearCurMethodLocked()V
    .locals 3

    .line 2796
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1

    .line 2797
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2798
    .local v0, "numClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2799
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2802
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2803
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2804
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2805
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    .line 2806
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 2808
    .end local v0    # "numClients":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2809
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2811
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 2812
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5429
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5435
    :cond_0
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 5437
    .local v0, "p":Landroid/util/Printer;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 5438
    :try_start_0
    const-string v2, "Current Input Method Manager state:"

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5439
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5440
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

    .line 5441
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 5442
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 5443
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

    .line 5444
    const-string v5, "    "

    invoke-virtual {v4, v0, v5}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5441
    .end local v4    # "info":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5446
    .end local v3    # "i":I
    :cond_1
    const-string v3, "  Clients:"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5447
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 5448
    .local v3, "numClients":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 5449
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5450
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

    .line 5451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    inputContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    sessionRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    curSession="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5448
    .end local v5    # "ci":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5456
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

    .line 5457
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5458
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

    .line 5459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurPerceptible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurFocusedWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " softInputMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 5462
    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5460
    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5464
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5465
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

    .line 5467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurTokenDisplayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurHostInputToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurIntent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5471
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 5472
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

    .line 5473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mEnabledSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5474
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

    .line 5478
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mInFullscreenMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5479
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

    .line 5480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSettingsObserver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5481
    const-string v7, "  mSwitchingController:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5482
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v7, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 5483
    const-string v7, "  mSettings:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5484
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v8, "    "

    invoke-virtual {v7, v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5486
    const-string v7, "  mStartInputHistory:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5487
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    const-string v8, "   "

    invoke-virtual {v7, p2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5489
    const-string v7, "  mSoftInputShowHideHistory:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5490
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    const-string v8, "   "

    invoke-virtual {v7, p2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5491
    .end local v2    # "N":I
    .end local v3    # "numClients":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5493
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5494
    if-eqz v4, :cond_3

    .line 5495
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5497
    :try_start_1
    iget-object v1, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 5498
    :catch_0
    move-exception v1

    .line 5499
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5500
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 5502
    :cond_3
    const-string v1, "No input method client."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5505
    :goto_3
    if-eqz v5, :cond_4

    if-eq v4, v5, :cond_4

    .line 5506
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5507
    const-string v1, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5509
    const-string v1, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5510
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5513
    :try_start_2
    iget-object v1, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5516
    goto :goto_4

    .line 5514
    :catch_1
    move-exception v1

    .line 5515
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method client in focused window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5519
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5520
    if-eqz v6, :cond_5

    .line 5521
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5523
    :try_start_3
    invoke-interface {v6}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 5524
    :catch_2
    move-exception v1

    .line 5525
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5526
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    goto :goto_6

    .line 5528
    :cond_5
    const-string v1, "No input method service."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5530
    :goto_6
    return-void

    .line 5491
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

    .line 2357
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2360
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 2361
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 2363
    :goto_0
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .line 5172
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5174
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5175
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 5177
    :cond_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5178
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

    .line 2039
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2043
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2044
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2043
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 2045
    .local v1, "resolvedUserIds":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2046
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2048
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2050
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_1
    aget v4, v1, v4

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2052
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2050
    return-object v4

    .line 2052
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2053
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "userId":I
    throw v4

    .line 2054
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

    .line 2213
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2214
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2215
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2216
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 2215
    invoke-static {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v2

    .line 2217
    .local v2, "resolvedUserIds":[I
    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 2220
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2222
    .local v3, "ident":J
    const/4 v5, 0x0

    :try_start_1
    aget v5, v2, v5

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2225
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 2222
    return-object v5

    .line 2225
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2226
    nop

    .end local v0    # "callingUserId":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "imiId":Ljava/lang/String;
    .end local p2    # "allowsImplicitlySelectedSubtypes":Z
    throw v5

    .line 2227
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

    .line 2019
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 2020
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2023
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2024
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2023
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 2025
    .local v1, "resolvedUserIds":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 2026
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2028
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2030
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_1
    aget v4, v1, v4

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2032
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2030
    return-object v4

    .line 2032
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2033
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "userId":I
    throw v4

    .line 2034
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

    .line 4114
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 7

    .line 4024
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4025
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4026
    monitor-exit v0

    return-object v2

    .line 4028
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 4030
    .local v1, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 4031
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 4032
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4033
    .local v3, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 4035
    :cond_2
    :try_start_1
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4036
    .local v4, "lastSubtypeHash":I
    nop

    .line 4037
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 4038
    .local v5, "lastSubtypeId":I
    if-ltz v5, :cond_4

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    if-lt v5, v6, :cond_3

    goto :goto_0

    .line 4041
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 4039
    :cond_4
    :goto_0
    monitor-exit v0

    return-object v2

    .line 4042
    .end local v4    # "lastSubtypeHash":I
    .end local v5    # "lastSubtypeId":I
    :catch_0
    move-exception v4

    .line 4043
    .local v4, "e":Ljava/lang/NumberFormatException;
    monitor-exit v0

    return-object v2

    .line 4031
    .end local v3    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_1
    monitor-exit v0

    return-object v2

    .line 4045
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

    .line 4351
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

    .line 4664
    return v2

    .line 4655
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_0

    .line 4656
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 4658
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1

    .line 4659
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    .line 4661
    :cond_1
    return v3

    .line 4638
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4639
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    .line 4641
    .local v1, "requestInfo":Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 4644
    .local v2, "callback":Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v4, v1, v2}, Lcom/android/internal/view/IInputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4648
    goto :goto_0

    .line 4646
    :catch_0
    move-exception v4

    .line 4647
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

    .line 4649
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4650
    return v3

    .line 4629
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "requestInfo":Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .end local v2    # "callback":Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4630
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 4631
    .local v1, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;

    invoke-direct {v4, v1, v0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$MMyKF1SeotTOu5KNBltIfhafmb8;-><init>(Ljava/util/List;I)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 4633
    return v3

    .line 4624
    .end local v0    # "userId":I
    .end local v1    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4625
    .restart local v0    # "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnlockUser(I)V

    .line 4626
    return v3

    .line 4621
    .end local v0    # "userId":I
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    .line 4622
    return v3

    .line 4607
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    move v0, v2

    .line 4608
    .local v0, "setVisible":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4610
    .local v1, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_1
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v0}, Lcom/android/internal/view/IInputMethodClient;->applyImeVisibility(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4615
    goto :goto_1

    .line 4611
    :catch_1
    move-exception v2

    .line 4612
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

    .line 4616
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v3

    .line 4593
    .end local v0    # "setVisible":Z
    .end local v1    # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4594
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 4595
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4597
    .local v2, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4, v1}, Lcom/android/internal/view/IInputMethodClient;->reportPreRendered(Landroid/view/inputmethod/EditorInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4602
    goto :goto_2

    .line 4598
    :catch_2
    move-exception v4

    .line 4599
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

    .line 4603
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4604
    return v3

    .line 4581
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    move v0, v2

    .line 4582
    .local v0, "fullscreen":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4584
    .local v1, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_3
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v0}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4589
    goto :goto_3

    .line 4585
    :catch_3
    move-exception v2

    .line 4586
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

    .line 4590
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    return v3

    .line 4578
    .end local v0    # "fullscreen":Z
    .end local v1    # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 4579
    return v3

    .line 4570
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

    .line 4575
    goto :goto_5

    .line 4571
    :catch_4
    move-exception v0

    .line 4572
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

    .line 4576
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return v3

    .line 4551
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4552
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 4553
    .local v1, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/InputBindResult;

    .line 4555
    .local v2, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_5
    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4561
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_8

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4562
    :goto_6
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    goto :goto_7

    .line 4561
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 4556
    :catch_5
    move-exception v4

    .line 4557
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

    .line 4561
    nop

    .end local v4    # "e":Landroid/os/RemoteException;
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_8

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4562
    goto :goto_6

    .line 4565
    :cond_8
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4566
    return v3

    .line 4561
    :goto_8
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_9

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4562
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    .line 4564
    :cond_9
    throw v3

    .line 4545
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

    .line 4548
    goto :goto_9

    .line 4546
    :catch_6
    move-exception v0

    .line 4549
    :goto_9
    return v3

    .line 4518
    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4519
    .local v0, "missingMethods":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_a

    move v9, v3

    goto :goto_a

    :cond_a
    move v9, v2

    .line 4520
    .local v9, "restarting":Z
    :goto_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 4521
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 4522
    .local v2, "startInputToken":Landroid/os/IBinder;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 4523
    .local v11, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, Lcom/android/internal/view/IInputContext;

    .line 4524
    .local v12, "inputContext":Lcom/android/internal/view/IInputContext;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Landroid/view/inputmethod/EditorInfo;

    .line 4526
    .local v13, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_8
    invoke-virtual {p0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 4529
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_b

    .line 4530
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_START_INPUT startInputToken :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
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

    .line 4536
    goto :goto_b

    .line 4535
    :catch_7
    move-exception v4

    .line 4537
    :goto_b
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4538
    return v3

    .line 4474
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

    .line 4475
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    .line 4476
    .local v1, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputChannel;

    .line 4478
    .local v2, "channel":Landroid/view/InputChannel;
    :try_start_9
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4483
    if-eqz v2, :cond_d

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4484
    goto :goto_c

    .line 4483
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_c

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4484
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 4486
    :cond_c
    throw v3

    .line 4479
    :catch_8
    move-exception v4

    .line 4483
    if-eqz v2, :cond_d

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4484
    :goto_c
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 4487
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4488
    return v3

    .line 4460
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "method":Lcom/android/internal/view/IInputMethod;
    .end local v2    # "channel":Landroid/view/InputChannel;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4466
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 4467
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethod;

    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v5, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    invoke-interface {v2, v1, v4, v5}, Lcom/android/internal/view/IInputMethod;->initializeInternal(Landroid/os/IBinder;ILcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    .line 4470
    .end local v1    # "token":Landroid/os/IBinder;
    goto :goto_d

    .line 4469
    :catch_9
    move-exception v1

    .line 4471
    :goto_d
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4472
    return v3

    .line 4453
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_f
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4454
    :try_start_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4455
    .local v1, "reason":I
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 4457
    nop

    .end local v1    # "reason":I
    monitor-exit v0

    .line 4458
    return v3

    .line 4457
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    .line 4427
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4429
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 4432
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

    .line 4434
    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4432
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    :cond_e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/ResultReceiver;

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V

    .line 4438
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 4440
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget-boolean v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4443
    invoke-virtual {v11, v12}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/IBinder;

    .line 4442
    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v12, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4444
    invoke-virtual {v4, v12}, Lcom/android/server/wm/WindowManagerInternal;->getImeControlTargetNameForLogging(I)Ljava/lang/String;

    move-result-object v12

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v13, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4446
    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowManagerInternal;->getImeTargetNameForLogging(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4438
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a

    .line 4449
    .end local v9    # "reason":I
    goto :goto_e

    .line 4448
    :catch_a
    move-exception v1

    .line 4450
    :goto_e
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4451
    return v3

    .line 4401
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4403
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 4406
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

    .line 4408
    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4406
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    :cond_f
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/ResultReceiver;

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/view/IInputMethod;->showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V

    .line 4412
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 4414
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget-boolean v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4417
    invoke-virtual {v11, v12}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/IBinder;

    .line 4416
    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v12, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4418
    invoke-virtual {v4, v12}, Lcom/android/server/wm/WindowManagerInternal;->getImeControlTargetNameForLogging(I)Ljava/lang/String;

    move-result-object v12

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v13, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 4420
    invoke-virtual {v4, v13}, Lcom/android/server/wm/WindowManagerInternal;->getImeTargetNameForLogging(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4412
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b

    .line 4423
    .end local v9    # "reason":I
    goto :goto_f

    .line 4422
    :catch_b
    move-exception v1

    .line 4424
    :goto_f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4425
    return v3

    .line 4393
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4395
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_c

    .line 4397
    goto :goto_10

    .line 4396
    :catch_c
    move-exception v1

    .line 4398
    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4399
    return v3

    .line 4387
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_13
    :try_start_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_d

    .line 4390
    goto :goto_11

    .line 4388
    :catch_d
    move-exception v0

    .line 4391
    :goto_11
    return v3

    .line 4503
    :cond_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 4504
    .local v0, "windowToken":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4506
    :try_start_10
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_11

    .line 4508
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodSession;->removeImeSurface()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 4511
    :cond_11
    goto :goto_12

    .line 4512
    :catchall_3
    move-exception v2

    goto :goto_13

    .line 4510
    :catch_e
    move-exception v2

    .line 4512
    :goto_12
    :try_start_11
    monitor-exit v1

    .line 4513
    return v3

    .line 4512
    :goto_13
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v2

    .line 4491
    .end local v0    # "windowToken":Landroid/os/IBinder;
    :cond_12
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4493
    :try_start_12
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    if-nez v1, :cond_13

    .line 4495
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->removeImeSurface()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 4498
    :cond_13
    goto :goto_14

    .line 4499
    :catchall_4
    move-exception v1

    goto :goto_15

    .line 4497
    :catch_f
    move-exception v1

    .line 4499
    :goto_14
    :try_start_13
    monitor-exit v0

    .line 4500
    return v3

    .line 4499
    :goto_15
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v1

    .line 4380
    :cond_14
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showConfigureInputMethods()V

    .line 4381
    return v3

    .line 4376
    :cond_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 4377
    return v3

    .line 4354
    :cond_16
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 4355
    .local v0, "displayId":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_19

    if-eq v4, v3, :cond_18

    if-eq v4, v1, :cond_17

    .line 4369
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

    .line 4370
    return v2

    .line 4366
    :cond_17
    const/4 v1, 0x0

    .line 4367
    .local v1, "showAuxSubtypes":Z
    goto :goto_16

    .line 4363
    .end local v1    # "showAuxSubtypes":Z
    :cond_18
    const/4 v1, 0x1

    .line 4364
    .restart local v1    # "showAuxSubtypes":Z
    goto :goto_16

    .line 4360
    .end local v1    # "showAuxSubtypes":Z
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 4361
    .restart local v1    # "showAuxSubtypes":Z
    nop

    .line 4372
    :goto_16
    invoke-direct {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodMenu(ZI)V

    .line 4373
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

    .line 3437
    and-int/lit8 v0, p2, 0x1

    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_2

    .line 3441
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "Not hiding: explicit show not cancelled by non-explicit hide"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :cond_1
    return v2

    .line 3445
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_4

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4

    .line 3448
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "Not hiding: forced show not cancelled by not-always hide"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_3
    return v2

    .line 3461
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

    .line 3464
    .local v0, "shouldHideSoftInput":Z
    if-eqz v0, :cond_7

    .line 3465
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 3466
    .local v1, "hideInputToken":Landroid/os/Binder;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
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

    .line 3473
    const/4 v3, 0x1

    .line 3477
    .local v3, "res":Z
    invoke-static {v2}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateInputMethod(Z)V

    .line 3479
    .end local v1    # "hideInputToken":Landroid/os/Binder;
    goto :goto_1

    .line 3480
    .end local v3    # "res":Z
    :cond_7
    const/4 v3, 0x0

    .line 3482
    .restart local v3    # "res":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v1, :cond_8

    .line 3483
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3484
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 3486
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3487
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 3488
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3489
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    .line 3490
    return v3
.end method

.method hideInputMethodMenu()V
    .locals 2

    .line 5059
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5060
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 5061
    monitor-exit v0

    .line 5062
    return-void

    .line 5061
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .locals 3

    .line 5067
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5068
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5069
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 5070
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 5073
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 5074
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 5075
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 5076
    return-void
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 10
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3396
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3397
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3398
    monitor-exit v1

    return v3

    .line 3400
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3402
    .local v4, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3403
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v2, v6, :cond_3

    .line 3407
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3408
    .local v2, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v2, :cond_5

    .line 3411
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v9, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3415
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_2

    .line 3417
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

    .line 3419
    :cond_2
    nop

    .line 3430
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3419
    return v3

    .line 3425
    .end local v2    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_3
    :try_start_3
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    const-string v2, "InputMethodManagerService"

    const-string v3, "Client requesting input be hidden"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    :cond_4
    const/4 v2, 0x3

    invoke-virtual {p0, p2, p3, p4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3430
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3427
    return v2

    .line 3409
    .restart local v2    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_5
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

    .line 3430
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

    .line 3431
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    throw v2

    .line 3432
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

.method public hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3274
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3275
    const/4 v0, 0x0

    return v0

    .line 3277
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3278
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3280
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3281
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

    .line 3283
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLongshotBlockShowing:Z

    .line 3284
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->LONGSHOT_BLOCK_SHOWING_TIMEOUT:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3292
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-virtual {p0, v4, p1, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3295
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3292
    return v4

    .line 3293
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

    .line 3295
    .restart local v0    # "uid":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "flags":I
    .restart local p2    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3296
    throw v3
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 2

    .line 3870
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3871
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 3872
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3874
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3875
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

    .line 5959
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    return-void
.end method

.method public synthetic lambda$handleShellCommandResetInputMethod$3$InputMethodManagerService(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 5962
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    return-void
.end method

.method public synthetic lambda$new$0$InputMethodManagerService(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 1701
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->shouldShowIme(I)Z

    move-result v0

    return v0
.end method

.method onActionLocaleChanged()V
    .locals 4

    .line 1267
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1268
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 1269
    .local v1, "possibleNewLocale":Landroid/os/LocaleList;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    monitor-exit v0

    return-void

    .line 1272
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1274
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1275
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1276
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1277
    .end local v1    # "possibleNewLocale":Landroid/os/LocaleList;
    monitor-exit v0

    .line 1278
    return-void

    .line 1277
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

    .line 2662
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2663
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2664
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2665
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2666
    .local v1, "curMethodPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2667
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    .line 2666
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v2

    .line 2668
    .local v2, "curMethodUid":I
    if-gez v2, :cond_0

    .line 2669
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get UID for package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    goto :goto_0

    .line 2672
    :cond_0
    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    .line 2674
    :goto_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v3, :cond_1

    .line 2675
    const-string v3, "InputMethodManagerService"

    const-string v4, "Service connected without a token!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2677
    monitor-exit v0

    return-void

    .line 2681
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

    .line 2683
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodUid:I

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 2684
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_2

    .line 2685
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2686
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2689
    .end local v1    # "curMethodPackage":Ljava/lang/String;
    .end local v2    # "curMethodUid":I
    :cond_2
    monitor-exit v0

    .line 2690
    return-void

    .line 2689
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

    .line 2823
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2826
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2827
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2828
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2831
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    .line 2832
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 2833
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 2834
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2836
    :cond_0
    monitor-exit v0

    .line 2837
    return-void

    .line 2836
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

    .line 2694
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v1, :cond_0

    .line 2697
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2698
    monitor-exit v0

    return-void

    .line 2700
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2701
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 2702
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    .line 2703
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2704
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2706
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    .line 2708
    .local v1, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v2, v1, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_1

    .line 2709
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2712
    :cond_1
    monitor-exit v0

    return-void

    .line 2715
    .end local v1    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2718
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2719
    return-void

    .line 2715
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

    .line 5538
    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 5540
    .local v9, "callingUid":I
    if-eqz v9, :cond_2

    const/16 v0, 0x7d0

    if-eq v9, v0, :cond_2

    .line 5544
    if-eqz v8, :cond_0

    .line 5545
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5549
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5550
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/Process;->isCoreUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5552
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5553
    return-void

    .line 5555
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5557
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

    .line 5559
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

    .line 1863
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1864
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 1868
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1870
    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 1655
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1656
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 1660
    .local v1, "currentUserId":I
    if-eq p1, v1, :cond_0

    .line 1661
    monitor-exit v0

    return-void

    .line 1663
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

    .line 1664
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2

    .line 1666
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1667
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1669
    .end local v1    # "currentUserId":I
    :cond_2
    monitor-exit v0

    .line 1670
    return-void

    .line 1669
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

    .line 2324
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2326
    .local v1, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v1, :cond_4

    .line 2327
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->clientDeathRecipient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2328
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2330
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2331
    .local v2, "numItems":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 2332
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 2333
    .local v5, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v6

    if-ne v6, v1, :cond_0

    .line 2334
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2331
    .end local v5    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2338
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v5, 0x0

    if-ne v3, v1, :cond_3

    .line 2339
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v3, :cond_2

    .line 2340
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2341
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_2

    .line 2342
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2346
    :cond_2
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2347
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2349
    :cond_3
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-ne v3, v1, :cond_4

    .line 2350
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2353
    .end local v1    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v2    # "numItems":I
    :cond_4
    monitor-exit v0

    .line 2354
    return-void

    .line 2353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeImeSurface()V
    .locals 3

    .line 4201
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x424

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4203
    return-void
.end method

.method public removeImeSurfaceFromWindow(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 4209
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x425

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4210
    return-void
.end method

.method public reportActivityView(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .locals 12
    .param p1, "parentClient"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "childDisplayId"    # I
    .param p3, "matrixValues"    # [F

    .line 4120
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 4121
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_10

    .line 4125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4126
    .local v1, "callingUid":I
    iget v2, v0, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v1, v2, :cond_f

    .line 4130
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 4131
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4132
    .local v3, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-nez v3, :cond_0

    .line 4133
    monitor-exit v2

    return-void

    .line 4137
    :cond_0
    if-nez p3, :cond_3

    .line 4138
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 4139
    .local v4, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v4, :cond_1

    .line 4140
    monitor-exit v2

    return-void

    .line 4142
    :cond_1
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v5

    if-ne v5, v3, :cond_2

    .line 4146
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 4147
    monitor-exit v2

    return-void

    .line 4143
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

    .line 4150
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

    .line 4151
    .restart local v4    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v5

    if-ne v5, v3, :cond_4

    goto :goto_0

    .line 4152
    :cond_4
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is already registered by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4153
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

    .line 4155
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v1    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2    # "childDisplayId":I
    .restart local p3    # "matrixValues":[F
    :cond_5
    :goto_0
    if-nez v4, :cond_7

    .line 4156
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v6, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4160
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v5, v3, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V

    move-object v4, v5

    .line 4161
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 4157
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

    .line 4163
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

    .line 4165
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-nez v5, :cond_8

    goto :goto_6

    .line 4169
    :cond_8
    const/4 v5, 0x0

    .line 4170
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 4171
    .local v6, "displayId":I
    const/4 v7, 0x0

    .line 4173
    .local v7, "needToNotify":Z
    :goto_2
    if-ne v6, p2, :cond_9

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    or-int/2addr v7, v8

    .line 4174
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 4175
    .local v8, "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v8, :cond_a

    .line 4176
    goto :goto_5

    .line 4178
    :cond_a
    if-nez v5, :cond_b

    .line 4179
    new-instance v9, Landroid/graphics/Matrix;

    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v5, v9

    goto :goto_4

    .line 4181
    :cond_b
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 4183
    :goto_4
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v9

    iget v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v9, v10, :cond_d

    .line 4184
    if-eqz v7, :cond_c

    .line 4185
    const/16 v9, 0x9

    new-array v9, v9, [F

    .line 4186
    .local v9, "values":[F
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->getValues([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4188
    :try_start_1
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v10, v10, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    invoke-interface {v10, v11, v9}, Lcom/android/internal/view/IInputMethodClient;->updateActivityViewToScreenMatrix(I[F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4190
    goto :goto_5

    .line 4189
    :catch_0
    move-exception v10

    .line 4196
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

    .line 4197
    return-void

    .line 4194
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

    .line 4195
    .end local v8    # "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    goto :goto_2

    .line 4166
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "displayId":I
    .end local v7    # "needToNotify":Z
    :cond_e
    :goto_6
    monitor-exit v2

    return-void

    .line 4196
    .end local v3    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v4    # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4127
    :cond_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The caller doesn\'t own the display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4122
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

    .line 3303
    const-string/jumbo v0, "windowToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3305
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3306
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3307
    monitor-exit v1

    return-void

    .line 3309
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3311
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v4, p1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    if-eq v4, p2, :cond_1

    .line 3313
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 3314
    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3317
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3318
    nop

    .line 3319
    .end local v2    # "ident":J
    monitor-exit v1

    .line 3320
    return-void

    .line 3317
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3318
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "perceptible":Z
    throw v4

    .line 3319
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

    .line 2761
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_0

    .line 2763
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2764
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2765
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

    .line 2769
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_0
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .locals 1
    .param p1, "unbindClientReason"    # I

    .line 2755
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2756
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2757
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2758
    return-void
.end method

.method scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "clientToBeReset"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1675
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_1

    .line 1676
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v0, p1, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

    .line 1678
    return-void

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1682
    :cond_1
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V

    .line 1684
    .local v0, "task":Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 1685
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1686
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 10
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 4052
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 4053
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4054
    .local v0, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 4055
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4056
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4058
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicated subtype definition found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
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

    .line 4058
    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4062
    :cond_2
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4063
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4064
    monitor-exit v1

    return-void

    .line 4066
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_4

    .line 4067
    monitor-exit v1

    return-void

    .line 4069
    :cond_4
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4070
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 4073
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

    .line 4077
    .local v4, "packageInfos":[Ljava/lang/String;
    nop

    .line 4078
    if-eqz v4, :cond_8

    .line 4079
    :try_start_2
    array-length v5, v4

    .line 4080
    .local v5, "packageNum":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_8

    .line 4081
    aget-object v7, v4, v6

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4082
    array-length v7, p2

    if-lez v7, :cond_6

    .line 4083
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4085
    :cond_6
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4087
    :goto_3
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4088
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    .line 4087
    invoke-static {v7, v8, v9}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 4089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4091
    .local v7, "ident":J
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4093
    :try_start_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4094
    nop

    .line 4095
    monitor-exit v1

    return-void

    .line 4093
    :catchall_0
    move-exception v2

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4094
    nop

    .end local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "imiId":Ljava/lang/String;
    .end local p2    # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    throw v2

    .line 4080
    .end local v7    # "ident":J
    .restart local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "imiId":Ljava/lang/String;
    .restart local p2    # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4099
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "packageInfos":[Ljava/lang/String;
    .end local v5    # "packageNum":I
    .end local v6    # "i":I
    :cond_8
    monitor-exit v1

    .line 4100
    return-void

    .line 4074
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v2

    .line 4075
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    const-string v5, "Failed to get package infos"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    monitor-exit v1

    return-void

    .line 4099
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 4052
    .end local v0    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9
    :goto_4
    return-void
.end method

.method setCurHostInputToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "callerImeToken"    # Landroid/os/IBinder;
    .param p2, "hostInputToken"    # Landroid/os/IBinder;

    .line 2198
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2199
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2200
    monitor-exit v0

    return-void

    .line 2202
    :cond_0
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 2203
    monitor-exit v0

    .line 2204
    return-void

    .line 2203
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

    .line 4328
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_1

    .line 4329
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 4332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4334
    goto :goto_0

    .line 4333
    :catch_0
    move-exception v0

    .line 4336
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 4337
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1

    .line 4340
    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4342
    goto :goto_1

    .line 4341
    :catch_1
    move-exception v0

    .line 4345
    :cond_1
    :goto_1
    return-void
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .line 3162
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3163
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_7

    .line 3168
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3169
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 3170
    .local v1, "subtypeCount":I
    if-gtz v1, :cond_0

    .line 3171
    return-void

    .line 3173
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3175
    .local v2, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_1

    if-ge p2, v1, :cond_1

    .line 3176
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .local v3, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    .line 3180
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 3182
    .restart local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    const-string v4, "InputMethodManagerService"

    if-eqz v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 3187
    :cond_2
    if-eq v3, v2, :cond_3

    .line 3188
    const/4 v5, 0x1

    invoke-direct {p0, v0, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 3189
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v5, :cond_3

    .line 3191
    :try_start_0
    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3192
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v5, v3}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3195
    goto :goto_1

    .line 3193
    :catch_0
    move-exception v5

    .line 3194
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Failed to call changeInputMethodSubtype"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void

    .line 3183
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

    .line 3185
    return-void

    .line 3202
    .end local v1    # "subtypeCount":I
    .end local v2    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3206
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 3210
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3212
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3213
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3214
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3215
    const-string v4, "input_method_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3216
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3218
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3220
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3221
    nop

    .line 3222
    return-void

    .line 3220
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3221
    throw v3

    .line 3164
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

    .line 3325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 3326
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3327
    return v2

    .line 3330
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 3331
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3332
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    goto :goto_0

    .line 3333
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    .line 3334
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3337
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_3

    .line 3338
    return v2

    .line 3343
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLongshotBlockShowing:Z

    const-string v3, "InputMethodManagerService"

    if-eqz v1, :cond_4

    .line 3344
    const-string v0, "Longshot Blocking"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    return v2

    .line 3349
    :cond_4
    const/4 v1, 0x0

    .line 3350
    .local v1, "res":Z
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v4, :cond_7

    .line 3353
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

    .line 3356
    :cond_5
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 3357
    .local v2, "showInputToken":Landroid/os/Binder;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3358
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3fc

    .line 3359
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getImeShowFlags()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 3358
    move v6, p4

    move-object v8, p3

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v10, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3361
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3362
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-nez v3, :cond_6

    .line 3363
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v5, 0x2c081001

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3365
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 3367
    :cond_6
    const/4 v1, 0x1

    .line 3368
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

    .line 3374
    const/16 v4, 0x7d00

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 3375
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

    .line 3374
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3376
    const-string v0, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3378
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x40800005    # 4.0000024f

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    .line 3382
    :cond_8
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_9

    .line 3384
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

    .line 3385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3384
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    :cond_9
    :goto_1
    return v1
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .line 3908
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3910
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3911
    monitor-exit v0

    return-void

    .line 3913
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3915
    monitor-exit v0

    .line 3916
    return-void

    .line 3915
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

    .line 3837
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3838
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3839
    monitor-exit v0

    return-void

    .line 3841
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3842
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3842
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    monitor-exit v0

    return-void

    .line 3849
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x1

    .line 3851
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 3849
    :goto_0
    invoke-virtual {v2, v3, p2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3852
    monitor-exit v0

    .line 3853
    return-void

    .line 3852
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

    .line 3858
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3865
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3867
    return-void

    .line 3860
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

    .line 3227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3228
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3229
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3230
    monitor-exit v1

    return v3

    .line 3232
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3234
    .local v4, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3235
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v2, v6, :cond_2

    .line 3239
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3240
    .local v2, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v2, :cond_4

    .line 3243
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v9, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3245
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

    .line 3246
    nop

    .line 3261
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3246
    return v3

    .line 3251
    .end local v2    # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_2
    :try_start_3
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3

    const-string v2, "InputMethodManagerService"

    const-string v6, "Client requesting input be shown"

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateInputMethod(Z)V

    .line 3258
    invoke-virtual {p0, p2, p3, p4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3261
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3258
    return v2

    .line 3241
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

    .line 3261
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

    .line 3262
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2    # "windowToken":Landroid/os/IBinder;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    throw v2

    .line 3263
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

    .line 3500
    move-object/from16 v13, p0

    move-object/from16 v14, p7

    if-nez p3, :cond_0

    .line 3501
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "windowToken cannot be null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3504
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 3506
    .local v15, "callingUserId":I
    if-eqz v14, :cond_3

    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_3

    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 3507
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, v15, :cond_3

    .line 3508
    iget-object v0, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "Using EditorInfo.targetInputMethodUser requires INTERACT_ACROSS_USERS_FULL."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 3518
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3517
    invoke-static {v0}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v15, :cond_1

    .line 3520
    const/4 v0, 0x0

    .local v0, "userId":I
    goto :goto_0

    .line 3522
    .end local v0    # "userId":I
    :cond_1
    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3526
    .restart local v0    # "userId":I
    :goto_0
    iget-object v1, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v1, v0}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3530
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

    .line 3531
    sget-object v1, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3526
    :cond_2
    move/from16 v16, v0

    goto :goto_1

    .line 3541
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

    .line 3543
    const/4 v0, 0x0

    move/from16 v16, v0

    .restart local v0    # "userId":I
    goto :goto_1

    .line 3545
    .end local v0    # "userId":I
    :cond_4
    move v0, v15

    move/from16 v16, v0

    .line 3550
    .local v16, "userId":I
    :goto_1
    iget-object v12, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 3551
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v17, v0

    .line 3553
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

    .line 3557
    .local v0, "result":Lcom/android/internal/view/InputBindResult;
    :try_start_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3558
    nop

    .line 3559
    .end local v17    # "ident":J
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3560
    if-nez v0, :cond_5

    .line 3562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3563
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3564
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " editorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3562
    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3568
    :cond_5
    return-object v0

    .line 3557
    .end local v0    # "result":Lcom/android/internal/view/InputBindResult;
    .restart local v17    # "ident":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3558
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

    .line 3559
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

    .line 2484
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2485
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2488
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 2491
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

    .line 2496
    :cond_1
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget-object v5, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    const-string v4, "InputMethodManagerService"

    if-nez v0, :cond_2

    .line 2498
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

    .line 2500
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2503
    :cond_2
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2505
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2509
    :cond_3
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result v5

    .line 2512
    .local v5, "displayIdToShowIme":I
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v6, 0x1

    if-eq v0, v2, :cond_5

    .line 2514
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 2517
    invoke-virtual {v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2520
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switching to client: client="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2521
    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " keyguard="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2520
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :cond_4
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_5

    .line 2526
    iget-object v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v8, 0xbcc

    invoke-virtual {v7, v8, v6, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2531
    :cond_5
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    .line 2532
    if-gtz v0, :cond_6

    iput v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    .line 2533
    :cond_6
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2534
    move-object/from16 v7, p2

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 2535
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2536
    invoke-direct {v1, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getActivityViewToScreenMatrixLocked(II)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2537
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v0, v5, :cond_7

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 2542
    or-int/lit8 v0, p3, 0x8

    move v8, v0

    .end local p3    # "missingMethods":I
    .local v0, "missingMethods":I
    goto :goto_0

    .line 2544
    .end local v0    # "missingMethods":I
    .restart local p3    # "missingMethods":I
    :cond_7
    move/from16 v8, p3

    .end local p3    # "missingMethods":I
    .local v8, "missingMethods":I
    :goto_0
    iput v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 2545
    iput-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2549
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

    .line 2550
    :goto_1
    invoke-static {v0, v9}, Lcom/android/server/vcaction/OpVerificationCodeInjector;->notifyImeAttributeChanged(IZ)V

    .line 2558
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v5, v0, :cond_d

    .line 2560
    iget-object v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_a

    .line 2563
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

    .line 2566
    :cond_a
    move/from16 v9, p6

    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_e

    .line 2567
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_b

    .line 2570
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2571
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

    .line 2574
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v16, 0xbb8

    add-long v14, v14, v16

    cmp-long v0, v12, v14

    if-gez v0, :cond_c

    .line 2583
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

    .line 2587
    :cond_c
    const/16 v0, 0x7d00

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v13, v12, v11

    .line 2588
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

    .line 2587
    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_3

    .line 2558
    :cond_d
    move/from16 v9, p6

    .line 2593
    :cond_e
    :goto_3
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2594
    .local v10, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v10, :cond_10

    .line 2598
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2600
    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.view.InputMethod"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2601
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2602
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v11, 0x10403d7

    const-string v12, "android.intent.extra.client_label"

    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2604
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

    .line 2607
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v11, 0x40800005    # 4.0000024f

    invoke-direct {v1, v0, v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    .line 2609
    iput-boolean v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    .line 2610
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2611
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2612
    iput v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2618
    :try_start_0
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const/16 v6, 0x7db

    invoke-interface {v4, v0, v6, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2621
    goto :goto_4

    .line 2620
    :catch_0
    move-exception v0

    .line 2622
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

    .line 2626
    :cond_f
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure connecting to input method service: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2595
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

    .line 1875
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1879
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_4

    .line 1880
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 1881
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1882
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1883
    .local v2, "currentUserId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1884
    invoke-virtual {v4, v2}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1883
    :goto_0
    invoke-virtual {v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1885
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1886
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1887
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1888
    if-eqz p1, :cond_1

    .line 1889
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1891
    :cond_1
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 1892
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v4, 0x111012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1894
    if-eqz v3, :cond_2

    .line 1895
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 1899
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1900
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1902
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1903
    .local v3, "broadcastFilterForSystemUser":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1904
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1905
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1906
    const-string v4, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1907
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;

    invoke-direct {v6, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1910
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1911
    .local v4, "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1912
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    invoke-direct {v9, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v4

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1915
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    .line 1916
    .local v6, "defaultImiId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v1

    .line 1917
    .local v7, "imeSelectedOnBoot":Z
    if-nez v7, :cond_3

    move v5, v1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1918
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1919
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1920
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1921
    invoke-virtual {v8}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v8

    .line 1919
    invoke-static {v1, v5, v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1924
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/server/vcaction/OpVerificationCodeInjector;->init(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1927
    .end local v2    # "currentUserId":I
    .end local v3    # "broadcastFilterForSystemUser":Landroid/content/IntentFilter;
    .end local v4    # "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    .end local v6    # "defaultImiId":Ljava/lang/String;
    .end local v7    # "imeSelectedOnBoot":Z
    :cond_4
    monitor-exit v0

    .line 1928
    return-void

    .line 1927
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

    .line 2366
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    .line 2369
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2370
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2371
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    .line 2372
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2379
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

    .line 2381
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2383
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2385
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 2387
    :cond_1
    return-void
.end method

.method unbindCurrentMethodLocked()V
    .locals 5

    .line 2722
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2723
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2724
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 2727
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_1

    .line 2728
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2729
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    .line 2732
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2738
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-interface {v3, v0, v4}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2740
    goto :goto_0

    .line 2739
    :catch_0
    move-exception v0

    .line 2742
    :goto_0
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2743
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 2744
    invoke-direct {p0, v1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2745
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2746
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2747
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 2750
    :cond_2
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2751
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2752
    return-void
.end method

.method updateCurrentProfileIds()V
    .locals 3

    .line 1855
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1856
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 1855
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1857
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0
    .param p1, "enabledMayChange"    # Z

    .line 3080
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 3081
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 3082
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 12
    .param p1, "enabledMayChange"    # Z

    .line 3085
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 3086
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 3087
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3090
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3092
    .local v3, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x8000

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3094
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3092
    invoke-interface {v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 3095
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v5, v0, :cond_0

    .line 3101
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3103
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3104
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v11

    .line 3101
    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3107
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_1

    .line 3106
    :catch_0
    move-exception v4

    .line 3087
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3114
    .end local v1    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 3116
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3117
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 3119
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3121
    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3122
    :catch_1
    move-exception v0

    .line 3123
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

    .line 3124
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 3125
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    goto :goto_3

    .line 3128
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 3134
    :goto_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 3136
    return-void
.end method

.method public updateKeyboardFromSettingsLocked()V
    .locals 3

    .line 3139
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 3140
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3142
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3143
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x10202e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 3151
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/widget/Switch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3159
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_0
    return-void
.end method
