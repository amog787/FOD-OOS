.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;,
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;,
        Lcom/android/server/BluetoothManagerService$ActiveLog;
    }
.end annotation


# static fields
.field private static final ACTIVE_LOG_MAX_SIZE:I = 0x14

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PRIVILEGED_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final CRASH_LOG_MAX_SIZE:I = 0x64

.field private static final DBG:Z = true

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_RESTORE_USER_SETTING:I = 0x1f4

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final MESSAGE_USER_UNLOCKED:I = 0x12d

.field private static final RESTORE_SETTING_TO_OFF:I = 0x0

.field private static final RESTORE_SETTING_TO_ON:I = 0x1

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_AIRPLANE_STATE:Ljava/lang/String; = "bluetooth_airplane_state"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8


# instance fields
.field private isUserSwitchOnAirplaneMode:Z

.field private final mActiveLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/BluetoothManagerService$ActiveLog;",
            ">;"
        }
    .end annotation
.end field

.field private mAddress:Ljava/lang/String;

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mBinding:Z

.field private mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private mBluetoothBinder:Landroid/os/IBinder;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field mCarkitIdentification:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCrashTimestamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashes:I

.field private mEnable:Z

.field private mEnableBLE:Z

.field private mEnableExternal:Z

.field private mErrorRecoveryRetryCounter:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mIsHearingAidProfileSupported:Z

.field private mLastEnabledTime:J

