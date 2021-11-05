.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputMonitorHost;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final DEEP_PRESS_ENABLED:Ljava/lang/String; = "deep_press_enabled"

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field private static final PORT_ASSOCIATIONS_PATH:Ljava/lang/String; = "etc/input-port-associations.xml"

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_MUTE_DEVICE:I = 0xe

.field public static final SW_MUTE_DEVICE_BIT:I = 0x4000

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mAssociationsLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private mDisplayContext:Landroid/content/Context;

.field private final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPtr:J

.field private final mRuntimeAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaticAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 333
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 171
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 177
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 334
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 335
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 337
    invoke-static {}, Lcom/android/server/input/InputManagerService;->loadStaticInputPortAssociations()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 338
    nop

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040218

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "doubleTouchGestureEnablePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 347
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 349
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    new-instance v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    invoke-static {v1, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 129
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/input/InputManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 129
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/input/InputManagerService;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/input/InputManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 129
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    return-wide v0
.end method

.method static synthetic access$1400(JLandroid/view/InputEvent;IIIII)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/InputEvent;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 129
    invoke-static/range {p0 .. p7}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(JLandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/os/IBinder;

    .line 129
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativePilferPointers(JLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1600(JLandroid/view/InputChannel;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/InputChannel;

    .line 129
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 129
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/view/InputEvent;
    .param p2, "x2"    # I

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(JZ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 129
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic access$2200(JI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 129
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeToggleCapsLock(JI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 129
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 129
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 129
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 129
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$800(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Locale;
    .param p1, "x1"    # Ljava/util/Locale;

    .line 129
    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # [Landroid/view/InputDevice;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 4
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1786
    monitor-enter p1

    .line 1787
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_0

    .line 1788
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    .line 1789
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1791
    :cond_0
    monitor-exit p1

    .line 1792
    return-void

    .line 1791
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 1884
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1885
    return v2

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1889
    return v2

    .line 1891
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1895
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const/4 v1, 0x0

    return v1
.end method

.method private checkInjectEventsPermission(II)Z
    .locals 2
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .line 2024
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .locals 4
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1149
    array-length v0, p0

    .line 1150
    .local v0, "numDevices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1151
    aget-object v2, p0, v1

    .line 1152
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    const/4 v3, 0x1

    return v3

    .line 1150
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1156
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 12
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "numFullKeyboardsAdded":I
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 818
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 821
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 822
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v2, :cond_0

    .line 823
    monitor-exit v1

    return-void

    .line 825
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 827
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 828
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 829
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 830
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 829
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 833
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v4, v4

    .line 834
    .local v4, "numDevices":I
    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [I

    .line 835
    .local v5, "deviceIdAndGeneration":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    .line 836
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v8, v8, v6

    .line 837
    .local v8, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v9, v6, 0x2

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v10

    aput v10, v5, v9

    .line 838
    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v7

    invoke-virtual {v8}, Landroid/view/InputDevice;->getGeneration()I

    move-result v7

    aput v7, v5, v9

    .line 840
    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v8}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 841
    nop

    .line 842
    invoke-virtual {v8}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 841
    invoke-static {p1, v7}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 843
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "numFullKeyboardsAdded":I
    .local v9, "numFullKeyboardsAdded":I
    :try_start_1
    invoke-virtual {v7, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v9

    goto :goto_2

    .line 849
    .end local v3    # "numListeners":I
    .end local v4    # "numDevices":I
    .end local v5    # "deviceIdAndGeneration":[I
    .end local v6    # "i":I
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    :catchall_0
    move-exception v2

    move v0, v9

    goto/16 :goto_6

    .line 845
    .end local v9    # "numFullKeyboardsAdded":I
    .restart local v0    # "numFullKeyboardsAdded":I
    .restart local v3    # "numListeners":I
    .restart local v4    # "numDevices":I
    .restart local v5    # "deviceIdAndGeneration":[I
    .restart local v6    # "i":I
    .restart local v8    # "inputDevice":Landroid/view/InputDevice;
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 849
    .end local v4    # "numDevices":I
    .end local v6    # "i":I
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 852
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 853
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 856
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 859
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 860
    .local v4, "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 861
    .local v6, "numFullKeyboards":I
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v8

    .line 862
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v6, :cond_8

    .line 863
    :try_start_3
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InputDevice;

    .line 864
    .local v9, "inputDevice":Landroid/view/InputDevice;
    nop

    .line 865
    invoke-virtual {v9}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v10

    .line 866
    .local v10, "layout":Ljava/lang/String;
    if-nez v10, :cond_6

    .line 867
    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 868
    if-eqz v10, :cond_6

    .line 869
    nop

    .line 870
    invoke-virtual {v9}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 869
    invoke-virtual {p0, v11, v10}, Lcom/android/server/input/InputManagerService;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 873
    :cond_6
    if-nez v10, :cond_7

    .line 874
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    .end local v9    # "inputDevice":Landroid/view/InputDevice;
    .end local v10    # "layout":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 877
    .end local v1    # "i":I
    :cond_8
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 879
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_b

    .line 880
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 881
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_9

    .line 885
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_5

    .line 887
    :cond_9
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputDevice;

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_5

    .line 889
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v1, :cond_b

    .line 890
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    .line 893
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 894
    return-void

    .line 877
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 849
    .end local v3    # "numListeners":I
    .end local v4    # "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    .end local v5    # "deviceIdAndGeneration":[I
    .end local v6    # "numFullKeyboards":I
    :catchall_2
    move-exception v2

    :goto_6
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method private deliverTabletModeChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 1067
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1069
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1071
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1072
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 1073
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 1072
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1075
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1077
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1075
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "focus"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 2019
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private dumpAssociations(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1863
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1864
    const-string v0, "Static Associations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/-$$Lambda$InputManagerService$M0FF5e8p6FGyFBNFwEYoVAKqrhQ;

    invoke-direct {v1, p1}, Lcom/android/server/input/-$$Lambda$InputManagerService$M0FF5e8p6FGyFBNFwEYoVAKqrhQ;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1872
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1873
    const-string v1, "Runtime Associations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/-$$Lambda$InputManagerService$e8CLEFczq_4kLYCG30uaJDgK3rA;

    invoke-direct {v2, p1}, Lcom/android/server/input/-$$Lambda$InputManagerService$e8CLEFczq_4kLYCG30uaJDgK3rA;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1879
    :cond_1
    monitor-exit v0

    .line 1880
    return-void

    .line 1879
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static flatten(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2077
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2078
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/-$$Lambda$InputManagerService$P986LfJHWb-Wytu9J9I0HQIpodU;

    invoke-direct {v1, v0}, Lcom/android/server/input/-$$Lambda$InputManagerService$P986LfJHWb-Wytu9J9I0HQIpodU;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2082
    return-object v0
.end method

.method private getContextForDisplay(I)Landroid/content/Context;
    .locals 3
    .param p1, "displayId"    # I

    .line 2169
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    return-object v0

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 2174
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    .line 2175
    return-object v0

    .line 2179
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2180
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 2181
    .local v1, "display":Landroid/view/Display;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    .line 2182
    return-object v2
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 11
    .param p1, "d"    # Landroid/view/InputDevice;

    .line 897
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 900
    .local v0, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 901
    return-object v2

    .line 903
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v3, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 925
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 926
    return-object v2

    .line 930
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 932
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 933
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 934
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 935
    .local v4, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 936
    .local v5, "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 937
    .local v6, "numLocales":I
    const/4 v7, 0x0

    .local v7, "localeIndex":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 938
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 939
    .local v8, "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 940
    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 941
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 937
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 933
    .end local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "locales":Landroid/os/LocaleList;
    .end local v6    # "numLocales":I
    .end local v7    # "localeIndex":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 946
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    .line 947
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 948
    .restart local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 949
    .restart local v5    # "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 950
    .restart local v6    # "numLocales":I
    const/4 v7, 0x0

    .restart local v7    # "localeIndex":I
    :goto_3
    if-ge v7, v6, :cond_6

    .line 951
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 952
    .restart local v8    # "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 953
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 950
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 946
    .end local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "locales":Landroid/os/LocaleList;
    .end local v6    # "numLocales":I
    .end local v7    # "localeIndex":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 959
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 2225
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2227
    return-object v1

    .line 2229
    :cond_0
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .locals 1

    .line 2150
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getExcludedDeviceNames()[Ljava/lang/String;
    .locals 10

    .line 2050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File;

    .line 2054
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2055
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2057
    .local v1, "baseDirs":[Ljava/io/File;
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 2058
    .local v5, "baseDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "etc/excluded-input-devices.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2060
    .local v6, "confFile":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2061
    .local v7, "stream":Ljava/io/InputStream;
    invoke-static {v7}, Lcom/android/server/input/ConfigurationProcessor;->processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    nop

    .end local v7    # "stream":Ljava/io/InputStream;
    goto :goto_1

    .line 2064
    :catch_0
    move-exception v7

    .line 2065
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "InputManager"

    invoke-static {v9, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2062
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 2066
    nop

    .line 2057
    .end local v5    # "baseDir":Ljava/io/File;
    .end local v6    # "confFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2068
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private getHoverTapSlop()I
    .locals 1

    .line 2145
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .locals 1

    .line 2140
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getInputPortAssociations()[Ljava/lang/String;
    .locals 3

    .line 2107
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2110
    .local v0, "associations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2111
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 2115
    .local v1, "associationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 2112
    .end local v1    # "associationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getKeyRepeatDelay()I
    .locals 1

    .line 2135
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .locals 1

    .line 2130
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 2192
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2193
    return-object v1

    .line 2196
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2197
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2198
    return-object v1

    .line 2201
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 2202
    .local v2, "result":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/input/InputManagerService$13;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2215
    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-nez v3, :cond_2

    .line 2216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    return-object v1

    .line 2220
    :cond_2
    return-object v2
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1372
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1376
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1379
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1380
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1381
    const-string v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1373
    .end local v0    # "bob":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier and descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 2
    .param p0, "languageTags"    # Ljava/lang/String;

    .line 1361
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 1364
    :cond_0
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private getLongPressTimeout()I
    .locals 1

    .line 2155
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPointerDisplayId()I
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result v0

    return v0
.end method

.method private getPointerIcon(I)Landroid/view/PointerIcon;
    .locals 1
    .param p1, "displayId"    # I

    .line 2165
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForDisplay(I)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .locals 4

    .line 1653
    const/4 v0, 0x0

    .line 1655
    .local v0, "speed":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1658
    goto :goto_0

    .line 1657
    :catch_0
    move-exception v1

    .line 1659
    :goto_0
    return v0
.end method

.method private getShowTouchesSetting(I)I
    .locals 4
    .param p1, "defaultValue"    # I

    .line 1726
    move v0, p1

    .line 1728
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1731
    goto :goto_0

    .line 1730
    :catch_0
    move-exception v1

    .line 1732
    :goto_0
    return v0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .locals 2

    .line 2044
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 1513
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1514
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_2

    .line 1518
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1519
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1521
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v3

    .line 1522
    .local v3, "changed":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4, v1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1526
    nop

    .line 1527
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1529
    if-eqz v3, :cond_2

    .line 1530
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    .line 1531
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1532
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1534
    :cond_0
    if-eqz v4, :cond_1

    .line 1535
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 1536
    .local v2, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v2, :cond_1

    .line 1537
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1538
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1537
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1539
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1543
    .end local v2    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    goto :goto_0

    .line 1525
    .end local v3    # "changed":Z
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1526
    nop

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "deviceId":I
    .end local p2    # "direction":I
    throw v3

    .line 1527
    .restart local v0    # "device":Landroid/view/InputDevice;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "deviceId":I
    .restart local p2    # "direction":I
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 1546
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .locals 4

    .line 1116
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1118
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x13

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1122
    :cond_0
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;I)Z
    .locals 13
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 655
    if-eqz p1, :cond_5

    .line 658
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 665
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 666
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 669
    .local v11, "ident":J
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/16 v8, 0x7530

    const/high16 v9, 0x8000000

    move-object v4, p1

    move v5, v1

    move v6, v10

    move v7, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .local v2, "result":I
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    nop

    .line 674
    if-eqz v2, :cond_4

    const-string v3, "Input event injection from pid "

    const-string v4, "InputManager"

    if-eq v2, v0, :cond_3

    const/4 v0, 0x3

    const/4 v5, 0x0

    if-eq v2, v0, :cond_2

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return v5

    .line 682
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timed out."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return v5

    .line 676
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " permission denied."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_4
    return v0

    .line 672
    .end local v2    # "result":I
    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    throw v0

    .line 656
    .end local v1    # "pid":I
    .end local v10    # "uid":I
    .end local v11    # "ident":J
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "focus"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 2014
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 2002
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingNonInteractive(IJI)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "whenNanos"    # J
    .param p4, "policyFlags"    # I

    .line 2008
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result v0

    return v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 3
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    .line 964
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 965
    return v1

    .line 968
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    return v1

    .line 973
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$dumpAssociations$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    return-void
.end method

.method static synthetic lambda$dumpAssociations$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    return-void
.end method

.method static synthetic lambda$flatten$2(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "list"    # Ljava/util/List;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 2079
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2080
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2081
    return-void
.end method

.method private static loadStaticInputPortAssociations()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2090
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    .line 2091
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "etc/input-port-associations.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2094
    .local v1, "confFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2095
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2098
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 2099
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2096
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 2100
    nop

    .line 2102
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2
.end method

.method private static native nativeCanDispatchToDisplay(JII)Z
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeDisableInputDevice(JI)V
.end method

.method private static native nativeDisplayRemoved(JI)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeEnableInputDevice(JI)V
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeIsInputDeviceEnabled(JI)Z
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativeNotifyPortAssociationsChanged(J)V
.end method

.method private static native nativePilferPointers(JLandroid/os/IBinder;)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeReloadPointerIcons(J)V
.end method

.method private static native nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V
.end method

.method private static native nativeSetFocusedApplication(JILandroid/view/InputApplicationHandle;)V
.end method

.method private static native nativeSetFocusedDisplay(JI)V
.end method

.method private static native nativeSetInTouchMode(JZ)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetMotionClassifierEnabled(JZ)V
.end method

.method private static native nativeSetPointerCapture(JZ)V
.end method

.method private static native nativeSetPointerIconType(JI)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeToggleCapsLock(JI)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/os/IBinder;Landroid/os/IBinder;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVerifyInputEvent(JLandroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Landroid/view/InputApplicationHandle;Landroid/os/IBinder;Ljava/lang/String;)J
    .locals 2
    .param p1, "inputApplicationHandle"    # Landroid/view/InputApplicationHandle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1980
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Landroid/view/InputApplicationHandle;Landroid/os/IBinder;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .locals 1
    .param p1, "whenNanos"    # J

    .line 1909
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1910
    return-void
.end method

.method private notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "oldToken"    # Landroid/os/IBinder;
    .param p2, "newToken"    # Landroid/os/IBinder;

    .line 1970
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 1971
    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    .line 1972
    .local v0, "requestConfigurationRefresh":Z
    if-eqz v0, :cond_0

    .line 1973
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeSetPointerCapture(JZ)V

    .line 1975
    :cond_0
    return-void
.end method

.method private notifyInputChannelBroken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1965
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Landroid/os/IBinder;)V

    .line 1966
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 4
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .line 1914
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1915
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_0

    .line 1916
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1917
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1918
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1921
    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1922
    monitor-exit v0

    .line 1923
    return-void

    .line 1922
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySwitch(JII)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .line 1932
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1933
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1934
    .local v0, "lidOpen":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1937
    .end local v0    # "lidOpen":Z
    :cond_1
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_3

    .line 1938
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1939
    .local v0, "lensCovered":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 1942
    .end local v0    # "lensCovered":Z
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_4

    and-int/lit16 v0, p4, 0xd4

    if-eqz v0, :cond_4

    .line 1943
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1947
    :cond_4
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_6

    .line 1948
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1949
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v3, -0x1

    and-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1950
    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1951
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1952
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1953
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1956
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_6
    and-int/lit16 v0, p4, 0x4000

    if-eqz v0, :cond_8

    .line 1957
    and-int/lit16 v0, p3, 0x4000

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    move v0, v1

    .line 1958
    .local v0, "micMute":Z
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1959
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMuteFromSwitch(Z)V

    .line 1961
    .end local v0    # "micMute":Z
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_8
    return-void
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    .line 808
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 810
    monitor-exit v0

    .line 811
    return-void

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "touchedToken"    # Landroid/os/IBinder;

    .line 2030
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownOutsideFocus(Landroid/os/IBinder;)V

    .line 2031
    return-void
.end method

.method private onPointerDownOutsideFocusWithXY(Landroid/os/IBinder;FF)V
    .locals 1
    .param p1, "touchedToken"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2036
    invoke-static {p2, p3}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->checkInSideGestureHotZone(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownOutsideFocus(Landroid/os/IBinder;)V

    .line 2039
    :cond_0
    return-void
.end method

.method private onTabletModeChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    .line 1060
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1062
    monitor-exit v0

    .line 1063
    return-void

    .line 1062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .locals 5

    .line 1687
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1688
    const-string v1, "accessibility_large_pointer_icon"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1687
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1695
    return-void
.end method

.method private registerLongPressTimeoutObserver()V
    .locals 5

    .line 1715
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1716
    const-string/jumbo v1, "long_press_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1715
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1723
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    .line 1642
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1643
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$9;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1642
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1650
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    .line 1668
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1669
    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1668
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1676
    return-void
.end method

.method private reloadDeviceAliases()V
    .locals 2

    .line 436
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    .line 437
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .locals 2

    .line 429
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    .line 430
    return-void
.end method

.method private setDisplayViewportsInternal(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 440
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/display/DisplayViewport;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/DisplayViewport;

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V

    .line 441
    return-void
.end method

.method private setPointerSpeedUnchecked(I)V
    .locals 2
    .param p1, "speed"    # I

    .line 1636
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1638
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    .line 1639
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .locals 8
    .param p1, "device"    # Landroid/view/InputDevice;

    .line 1084
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_1

    .line 1085
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1087
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    const-string/jumbo v2, "input_device_identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1089
    :cond_0
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1092
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1095
    .local v1, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1096
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1040745

    .line 1098
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1040744

    .line 1100
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1102
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1080525

    .line 1103
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 1104
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1106
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1107
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const/16 v6, 0x13

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1110
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1112
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_1
    return-void
.end method

.method private updateAccessibilityLargePointerFromSettings()V
    .locals 4

    .line 1679
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1680
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1679
    const-string v1, "accessibility_large_pointer_icon"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1682
    .local v0, "accessibilityConfig":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    .line 1683
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcons(J)V

    .line 1684
    return-void
.end method

.method private updateDeepPressStatusFromSettings(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 1699
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    const/16 v2, 0x190

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1702
    .local v0, "timeout":I
    nop

    .line 1703
    const-string/jumbo v1, "input_native_boot"

    const-string v3, "deep_press_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1705
    .local v1, "featureEnabledFlag":Z
    if-eqz v1, :cond_0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 1707
    .local v2, "enabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1708
    if-eqz v2, :cond_1

    const-string v4, "Enabling"

    goto :goto_1

    :cond_1
    const-string v4, "Disabling"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " motion classifier because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    if-eqz v1, :cond_2

    const-string v4, "enabled"

    goto :goto_2

    :cond_2
    const-string v4, "disabled"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", long press timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1707
    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-wide v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v3, v4, v2}, Lcom/android/server/input/InputManagerService;->nativeSetMotionClassifierEnabled(JZ)V

    .line 1712
    return-void
.end method

.method private updateKeyboardLayouts()V
    .locals 4

    .line 1127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1128
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1135
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1137
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1140
    nop

    .line 1141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1144
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1145
    return-void

    .line 1139
    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1140
    nop

    .end local v0    # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    throw v2

    .line 1141
    .restart local v0    # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private updatePointerSpeedFromSettings()V
    .locals 1

    .line 1631
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1632
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1633
    return-void
.end method

.method private updateShowTouchesFromSettings()V
    .locals 4

    .line 1663
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v1

    .line 1664
    .local v1, "setting":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    .line 1665
    return-void
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 12
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1243
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1244
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 1245
    .local v7, "intent":Landroid/content/Intent;
    const v1, 0xc0080

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1248
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1249
    .local v10, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v11, v9, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1250
    .local v11, "priority":I
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    move v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1251
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "priority":I
    goto :goto_0

    .line 1252
    :cond_0
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 8
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1256
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v0

    .line 1257
    .local v0, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v0, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1260
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0xc0080

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1265
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    .end local v4    # "receiver":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 1266
    :catch_0
    move-exception v2

    .line 1269
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 25
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1273
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1274
    .local v4, "metaData":Landroid/os/Bundle;
    if-nez v4, :cond_0

    .line 1275
    return-void

    .line 1278
    :cond_0
    const-string v0, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1279
    .local v5, "configResId":I
    const-string v6, "/"

    const-string v7, "InputManager"

    if-nez v5, :cond_1

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    return-void

    .line 1285
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1286
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    move-object v12, v0

    .line 1288
    .local v12, "collection":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    .line 1289
    move/from16 v0, p4

    move/from16 v17, v0

    .local v0, "priority":I
    goto :goto_1

    .line 1291
    .end local v0    # "priority":I
    :cond_3
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 1295
    .local v17, "priority":I
    :goto_1
    :try_start_0
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v11, v0

    .line 1296
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v9, v0

    .line 1298
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v0, "keyboard-layouts"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1301
    :goto_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1302
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v10, v0

    .line 1303
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 1304
    nop

    .line 1351
    .end local v10    # "element":Ljava/lang/String;
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1352
    nop

    .line 1356
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_a

    .line 1353
    :catch_0
    move-exception v0

    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_9

    .line 1306
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :cond_4
    :try_start_3
    const-string/jumbo v0, "keyboard-layout"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1307
    sget-object v0, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v11, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object v15, v0

    .line 1310
    .local v15, "a":Landroid/content/res/TypedArray;
    :try_start_4
    invoke-virtual {v15, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, "name":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 1314
    .local v18, "label":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-virtual {v15, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 1317
    .local v13, "keyboardLayoutResId":I
    const/4 v14, 0x3

    invoke-virtual {v15, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    .line 1319
    .local v20, "languageTags":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 1320
    .local v14, "locales":Landroid/os/LocaleList;
    const/4 v1, 0x5

    move-object/from16 v21, v4

    .end local v4    # "metaData":Landroid/os/Bundle;
    .local v21, "metaData":Landroid/os/Bundle;
    const/4 v4, -0x1

    :try_start_5
    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v4, v15

    .end local v15    # "a":Landroid/content/res/TypedArray;
    .local v4, "a":Landroid/content/res/TypedArray;
    move v15, v1

    .line 1322
    .local v15, "vid":I
    const/4 v1, 0x4

    move/from16 v22, v5

    const/4 v5, -0x1

    .end local v5    # "configResId":I
    .local v22, "configResId":I
    :try_start_6
    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 1325
    .local v16, "pid":I
    if-eqz v0, :cond_8

    if-eqz v18, :cond_8

    if-nez v13, :cond_5

    move-object/from16 v24, v0

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move v0, v13

    const/16 v19, 0x1

    move-object/from16 v9, p5

    goto/16 :goto_4

    .line 1331
    :cond_5
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v5, v0}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v5, v10

    .end local v10    # "element":Ljava/lang/String;
    .local v5, "element":Ljava/lang/String;
    move-object v10, v1

    .line 1333
    .local v10, "descriptor":Ljava/lang/String;
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v23, v9

    move-object v3, v11

    const/16 v19, 0x1

    move-object/from16 v9, p5

    goto :goto_5

    .line 1342
    .end local v0    # "name":Ljava/lang/String;
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "keyboardLayoutResId":I
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "languageTags":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    goto/16 :goto_6

    .line 1334
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    .restart local v13    # "keyboardLayoutResId":I
    .restart local v14    # "locales":Landroid/os/LocaleList;
    .restart local v15    # "vid":I
    .restart local v16    # "pid":I
    .restart local v18    # "label":Ljava/lang/String;
    .restart local v20    # "languageTags":Ljava/lang/String;
    :cond_7
    :goto_3
    :try_start_8
    new-instance v1, Landroid/hardware/input/KeyboardLayout;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v23, v9

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v23, "parser":Landroid/content/res/XmlResourceParser;
    move-object v9, v1

    move-object v3, v11

    .end local v11    # "resources":Landroid/content/res/Resources;
    .local v3, "resources":Landroid/content/res/Resources;
    move-object/from16 v11, v18

    move-object/from16 v24, v0

    move v0, v13

    const/16 v19, 0x1

    .end local v13    # "keyboardLayoutResId":I
    .local v0, "keyboardLayoutResId":I
    .local v24, "name":Ljava/lang/String;
    move/from16 v13, v17

    :try_start_9
    invoke-direct/range {v9 .. v16}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1337
    .local v1, "layout":Landroid/hardware/input/KeyboardLayout;
    move-object/from16 v9, p5

    :try_start_a
    invoke-interface {v9, v3, v0, v1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    goto :goto_5

    .line 1342
    .end local v0    # "keyboardLayoutResId":I
    .end local v1    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "languageTags":Ljava/lang/String;
    .end local v24    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v9, p5

    goto/16 :goto_6

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :catchall_2
    move-exception v0

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_6

    .line 1325
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v5    # "element":Ljava/lang/String;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v0, "name":Ljava/lang/String;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v10, "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v13    # "keyboardLayoutResId":I
    .restart local v14    # "locales":Landroid/os/LocaleList;
    .restart local v15    # "vid":I
    .restart local v16    # "pid":I
    .restart local v18    # "label":Ljava/lang/String;
    .restart local v20    # "languageTags":Ljava/lang/String;
    :cond_8
    move-object/from16 v24, v0

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move v0, v13

    const/16 v19, 0x1

    move-object/from16 v9, p5

    .line 1326
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v13    # "keyboardLayoutResId":I
    .local v0, "keyboardLayoutResId":I
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "name":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1342
    .end local v0    # "keyboardLayoutResId":I
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "vid":I
    .end local v16    # "pid":I
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "languageTags":Ljava/lang/String;
    .end local v24    # "name":Ljava/lang/String;
    :goto_5
    :try_start_b
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1343
    nop

    .line 1344
    .end local v4    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_7

    .line 1342
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    :catchall_3
    move-exception v0

    goto :goto_6

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v5    # "element":Ljava/lang/String;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :catchall_4
    move-exception v0

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_6

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "configResId":I
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .local v15, "a":Landroid/content/res/TypedArray;
    :catchall_5
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move-object v4, v15

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    .local v5, "element":Ljava/lang/String;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_6

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v15    # "a":Landroid/content/res/TypedArray;
    :catchall_6
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move-object v4, v15

    move-object/from16 v9, p5

    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v4, "a":Landroid/content/res/TypedArray;
    .local v5, "element":Ljava/lang/String;
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1343
    nop

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v12    # "collection":Ljava/lang/String;
    .end local v17    # "priority":I
    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3    # "keyboardName":Ljava/lang/String;
    .end local p4    # "requestedPriority":I
    .end local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    throw v0

    .line 1345
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    .restart local v12    # "collection":Ljava/lang/String;
    .restart local v17    # "priority":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "keyboardName":Ljava/lang/String;
    .restart local p4    # "requestedPriority":I
    .restart local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :cond_9
    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move/from16 v19, v13

    move-object/from16 v9, p5

    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "element":Ljava/lang/String;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v5, "element":Ljava/lang/String;
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unrecognized element \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in keyboard layout resource from receiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1349
    .end local v5    # "element":Ljava/lang/String;
    :goto_7
    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v13, v19

    move-object/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v9, v23

    move-object/from16 v3, p3

    goto/16 :goto_2

    .line 1351
    :catchall_7
    move-exception v0

    goto :goto_8

    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :catchall_8
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    .restart local v23    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_8
    :try_start_c
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1352
    nop

    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v12    # "collection":Ljava/lang/String;
    .end local v17    # "priority":I
    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3    # "keyboardName":Ljava/lang/String;
    .end local p4    # "requestedPriority":I
    .end local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 1353
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v23    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v12    # "collection":Ljava/lang/String;
    .restart local v17    # "priority":I
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "keyboardName":Ljava/lang/String;
    .restart local p4    # "requestedPriority":I
    .restart local p5    # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :catch_1
    move-exception v0

    goto :goto_9

    .end local v21    # "metaData":Landroid/os/Bundle;
    .end local v22    # "configResId":I
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "configResId":I
    :catch_2
    move-exception v0

    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    .line 1354
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v21    # "metaData":Landroid/os/Bundle;
    .restart local v22    # "configResId":I
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1357
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1447
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1451
    if-eqz p2, :cond_2

    .line 1455
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1456
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1458
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1459
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1460
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1462
    :cond_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1464
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1463
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1465
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    .end local v2    # "oldLayout":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1469
    nop

    .line 1470
    monitor-exit v1

    .line 1471
    return-void

    .line 1468
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1469
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1470
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1452
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1449
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPortAssociation(Ljava/lang/String;I)V
    .locals 3
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayPort"    # I

    .line 1815
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT"

    const-string v1, "addPortAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1824
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeNotifyPortAssociationsChanged(J)V

    .line 1827
    return-void

    .line 1825
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1818
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canDispatchToDisplay(II)Z
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "displayId"    # I

    .line 2125
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeCanDispatchToDisplay(JII)Z

    move-result v0

    return v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1767
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1768
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1769
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 1772
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1775
    return-void

    .line 1770
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 1772
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public disableInputDevice(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 734
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeDisableInputDevice(JI)V

    .line 739
    return-void

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1852
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1854
    :cond_0
    const-string v0, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1857
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService;->dumpAssociations(Ljava/io/PrintWriter;)V

    .line 1860
    :cond_1
    return-void
.end method

.method public enableInputDevice(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 724
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "enableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeEnableInputDevice(JI)V

    .line 729
    return-void

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 1986
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1987
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1989
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1992
    goto :goto_0

    .line 1990
    :catch_0
    move-exception v1

    .line 1993
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    monitor-exit v0

    return v1

    .line 1995
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1996
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 1997
    const/4 v0, 0x1

    return v0

    .line 1995
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1388
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1390
    const/4 v2, 0x0

    .line 1392
    .local v2, "layout":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1393
    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1395
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1401
    :cond_0
    monitor-exit v1

    return-object v2

    .line 1402
    .end local v2    # "layout":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1433
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1435
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1436
    .local v2, "layouts":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 1437
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1438
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1440
    :cond_1
    monitor-exit v1

    return-object v2

    .line 1441
    .end local v2    # "layouts":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 5
    .param p1, "deviceId"    # I

    .line 703
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 705
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 706
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v2

    .line 707
    .local v3, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 708
    monitor-exit v0

    return-object v3

    .line 705
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 712
    const/4 v0, 0x0

    return-object v0

    .line 711
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInputDeviceIds()[I
    .locals 5

    .line 747
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 749
    .local v1, "count":I
    new-array v2, v1, [I

    .line 750
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 751
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    .line 750
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 753
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 754
    .end local v1    # "count":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object v1

    .line 764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKeyCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .line 453
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 4
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1223
    if-eqz p1, :cond_1

    .line 1227
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 1228
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1235
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_0
    aget-object v1, v0, v1

    return-object v1

    .line 1224
    .end local v0    # "result":[Landroid/hardware/input/KeyboardLayout;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    .line 1161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1169
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .locals 10
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1175
    nop

    .line 1176
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v6

    .line 1177
    .local v6, "enabledLayoutDescriptors":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v0

    .line 1179
    .local v7, "enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1180
    .local v8, "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v9, Lcom/android/server/input/InputManagerService$7;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1211
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1212
    .local v0, "enabledLayoutSize":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1213
    .local v1, "potentialLayoutSize":I
    add-int v2, v0, v1

    new-array v2, v2, [Landroid/hardware/input/KeyboardLayout;

    .line 1214
    .local v2, "layouts":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1216
    add-int v4, v0, v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    aput-object v5, v2, v4

    .line 1215
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1218
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public getScanCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .line 466
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .line 479
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    move-result v0

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 979
    if-eqz p1, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 984
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 985
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 980
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .line 496
    if-eqz p3, :cond_1

    .line 499
    if-eqz p4, :cond_0

    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_0

    .line 504
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    move-result v0

    return v0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 651
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method public isInTabletMode()I
    .locals 3

    .line 1019
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0

    .line 1021
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInputDeviceEnabled(I)Z
    .locals 2
    .param p1, "deviceId"    # I

    .line 718
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeIsInputDeviceEnabled(JI)Z

    move-result v0

    return v0
.end method

.method public isMicMuted()I
    .locals 3

    .line 1028
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public monitor()V
    .locals 2

    .line 1902
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1903
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1904
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    .line 1905
    return-void

    .line 1903
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1902
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .locals 8
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 538
    const-string v0, "android.permission.MONITOR_INPUT"

    const-string/jumbo v1, "monitorInputRegion()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const-string/jumbo v0, "inputChannelName must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    if-ltz p2, :cond_0

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    .local v0, "ident":J
    :try_start_0
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v2

    .line 552
    .local v2, "inputChannels":[Landroid/view/InputChannel;
    new-instance v3, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-direct {v3, p0, v5}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V

    .line 553
    .local v3, "host":Lcom/android/server/input/InputManagerService$InputMonitorHost;
    iget-wide v5, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v4, v2, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v4, p2, v7}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V

    .line 555
    new-instance v4, Landroid/view/InputMonitor;

    aget-object v5, v2, v7

    invoke-direct {v4, v5, v3}, Landroid/view/InputMonitor;-><init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    return-object v4

    .line 557
    .end local v2    # "inputChannels":[Landroid/view/InputChannel;
    .end local v3    # "host":Lcom/android/server/input/InputManagerService$InputMonitorHost;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    throw v2

    .line 546
    .end local v0    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MONITOR_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .locals 5
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 514
    if-eqz p1, :cond_1

    .line 518
    if-ltz p2, :cond_0

    .line 522
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 523
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-static {v1, v2, v4, p2, v3}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V

    .line 524
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 525
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 519
    .end local v0    # "inputChannels":[Landroid/view/InputChannel;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannelName must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1558
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeDisplayRemoved(JI)V

    .line 1559
    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1778
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1779
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1783
    return-void

    .line 1780
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .line 568
    if-eqz p1, :cond_0

    .line 572
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;)V

    .line 573
    return-void

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .line 769
    if-eqz p1, :cond_1

    .line 773
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 778
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 781
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 786
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 797
    .local v4, "binder":Landroid/os/IBinder;
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    .end local v4    # "binder":Landroid/os/IBinder;
    nop

    .line 803
    :try_start_2
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .end local v3    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    monitor-exit v0

    .line 805
    return-void

    .line 798
    .restart local v1    # "callingPid":I
    .restart local v2    # "callingUid":I
    .restart local v3    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :catch_0
    move-exception v4

    .line 800
    .local v4, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    throw v5

    .line 782
    .end local v3    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    throw v3

    .line 804
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 770
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    .line 1033
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    if-eqz p1, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1042
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1043
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1047
    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    .local v2, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1051
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 1055
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1056
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    monitor-exit v0

    .line 1057
    return-void

    .line 1052
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :catch_0
    move-exception v3

    .line 1053
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    throw v4

    .line 1044
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    throw v2

    .line 1056
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1038
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1476
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1480
    if-eqz p2, :cond_3

    .line 1484
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1487
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1488
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1489
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1491
    :cond_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1492
    .local v3, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1494
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1497
    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1498
    invoke-virtual {v4, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1497
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1499
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    .end local v2    # "oldLayout":Ljava/lang/String;
    .end local v3    # "removed":Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1503
    nop

    .line 1504
    monitor-exit v1

    .line 1505
    return-void

    .line 1502
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1503
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1504
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1481
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1478
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePortAssociation(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 1836
    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT"

    const-string v1, "clearPortAssociations()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1845
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeNotifyPortAssociationsChanged(J)V

    .line 1848
    return-void

    .line 1846
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1839
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 1563
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 1564
    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->requestPointerCapture(Landroid/os/IBinder;Z)Z

    move-result v0

    .line 1565
    .local v0, "requestConfigurationRefresh":Z
    if-eqz v0, :cond_0

    .line 1566
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, p2}, Lcom/android/server/input/InputManagerService;->nativeSetPointerCapture(JZ)V

    .line 1568
    :cond_0
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1408
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1412
    if-eqz p2, :cond_1

    .line 1416
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1419
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1427
    nop

    .line 1428
    monitor-exit v1

    .line 1429
    return-void

    .line 1426
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1427
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1428
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1413
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 2
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 1803
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V

    .line 1805
    return-void
.end method

.method public setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "application"    # Landroid/view/InputApplicationHandle;

    .line 1549
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JILandroid/view/InputApplicationHandle;)V

    .line 1550
    return-void
.end method

.method public setFocusedDisplay(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1553
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedDisplay(JI)V

    .line 1554
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .param p1, "inTouchMode"    # Z

    .line 646
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInTouchMode(JZ)V

    .line 647
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .line 1571
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    .line 1572
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 5
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .line 599
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 601
    .local v1, "oldFilter":Landroid/view/IInputFilter;
    if-ne v1, p1, :cond_0

    .line 602
    monitor-exit v0

    return-void

    .line 605
    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 606
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 607
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 608
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :try_start_1
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    goto :goto_0

    .line 611
    :catch_0
    move-exception v3

    .line 616
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 617
    :try_start_2
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 618
    new-instance v3, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    :try_start_3
    invoke-interface {p1, v3}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 623
    goto :goto_1

    .line 621
    :catch_1
    move-exception v2

    .line 626
    :cond_2
    :goto_1
    :try_start_4
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V

    .line 627
    .end local v1    # "oldFilter":Landroid/view/IInputFilter;
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setPointerIconType(I)V
    .locals 2
    .param p1, "iconId"    # I

    .line 1797
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerIconType(JI)V

    .line 1798
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 1575
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    .line 1576
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 991
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 995
    if-eqz p1, :cond_3

    .line 998
    if-eqz p3, :cond_2

    .line 1001
    if-ltz p2, :cond_1

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1013
    nop

    .line 1014
    monitor-exit v0

    .line 1015
    return-void

    .line 1012
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1013
    nop

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "inputDeviceDescriptor":Ljava/lang/String;
    .end local p2    # "surfaceRotation":I
    .end local p3    # "calibration":Landroid/hardware/input/TouchCalibration;
    throw v1

    .line 1014
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "inputDeviceDescriptor":Ljava/lang/String;
    .restart local p2    # "surfaceRotation":I
    .restart local p3    # "calibration":Landroid/hardware/input/TouchCalibration;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1002
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calibration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 353
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 354
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 357
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 358
    return-void
.end method

.method public start()V
    .locals 5

    .line 361
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    .line 365
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 367
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 368
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 369
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    .line 370
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerLongPressTimeoutObserver()V

    .line 372
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 382
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 383
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 384
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    .line 385
    const-string/jumbo v0, "just booted"

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 1508
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1509
    return-void
.end method

.method public systemRunning()V
    .locals 5

    .line 393
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 409
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 410
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 418
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 420
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v1, :cond_0

    .line 421
    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 423
    :cond_0
    return-void
.end method

.method public transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "fromChannelToken"    # Landroid/os/IBinder;
    .param p2, "toChannelToken"    # Landroid/os/IBinder;

    .line 1611
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 1612
    invoke-static {p2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 1613
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 4
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .line 1593
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .line 1618
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1623
    const/4 v0, -0x7

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 1627
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1628
    return-void

    .line 1624
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1620
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .line 580
    if-eqz p1, :cond_0

    .line 584
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    .line 585
    return-void

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 693
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeVerifyInputEvent(JLandroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .line 1738
    array-length v0, p2

    if-ge p3, v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1744
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1745
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v1, :cond_0

    .line 1746
    new-instance v2, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v2, p0, p1, p4, v3}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v2

    .line 1748
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p4, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1752
    nop

    .line 1753
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1749
    :catch_0
    move-exception v2

    .line 1751
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/InputManagerService;
    .end local p1    # "deviceId":I
    .end local p2    # "pattern":[J
    .end local p3    # "repeat":I
    .end local p4    # "token":Landroid/os/IBinder;
    throw v3

    .line 1755
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1    # "deviceId":I
    .restart local p2    # "pattern":[J
    .restart local p3    # "repeat":I
    .restart local p4    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1757
    monitor-enter v1

    .line 1758
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1759
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v7, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V

    .line 1760
    monitor-exit v1

    .line 1761
    return-void

    .line 1760
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1755
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 1739
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