.field private mName:Ljava/lang/String;

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private mQuietEnableExternal:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mUnbinding:Z

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private final mWirelessConsentRequired:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 404
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->isUserSwitchOnAirplaneMode:Z

    .line 172
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 177
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 212
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    .line 213
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    .line 224
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    .line 242
    new-instance v1, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 251
    new-instance v1, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 280
    new-instance v1, Lcom/android/server/BluetoothManagerService$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 355
    new-instance v1, Lcom/android/server/BluetoothManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$4;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1783
    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 405
    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 407
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 410
    const v3, 0x111011b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    .line 412
    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    .line 413
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 414
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 415
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 416
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 417
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 418
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 419
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableBLE:Z

    .line 420
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 421
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 422
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 423
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 424
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 425
    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 428
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    .line 429
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 430
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 433
    const v2, 0x111008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    .line 436
    const-string/jumbo v1, "persist.sys.fflag.override.settings_bluetooth_hearing_aid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "BluetoothManagerService"

    if-nez v2, :cond_0

    .line 438
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 439
    .local v2, "isHearingAidEnabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set feature flag HEARING_AID_SETTINGS to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string/jumbo v5, "settings_bluetooth_hearing_aid"

    invoke-static {p1, v5, v2}, Landroid/util/FeatureFlagUtils;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 441
    if-eqz v2, :cond_0

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    if-nez v5, :cond_0

    .line 443
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    .line 447
    .end local v2    # "isHearingAidEnabled":Z
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v5, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v5, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 452
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 455
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 457
    const-string v5, "Startup: Bluetooth persisted state is ON."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 462
    :cond_1
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 463
    const-string v6, "airplane_mode_radios"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v6, "bluetooth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 466
    :cond_2
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 467
    const-string v7, "airplane_mode_on"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 466
    invoke-virtual {v6, v7, v3, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 471
    :cond_3
    const/4 v3, -0x1

    .line 474
    .local v3, "systemUiUid":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11100a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 475
    .local v6, "noHome":Z
    if-nez v6, :cond_4

    .line 476
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.android.systemui"

    const/high16 v9, 0x100000

    .line 477
    invoke-virtual {v7, v8, v9, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    move v3, v0

    .line 480
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected SystemUiUid: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    nop

    .end local v6    # "noHome":Z
    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Unable to resolve SystemUI\'s UID."

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    .line 489
    new-instance v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    invoke-direct {v0}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCarkitIdentification:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    .line 491
    return-void
.end method

.method static synthetic access$000(J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # J

    .line 93
    invoke-static {p0, p1}, Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 93
    invoke-static {p0}, Lcom/android/server/BluetoothManagerService;->getEnableDisableReasonString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .line 93
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BluetoothManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->updateOppLauncherComponentState(IZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForMonitoredOnOff(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothGatt;

    .line 93
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->continueFromBleOnState()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 93
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/BluetoothManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/BluetoothManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->addCrashLog()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .line 93
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BluetoothManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method private addActiveLog(ILjava/lang/String;Z)V
    .locals 10
    .param p1, "reason"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 2630
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2631
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 2632
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 2634
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    new-instance v9, Lcom/android/server/BluetoothManagerService$ActiveLog;

    .line 2635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/BluetoothManagerService$ActiveLog;-><init>(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;ZJ)V

    .line 2634
    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2639
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/BluetoothManagerService;->reportEnableInfo(ZILjava/lang/String;)V

    .line 2641
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2643
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    .line 2644
    :cond_1
    const/4 v0, 0x2

    move v4, v0

    :goto_0
    nop

    .line 2645
    .local v4, "state":I
    const/16 v1, 0x43

    .line 2646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 2645
    move v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;IILjava/lang/String;)I

    .line 2647
    return-void

    .line 2641
    .end local v4    # "state":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private addCrashLog()V
    .locals 4

    .line 2650
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2651
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 2652
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2654
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2655
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    .line 2656
    monitor-exit v0

    .line 2657
    return-void

    .line 2656
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private bluetoothStateChangeHandler(II)V
    .locals 8
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 2420
    const/4 v0, 0x1

    .line 2421
    .local v0, "isStandardBroadcast":Z
    if-ne p1, p2, :cond_0

    .line 2422
    return-void

    .line 2426
    :cond_0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->isUserSwitchOnAirplaneMode:Z

    if-eqz v1, :cond_2

    .line 2427
    const-string v1, "bluetooth_airplane_state"

    if-ne p1, v2, :cond_1

    if-ne p2, v4, :cond_1

    .line 2429
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "bt_on"

    invoke-static {v6, v1, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2431
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->isUserSwitchOnAirplaneMode:Z

    goto :goto_0

    .line 2432
    :cond_1
    if-ne p1, v4, :cond_2

    if-ne p2, v3, :cond_2

    .line 2434
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "bt_off"

    invoke-static {v6, v1, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2436
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->isUserSwitchOnAirplaneMode:Z

    .line 2441
    :cond_2
    :goto_0
    const/16 v1, 0xa

    const/4 v6, 0x1

    const/16 v7, 0xf

    if-eq p2, v7, :cond_9

    if-ne p2, v1, :cond_3

    goto :goto_2

    .line 2489
    :cond_3
    if-ne p2, v4, :cond_5

    .line 2492
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2494
    if-ne p2, v4, :cond_4

    move v5, v6

    :cond_4
    move v1, v5

    .line 2495
    .local v1, "isUp":Z
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2496
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2498
    .end local v1    # "isUp":Z
    goto/16 :goto_7

    :cond_5
    const/16 v1, 0xe

    if-eq p2, v1, :cond_8

    const/16 v1, 0x10

    if-ne p2, v1, :cond_6

    goto :goto_1

    .line 2503
    :cond_6
    if-eq p2, v2, :cond_7

    if-ne p2, v3, :cond_10

    .line 2505
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    goto/16 :goto_7

    .line 2500
    :cond_8
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2501
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 2442
    :cond_9
    :goto_2
    if-ne p1, v3, :cond_a

    if-ne p2, v7, :cond_a

    goto :goto_3

    :cond_a
    move v6, v5

    :goto_3
    move v3, v6

    .line 2445
    .local v3, "intermediate_off":Z
    const-string v4, "BluetoothManagerService"

    if-ne p2, v1, :cond_b

    .line 2448
    const-string v1, "Bluetooth is complete send Service Down"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 2452
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2453
    if-eq p1, v2, :cond_f

    .line 2455
    const/4 v0, 0x0

    goto :goto_6

    .line 2458
    :cond_b
    if-nez v3, :cond_e

    .line 2461
    const-string v1, "Bluetooth is in LE only mode"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2464
    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    .line 2468
    :cond_c
    const-string v1, "Binding Bluetooth GATT service"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2471
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v4, 0x41

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_5

    .line 2465
    .end local v1    # "i":Landroid/content/Intent;
    :cond_d
    :goto_4
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->continueFromBleOnState()V

    .line 2474
    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2476
    const/4 v0, 0x0

    goto :goto_6

    .line 2478
    :cond_e
    if-eqz v3, :cond_f

    .line 2480
    const-string v1, "Intermediate off, back to LE only mode"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2484
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2486
    const/16 p2, 0xa

    .line 2487
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    .line 2489
    .end local v3    # "intermediate_off":Z
    :cond_f
    :goto_6
    nop

    .line 2508
    :cond_10
    :goto_7
    if-eqz v0, :cond_12

    .line 2509
    if-ne p1, v7, :cond_11

    .line 2511
    const/16 p1, 0xa

    .line 2513
    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2514
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2515
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2516
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2517
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2518
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2520
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_12
    return-void
.end method

.method private checkBluetoothPermissionWhenWirelessConsentRequired()Z
    .locals 2

    .line 1215
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BLUETOOTH_WHEN_WIRELESS_CONSENT_REQUIRED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 1217
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkIfCallerIsForegroundUser()Z
    .locals 13

    .line 2381
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2382
    .local v0, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2383
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2384
    .local v2, "callingIdentity":J
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2385
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 2386
    .local v5, "ui":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    const/16 v6, -0x2710

    .line 2387
    .local v6, "parentUser":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 2388
    .local v7, "callingAppId":I
    const/4 v8, 0x0

    .line 2390
    .local v8, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 2391
    .local v9, "foregroundUser":I
    if-eq v0, v9, :cond_2

    if-eq v6, v9, :cond_2

    const/16 v10, 0x403

    if-eq v7, v10, :cond_2

    iget v10, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    if-ne v7, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    :goto_2
    move v8, v10

    .line 2393
    if-nez v8, :cond_3

    .line 2394
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " callingUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " parentUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " foregroundUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2399
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2400
    nop

    .line 2401
    return v8

    .line 2399
    .end local v9    # "foregroundUser":I
    :catchall_0
    move-exception v9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private checkIfUserSwitchOnAirplaneMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 985
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    const-string v0, "com.android.systemui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    const-string v0, "com.android.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->isUserSwitchOnAirplaneMode:Z

    .line 990
    :cond_1
    return-void
.end method

.method private checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1186
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-string v1, "BluetoothManagerService"

    if-eqz v0, :cond_1

    .line 1191
    if-nez p2, :cond_0

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackage(): called with null packageName from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    return-void

    .line 1196
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    nop

    .line 1201
    return-void

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackage(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1187
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackage(): called before system boot up, uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System has not boot yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearBleApps()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 860
    return-void
.end method

.method private continueFromBleOnState()V
    .locals 4

    .line 875
    const-string v0, "BluetoothManagerService"

    const-string v1, "continueFromBleOnState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 879
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 880
    const-string/jumbo v1, "onBluetoothServiceUp: mBluetooth is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 881
    return-void

    .line 883
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    .line 884
    .local v1, "st":I
    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothServiceUp: state isn\'t BLE_ON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 885
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 887
    return-void

    .line 889
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    if-nez v2, :cond_2

    .line 890
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v2, :cond_3

    .line 892
    :cond_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->updateQuietModeStatus(Z)V

    .line 893
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 894
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    .end local v1    # "st":I
    :cond_3
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 896
    :catch_0
    move-exception v1

    .line 897
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "Unable to call onServiceUp"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 899
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 900
    nop

    .line 901
    return-void

    .line 899
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private disableBleScanMode()V
    .locals 3

    .line 771
    const-string v0, "BluetoothManagerService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 772
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    if-nez v1, :cond_0

    .line 774
    const-string v1, "Reseting the mEnable flag for clean disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v1, :cond_0

    .line 777
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "getState()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 784
    nop

    .line 785
    return-void

    .line 783
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private static getEnableDisableReasonString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 2804
    packed-switch p0, :pswitch_data_0

    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2822
    :pswitch_0
    const-string v0, "RESTORE_USER_SETTING"

    return-object v0

    .line 2820
    :pswitch_1
    const-string v0, "USER_SWITCH"

    return-object v0

    .line 2818
    :pswitch_2
    const-string v0, "CRASH"

    return-object v0

    .line 2816
    :pswitch_3
    const-string v0, "SYSTEM_BOOT"

    return-object v0

    .line 2814
    :pswitch_4
    const-string v0, "START_ERROR"

    return-object v0

    .line 2812
    :pswitch_5
    const-string v0, "RESTARTED"

    return-object v0

    .line 2810
    :pswitch_6
    const-string v0, "DISALLOWED"

    return-object v0

    .line 2808
    :pswitch_7
    const-string v0, "AIRPLANE_MODE"

    return-object v0

    .line 2806
    :pswitch_8
    const-string v0, "APPLICATION_REQUEST"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDisable()V
    .locals 3

    .line 2363
    const-string v0, "BluetoothManagerService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2364
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    .line 2366
    const-string v1, "Sending off request."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2369
    const-string v1, "IBluetooth.disable() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2372
    :catch_0
    move-exception v1

    .line 2373
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "Unable to call disable()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2375
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2376
    nop

    .line 2377
    return-void

    .line 2375
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private handleEnable(Z)V
    .locals 6
    .param p1, "quietMode"    # Z

    .line 2315
    const-string v0, "BluetoothManagerService"

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 2318
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2319
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-nez v1, :cond_1

    .line 2321
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2322
    .local v0, "timeoutMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2323
    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2324
    .local v2, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v4, 0x41

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2326
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_1

    .line 2328
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_1

    .line 2330
    .end local v0    # "timeoutMsg":Landroid/os/Message;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 2333
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez v1, :cond_2

    .line 2334
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2335
    const-string v1, "IBluetooth.enable() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2338
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2339
    const-string v1, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2344
    :cond_3
    :goto_0
    goto :goto_2

    .line 2342
    :catch_0
    move-exception v1

    .line 2343
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "Unable to call enable()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2330
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    nop

    .line 2347
    :goto_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2348
    nop

    .line 2349
    return-void

    .line 2347
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isBluetoothDisallowed()Z
    .locals 5

    .line 2696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2698
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string/jumbo v3, "no_bluetooth"

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2699
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2698
    return v2

    .line 2701
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isBluetoothPersistedStateOn()Z
    .locals 4

    .line 509
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 510
    return v1

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    const-string v3, "bluetooth_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth persisted state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isBluetoothPersistedStateOnBluetooth()Z
    .locals 4

    .line 523
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 524
    return v1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    const-string v3, "bluetooth_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private isNameAndAddressSet()Z
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadStoredNameAndAddress()V
    .locals 4

    .line 558
    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 561
    const v2, 0x111002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    .line 562
    const-string v3, "bluetooth_addr_valid"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 566
    const-string v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 571
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method private persistBluetoothSetting(I)V
    .locals 4
    .param p1, "value"    # I

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persisting Bluetooth Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 539
    .local v0, "callingIdentity":J
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    return-void
.end method

.method private recoverBluetoothServiceFromError(Z)V
    .locals 4
    .param p1, "clearBle"    # Z

    .line 2660
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "recoverBluetoothServiceFromError"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2663
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    .line 2665
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2670
    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2667
    :catch_0
    move-exception v1

    .line 2668
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "Unable to unregister"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2670
    nop

    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2671
    nop

    .line 2673
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/BluetoothManagerService;->waitForMonitoredOnOff(ZZ)Z

    .line 2675
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2677
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2678
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 2680
    if-eqz p1, :cond_1

    .line 2681
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 2684
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2686
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 2688
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2689
    .local v0, "restartMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2693
    .end local v0    # "restartMsg":Landroid/os/Message;
    :cond_2
    return-void

    .line 2670
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private registerForBleScanModeChange()V
    .locals 4

    .line 738
    new-instance v0, Lcom/android/server/BluetoothManagerService$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$5;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    .line 763
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 764
    const-string v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 763
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 766
    return-void
.end method

.method private reportEnableInfo(ZILjava/lang/String;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2872
    :try_start_0
    invoke-static {}, Lcom/oneplus/android/bluetooth/OpBluetoothManager;->getInstance()Lcom/oneplus/android/bluetooth/OpBluetoothManager;

    move-result-object v0

    .line 2873
    .local v0, "mOpBluetoothManager":Lcom/oneplus/android/bluetooth/OpBluetoothManager;
    if-eqz v0, :cond_0

    .line 2874
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/android/bluetooth/OpBluetoothManager;->reportEnableInfo(ZILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2879
    .end local v0    # "mOpBluetoothManager":Lcom/oneplus/android/bluetooth/OpBluetoothManager;
    :cond_0
    goto :goto_0

    .line 2876
    :catch_0
    move-exception v0

    .line 2877
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "reportEnableInfo: NPE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2880
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private sendBleStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 2406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending BLE State Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2406
    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2412
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2413
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2414
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2415
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2416
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2417
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .locals 6

    .line 1638
    const-string v0, "BluetoothManagerService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1639
    .local v1, "n":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1642
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1645
    goto :goto_1

    .line 1643
    :catch_0
    move-exception v3

    .line 1644
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1640
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1648
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1649
    nop

    .line 1650
    return-void

    .line 1648
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBluetoothServiceUpCallback()V
    .locals 6

    .line 1619
    const-string v0, "BluetoothManagerService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1620
    .local v1, "n":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1623
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1626
    goto :goto_1

    .line 1624
    :catch_0
    move-exception v3

    .line 1625
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1621
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1629
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1630
    nop

    .line 1631
    return-void

    .line 1629
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBluetoothStateCallback(Z)V
    .locals 6
    .param p1, "isUp"    # Z

    .line 1597
    const-string v0, "BluetoothManagerService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1599
    .local v1, "n":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1604
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    goto :goto_1

    .line 1605
    :catch_0
    move-exception v3

    .line 1606
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1602
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1610
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1611
    nop

    .line 1612
    return-void

    .line 1610
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBrEdrDownCallback()V
    .locals 3

    .line 909
    const-string v0, "BluetoothManagerService"

    const-string v1, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 913
    const-string v1, "Bluetooth handle is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-void

    .line 917
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->unregAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 923
    :catch_0
    move-exception v1

    .line 924
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to disconnect all apps."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    goto :goto_2

    .line 928
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 929
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3

    .line 930
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    :cond_3
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 932
    :catch_1
    move-exception v1

    .line 933
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "Call to onBrEdrDown() failed."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 935
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 936
    nop

    .line 939
    :goto_2
    return-void

    .line 935
    :goto_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private sendDisableMsg(ILjava/lang/String;)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2619
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2620
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2621
    return-void
.end method

.method private sendEnableMsg(ZILjava/lang/String;)V
    .locals 3
    .param p1, "quietMode"    # Z
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2624
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2625
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    .line 2626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BluetoothManagerService;->mLastEnabledTime:J

    .line 2627
    return-void
.end method

.method private startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "intentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkBluetoothPermissionWhenWirelessConsentRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1150
    return v1

    .line 1154
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 1157
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1155
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1158
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, p2, :cond_1

    .line 1163
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1168
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1173
    nop

    .line 1174
    const/4 v1, 0x1

    return v1

    .line 1169
    :catch_0
    move-exception v3

    .line 1171
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent to handle action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return v1

    .line 1159
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/BluetoothManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "callingUid":I
    .end local p3    # "intentAction":Ljava/lang/String;
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1175
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/BluetoothManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "callingUid":I
    .restart local p3    # "intentAction":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .line 584
    const-string v0, "BluetoothManagerService"

    if-eqz p1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 586
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored Bluetooth name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    if-eqz p2, :cond_1

    .line 594
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 595
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 598
    invoke-static {v3, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 604
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "bluetooth_addr_valid"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 606
    :cond_2
    return-void
.end method

.method private supportBluetoothPersistedState()Z
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static timeToLog(J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "timestamp"    # J

    .line 186
    const-string v0, "MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private unbindAllBluetoothProfileServices()V
    .locals 8

    .line 1344
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1345
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1346
    .local v2, "i":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1351
    goto :goto_1

    .line 1349
    :catch_0
    move-exception v4

    .line 1350
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unbind service with intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V

    .line 1353
    .end local v2    # "i":Ljava/lang/Integer;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    goto :goto_0

    .line 1354
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1355
    monitor-exit v0

    .line 1356
    return-void

    .line 1355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateOppLauncherComponentState(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "bluetoothSharingDisallowed"    # Z

    .line 2714
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.bluetooth"

    const-string v2, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    .local v0, "oppLauncherComponent":Landroid/content/ComponentName;
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 2718
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 2720
    .local v1, "newState":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 2721
    .local v2, "imp":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    .end local v2    # "imp":Landroid/content/pm/IPackageManager;
    goto :goto_1

    .line 2723
    :catch_0
    move-exception v2

    .line 2726
    :goto_1
    return-void
.end method

.method private waitForMonitoredOnOff(ZZ)Z
    .locals 6
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .line 2571
    const/4 v0, 0x0

    .line 2572
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 2573
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 2575
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 2576
    :cond_0
    const/16 v3, 0xc

    const/16 v4, 0xf

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    .line 2577
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v3, :cond_1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v5

    .line 2578
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 2579
    const/16 v1, 0xe

    invoke-direct {p0, v1, v4}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    .line 2581
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_2

    .line 2582
    const-string v1, "BluetoothManagerService"

    const-string v3, "GattService is connected, execute waitForOnOff"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    move-result v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2584
    .local v1, "ret":Z
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return v1

    .line 2586
    .end local v1    # "ret":Z
    :cond_2
    :try_start_6
    const-string v1, "BluetoothManagerService"

    const-string v3, "GattService connect in progress, return to avoid timeout"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2588
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return v5

    .line 2591
    :cond_3
    if-eqz p2, :cond_5

    .line 2592
    :try_start_8
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ne v3, v1, :cond_4

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return v5

    .line 2593
    :cond_4
    :try_start_a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 2594
    const/16 v1, 0xd

    invoke-direct {p0, v1, v4}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    .line 2596
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2597
    .restart local v1    # "ret":Z
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return v1

    .line 2600
    .end local v1    # "ret":Z
    :cond_5
    :try_start_c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eq v1, v3, :cond_6

    :try_start_d
    monitor-exit v2

    return v5

    .line 2605
    :cond_6
    nop

    .line 2606
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2607
    if-nez p1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_1

    .line 2610
    :cond_7
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 2608
    :cond_8
    :goto_1
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2612
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2606
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2602
    :catch_0
    move-exception v1

    .line 2603
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v3, "BluetoothManagerService"

    const-string v4, "getState()"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2604
    monitor-exit v2

    goto :goto_4

    .line 2606
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v1

    .line 2614
    :cond_9
    :goto_4
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "waitForMonitoredOnOff time out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    const/4 v1, 0x0

    return v1
.end method

.method private waitForOnOff(ZZ)Z
    .locals 5
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .line 2528
    const/4 v0, 0x0

    .line 2529
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    const-string v2, "BluetoothManagerService"

    if-ge v0, v1, :cond_6

    .line 2531
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2532
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2552
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_4

    .line 2535
    :cond_0
    const/16 v1, 0xc

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 2536
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v1, :cond_3

    .line 2537
    nop

    .line 2552
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2537
    return v3

    .line 2539
    :cond_1
    if-eqz p2, :cond_2

    .line 2540
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 2541
    nop

    .line 2552
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2541
    return v3

    .line 2544
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v2, v1, :cond_3

    .line 2545
    nop

    .line 2552
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2545
    return v3

    .line 2552
    :cond_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2553
    nop

    .line 2554
    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_1

    .line 2557
    :cond_4
    const-wide/16 v1, 0x1e

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 2555
    :cond_5
    :goto_1
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2559
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2552
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2548
    :catch_0
    move-exception v1

    .line 2549
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "getState()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2552
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_4

    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 2561
    :cond_6
    :goto_4
    const-string/jumbo v1, "waitForOnOff time out"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addCarkit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .line 2850
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCarkitIdentification:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    if-eqz v0, :cond_0

    .line 2851
    invoke-static {p1, p2}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->addCarkit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2853
    :cond_0
    const-string v0, "BluetoothManagerService"

    const-string v1, "addCarkit: carkit identification object is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :goto_0
    return-void
.end method

.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .locals 7
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindBluetoothProfileService:Trying to bind to profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", while Bluetooth is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return v1

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1286
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1287
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 1289
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    if-eq p1, v3, :cond_1

    .line 1294
    monitor-exit v0

    return v1

    .line 1297
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    invoke-direct {v5, p0, v4}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    move-object v2, v5

    .line 1299
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2100(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1300
    monitor-exit v0

    return v1

    .line 1303
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    nop

    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1306
    :cond_3
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v4, "psc is not null in bindBluetoothProfileService"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1311
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1312
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1313
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1314
    return v3

    .line 1307
    .end local v0    # "addProxyMsg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public disable(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "persist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1048
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1049
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1051
    .local v1, "callerSystem":Z
    :goto_0
    if-nez v1, :cond_2

    .line 1053
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 1055
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1056
    const-string v2, "BluetoothManagerService"

    const-string v4, "disable(): not allowed for non-active and non system user"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return v3

    .line 1060
    :cond_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    if-eqz v4, :cond_2

    const-string v4, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1065
    return v3

    .line 1072
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable(): mBluetooth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mBinding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BluetoothManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->checkIfUserSwitchOnAirplaneMode(Ljava/lang/String;)V

    .line 1080
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    .line 1081
    if-eqz p2, :cond_3

    .line 1082
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1083
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1084
    invoke-direct {p0, v2, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    goto :goto_3

    .line 1088
    :cond_3
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1089
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 1090
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1093
    :try_start_2
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1094
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1095
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v5, :cond_5

    .line 1096
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_4

    .line 1097
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 1098
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    goto :goto_1

    .line 1100
    :cond_4
    const/4 v3, 0x6

    invoke-direct {p0, v3, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1107
    :cond_5
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1104
    :catch_0
    move-exception v3

    .line 1105
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "BluetoothManagerService"

    const-string v6, "Unable to initiate disable"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1107
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1108
    nop

    .line 1110
    :goto_3
    monitor-exit v4

    .line 1111
    return v2

    .line 1107
    :goto_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v0    # "callingUid":I
    .end local v1    # "callerSystem":Z
    .end local p0    # "this":Lcom/android/server/BluetoothManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "persist":Z
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1090
    .restart local v0    # "callingUid":I
    .restart local v1    # "callerSystem":Z
    .restart local p0    # "this":Lcom/android/server/BluetoothManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "persist":Z
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "callingUid":I
    .end local v1    # "callerSystem":Z
    .end local p0    # "this":Lcom/android/server/BluetoothManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "persist":Z
    :try_start_7
    throw v2

    .line 1110
    .restart local v0    # "callingUid":I
    .restart local v1    # "callerSystem":Z
    .restart local p0    # "this":Lcom/android/server/BluetoothManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "persist":Z
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 2352
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2353
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2354
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2358
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 2355
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to bind to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2730
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "BluetoothManagerService"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2731
    return-void

    .line 2733
    :cond_0
    const/4 v3, 0x0

    .line 2735
    .local v3, "errorMsg":Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_1

    aget-object v4, v0, v5

    const-string v7, "--proto"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 2737
    .local v4, "protoOut":Z
    :goto_0
    if-nez v4, :cond_a

    .line 2738
    const-string v7, "Bluetooth Status"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2739
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2743
    iget-boolean v7, v1, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v7, :cond_2

    .line 2744
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/BluetoothManagerService;->mLastEnabledTime:J

    sub-long/2addr v7, v9

    .line 2745
    .local v7, "onDuration":J
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const-wide/32 v11, 0x36ee80

    div-long v11, v7, v11

    long-to-int v11, v11

    .line 2746
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    const-wide/32 v11, 0xea60

    div-long v11, v7, v11

    const-wide/16 v13, 0x3c

    rem-long/2addr v11, v13

    long-to-int v11, v11

    .line 2747
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    const/4 v11, 0x2

    const-wide/16 v15, 0x3e8

    div-long v17, v7, v15

    rem-long v12, v17, v13

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    rem-long v12, v7, v15

    long-to-int v12, v12

    .line 2748
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 2745
    const-string v11, "%02d:%02d:%02d.%03d"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2749
    .local v9, "onDurationString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  time since enabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2752
    .end local v7    # "onDuration":J
    .end local v9    # "onDurationString":Ljava/lang/String;
    :cond_2
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const-string v8, "  "

    if-nez v7, :cond_3

    .line 2753
    const-string v7, "\nBluetooth never enabled!"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2755
    :cond_3
    const-string v7, "\nEnable log:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2756
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/BluetoothManagerService$ActiveLog;

    .line 2757
    .local v9, "log":Lcom/android/server/BluetoothManagerService$ActiveLog;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2758
    .end local v9    # "log":Lcom/android/server/BluetoothManagerService$ActiveLog;
    goto :goto_1

    .line 2761
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nBluetooth crashed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " time"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    iget v9, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    const-string/jumbo v10, "s"

    const-string v11, ""

    if-ne v9, v6, :cond_5

    move-object v9, v11

    goto :goto_3

    :cond_5
    move-object v9, v10

    :goto_3
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2761
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2763
    iget v7, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    const/16 v9, 0x64

    if-ne v7, v9, :cond_6

    .line 2764
    const-string v7, "(last 100)"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    :cond_6
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 2767
    .local v9, "time":Ljava/lang/Long;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2768
    .end local v9    # "time":Ljava/lang/Long;
    goto :goto_4

    .line 2770
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " BLE app"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v9, v6, :cond_8

    move-object v10, v11

    :cond_8
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "registered"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2772
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 2773
    .local v9, "app":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2774
    .end local v9    # "app":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    goto :goto_5

    .line 2776
    :cond_9
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2777
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2778
    array-length v7, v0

    if-nez v7, :cond_a

    .line 2780
    new-array v0, v6, [Ljava/lang/String;

    .line 2781
    .end local p3    # "args":[Ljava/lang/String;
    .local v0, "args":[Ljava/lang/String;
    const-string v6, "--print"

    aput-object v6, v0, v5

    move-object v5, v0

    goto :goto_6

    .line 2785
    .end local v0    # "args":[Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_a
    move-object v5, v0

    .end local p3    # "args":[Ljava/lang/String;
    .local v5, "args":[Ljava/lang/String;
    :goto_6
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    if-nez v0, :cond_b

    .line 2786
    const-string v3, "Bluetooth Service not connected"

    move-object/from16 v6, p1

    goto :goto_7

    .line 2789
    :cond_b
    move-object/from16 v6, p1

    :try_start_0
    invoke-interface {v0, v6, v5}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2792
    goto :goto_7

    .line 2790
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2791
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "RemoteException while dumping Bluetooth Service"

    .line 2794
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_7
    if-eqz v3, :cond_d

    .line 2796
    if-eqz v4, :cond_c

    .line 2797
    return-void

    .line 2799
    :cond_c
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    :cond_d
    return-void
.end method

.method public enable(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 995
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 997
    .local v1, "callerSystem":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 999
    const-string v2, "BluetoothManagerService"

    const-string v4, "enable(): not enabling - bluetooth disallowed"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return v3

    .line 1004
    :cond_1
    if-nez v1, :cond_3

    .line 1006
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 1008
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1009
    const-string v2, "BluetoothManagerService"

    const-string v4, "enable(): not allowed for non-active and non system user"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return v3

    .line 1013
    :cond_2
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mWirelessConsentRequired:Z

    if-eqz v4, :cond_3

    const-string v4, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1018
    return v3

    .line 1023
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "):  mBluetooth ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mBinding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 1024
    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1023
    const-string v5, "BluetoothManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->checkIfUserSwitchOnAirplaneMode(Ljava/lang/String;)V

    .line 1030
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    .line 1031
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 1032
    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableBLE:Z

    if-nez v5, :cond_4

    .line 1033
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    goto :goto_1

    .line 1035
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableBLE:Z

    .line 1038
    :goto_1
    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 1040
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    const-string v3, "BluetoothManagerService"

    const-string v4, "enable returning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return v2

    .line 1040
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public enableNoAutoConnect(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 942
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 944
    const-string v0, "BluetoothManagerService"

    const-string v2, "enableNoAutoConnect(): not enabling - bluetooth disallowed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return v1

    .line 950
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 951
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v1, v4

    .line 952
    .local v1, "isCallerSystem":Z
    :cond_1
    if-nez v1, :cond_2

    .line 953
    invoke-direct {p0, v0, p1}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 956
    :cond_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 968
    .local v2, "callingAppId":I
    const/16 v3, 0x403

    if-eq v2, v3, :cond_4

    const-string v3, "com.google.android.gms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 970
    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "no permission to enable Bluetooth quietly"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 973
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v3

    .line 974
    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 975
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 976
    invoke-direct {p0, v4, v4, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    .line 978
    monitor-exit v3

    .line 979
    return v4

    .line 978
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public factoryReset()Z
    .locals 8

    .line 1710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1711
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1713
    .local v1, "callerSystem":Z
    :goto_0
    const-string v4, "BluetoothManagerService"

    if-nez v1, :cond_2

    .line 1714
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1715
    const-string v3, "factoryReset(): not allowed for non-active and non system user"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    return v2

    .line 1719
    :cond_1
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v7, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1724
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 1726
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v5, :cond_3

    .line 1727
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 1728
    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    goto :goto_1

    .line 1729
    :cond_3
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1730
    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    .line 1731
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 1732
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->factoryReset()Z

    .line 1733
    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    goto :goto_1

    .line 1734
    :cond_4
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v5, :cond_5

    .line 1735
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->factoryReset()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1740
    :cond_5
    :goto_1
    nop

    .line 1741
    return v3

    .line 1737
    :catch_0
    move-exception v3

    .line 1738
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "factoryReset(): Unable to do factoryReset."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1739
    return v2
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .line 1653
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    const-string v0, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v0, 0x0

    return-object v0

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1662
    const-string v0, "02:00:00:00:00:00"

    return-object v0

    .line 1666
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1667
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_2

    .line 1668
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1668
    return-object v0

    .line 1675
    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "getAddress(): Unable to retrieve address remotely. Returning cached address"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1675
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1676
    nop

    .line 1681
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    return-object v0

    .line 1675
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1685
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1688
    const-string v0, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const/4 v0, 0x0

    return-object v0

    .line 1693
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1694
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1695
    return-object v0

    .line 1700
    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1697
    :catch_0
    move-exception v0

    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "getName(): Unable to retrieve name remotely. Returning cached name"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1700
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1701
    nop

    .line 1706
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    return-object v0

    .line 1700
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getState()I
    .locals 4

    .line 673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "BluetoothManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    const-string v0, "getState(): report OFF for non-active and non system user"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return v1

    .line 679
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 680
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 681
    return v0

    .line 686
    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "getState()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 687
    nop

    .line 688
    return v1

    .line 686
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public handleOnBootPhase()V
    .locals 5

    .line 1364
    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1367
    const-class v1, Landroid/os/UserManagerInternal;

    .line 1368
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 1369
    .local v1, "userManagerInternal":Landroid/os/UserManagerInternal;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 1370
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v2

    .line 1371
    .local v2, "isBluetoothDisallowed":Z
    if-eqz v2, :cond_0

    .line 1372
    return-void

    .line 1374
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1376
    const-string v3, "Auto-enabling Bluetooth."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 1380
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1378
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    goto :goto_0

    .line 1381
    :cond_1
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1383
    const-string v3, "Getting adapter name and address"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1386
    .local v0, "getMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1388
    .end local v0    # "getMsg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method

.method public handleOnSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " switched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1398
    return-void
.end method

.method public handleOnUnlockUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1408
    return-void
.end method

.method public isBleAppPresent()Z
    .locals 2

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBleAppPresent() count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 3

    .line 720
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-nez v0, :cond_0

    .line 721
    return v1

    .line 724
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 726
    :catch_0
    move-exception v0

    .line 728
    return v1
.end method

.method public isBluetoothAvailableForBinding()Z
    .locals 4

    .line 1262
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1263
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1264
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1265
    :cond_0
    const/4 v0, 0x1

    .line 1272
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1265
    return v0

    .line 1267
    :cond_1
    nop

    .line 1272
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1267
    return v0

    .line 1272
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1269
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "BluetoothManagerService"

    const-string v3, "getState()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1272
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1273
    nop

    .line 1274
    return v0

    .line 1272
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public isCarkit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .line 2833
    const-string v0, "BluetoothManagerService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCarkitIdentification:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    if-eqz v1, :cond_0

    .line 2834
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCarkitIdentification:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    invoke-static {p1, p2}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->isCarkit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2835
    .local v1, "iscarkit":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCarkit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    return v1

    .line 2839
    .end local v1    # "iscarkit":Z
    :cond_0
    const-string v1, "isCarkit: carkit identification object is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2844
    goto :goto_0

    .line 2841
    :catch_0
    move-exception v1

    .line 2842
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "isCarkit: NPE"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2845
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 4

    .line 654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    const-string v0, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v1

    .line 660
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 661
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 662
    return v0

    .line 667
    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "isEnabled()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 668
    nop

    .line 669
    return v1

    .line 667
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isHearingAidProfileSupported()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mIsHearingAidProfileSupported:Z

    return v0
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 609
    if-nez p1, :cond_0

    .line 610
    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in registerAdapter"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    return-object v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 614
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 615
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 617
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 632
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    if-nez p1, :cond_0

    .line 634
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "registerStateChangeCallback: Callback is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 639
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 640
    return-void
.end method

.method public reloadLogConfig()Z
    .locals 4

    .line 1128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    const-string/jumbo v0, "reloadLogConfig(): not allowed for non-active and non system user"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    return v1

    .line 1134
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1135
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->reloadLogConfig()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1136
    return v0

    .line 1141
    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "reloadLogConfig()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1142
    nop

    .line 1143
    return v1

    .line 1141
    :goto_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public removeCarkit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .line 2859
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCarkitIdentification:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    if-eqz v0, :cond_0

    .line 2860
    invoke-static {p1, p2}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->removeCarkit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2862
    :cond_0
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "removeCarkit: carkit identification object is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :goto_0
    return-void
.end method

.method public unbindAndFinish()V
    .locals 5

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindAndFinish(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mBinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mUnbinding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1228
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1229
    return-void

    .line 1231
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1232
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1233
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1237
    :try_start_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1240
    goto :goto_0

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1241
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 1242
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1243
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1244
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1245
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_1

    .line 1247
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1249
    :goto_1
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1251
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1252
    nop

    .line 1253
    return-void

    .line 1251
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 7
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1320
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    .line 1321
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1322
    .local v1, "profile":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1323
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_0

    .line 1324
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "unbindBluetoothProfileService: psc is null, returning"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    monitor-exit v0

    return-void

    .line 1327
    :cond_0
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "unbindBluetoothProfileService: calling psc.removeProxy"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {v2, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 1329
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1332
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    goto :goto_0

    .line 1333
    :catch_0
    move-exception v3

    .line 1334
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unbind service with intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1336
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "psc.isEmpty is true, removing psc entry for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    .end local v1    # "profile":Ljava/lang/Integer;
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_1
    monitor-exit v0

    .line 1341
    return-void

    .line 1340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .line 621
    if-nez p1, :cond_0

    .line 622
    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in unregisterAdapter"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 627
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 628
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 643
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    if-nez p1, :cond_0

    .line 645
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "unregisterStateChangeCallback: Callback is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 649
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 650
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 651
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 790
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 791
    .local v1, "isCallerSystem":Z
    :goto_0
    if-nez v1, :cond_1

    .line 792
    invoke-direct {p0, v0, p3}, Lcom/android/server/BluetoothManagerService;->checkPackage(ILjava/lang/String;)V

    .line 794
    :cond_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 795
    .local v4, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/16 v5, 0xa

    .line 796
    .local v5, "st":I
    const-string v6, "BluetoothManagerService"

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 797
    new-instance v7, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {v7, p0, p3}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 799
    .local v7, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :try_start_0
    invoke-interface {p1, v7, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    nop

    .line 803
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v8, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Registered for death of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    goto :goto_1

    .line 800
    .restart local v7    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catch_0
    move-exception v2

    .line 801
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLE app ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") already dead!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 807
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v7    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_2
    if-nez p2, :cond_3

    if-eqz v4, :cond_3

    .line 809
    invoke-interface {p1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 810
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unregistered for death of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 807
    :cond_3
    :goto_1
    nop

    .line 815
    :goto_2
    const/16 v7, 0xf

    if-eqz p2, :cond_6

    .line 817
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 818
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 819
    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    if-eq v8, v7, :cond_5

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 820
    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    const/16 v9, 0xb

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 821
    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_5

    .line 822
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableBLE:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    :cond_5
    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    .line 824
    :catch_1
    move-exception v2

    .line 825
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "Unable to call getState"

    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 827
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 828
    goto :goto_5

    .line 827
    :goto_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 830
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 832
    .local v2, "appCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " registered Ble Apps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    if-nez v2, :cond_7

    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v8, :cond_7

    .line 835
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    .line 837
    :cond_7
    if-nez v2, :cond_b

    .line 839
    :try_start_3
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 840
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v8, :cond_8

    .line 841
    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    move v5, v8

    .line 843
    :cond_8
    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v8, :cond_9

    if-ne v5, v7, :cond_a

    .line 844
    :cond_9
    const-string v7, "Move to BT state OFF"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    .line 846
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 851
    :cond_a
    goto :goto_6

    :catchall_1
    move-exception v3

    goto :goto_7

    .line 848
    :catch_2
    move-exception v3

    .line 849
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v7, ""

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 851
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_6
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 852
    goto :goto_8

    .line 851
    :goto_7
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3

    .line 854
    :cond_b
    :goto_8
    return v2
.end method
