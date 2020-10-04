.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final GROUP_NAME:Ljava/lang/String; = "com.android.server.connectivity.tethering"

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothTethered:Z

.field private mCallerPkg:Ljava/lang/String;

.field private final mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

.field private volatile mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

.field private mConnectedClients:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private final mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

.field private final mForwardedDownstreams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/ip/IpServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastNotificationId:I

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetherUpstream:Landroid/net/Network;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/ITetheringEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

.field private mUsbTethered:Z

.field private mWifiTetherRequested:Z

.field private mWifiTethered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 150
    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/net/ip/IpServer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 157
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 158
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "systemProperties"    # Lcom/android/server/connectivity/MockableSystemProperties;
    .param p7, "deps"    # Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 183
    new-instance v2, Landroid/net/util/SharedLog;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    .line 205
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    .line 220
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    .line 225
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    .line 230
    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    .line 231
    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    .line 232
    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    .line 240
    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v4, "constructed"

    invoke-virtual {v2, v4}, Landroid/net/util/SharedLog;->mark(Ljava/lang/String;)V

    .line 241
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 242
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 243
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 244
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 245
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 246
    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 248
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 250
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    .line 252
    new-instance v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    const-string v10, "TetherMaster"

    invoke-direct {v8, v0, v10, v9, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 253
    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8}, Lcom/android/internal/util/StateMachine;->start()V

    .line 255
    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    .line 256
    new-instance v8, Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    .line 257
    invoke-virtual {v9, v10, v11}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    move-result-object v11

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/server/connectivity/tethering/OffloadController;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    .line 260
    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v11, 0x50005

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    .line 262
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    .line 264
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v14, 0x50008

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getEntitlementManager(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 270
    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    new-instance v10, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;

    invoke-direct {v10, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v9, v10}, Lcom/android/server/connectivity/tethering/EntitlementManager;->setOnUiEntitlementFailedListener(Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;)V

    .line 274
    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    new-instance v10, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;

    invoke-direct {v10, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v9, v10}, Lcom/android/server/connectivity/tethering/EntitlementManager;->setTetheringConfigurationFetcher(Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;)V

    .line 279
    new-instance v15, Landroid/net/util/VersionedBroadcastListener;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/connectivity/-$$Lambda$Tethering$a_wqxo60onQxTR27G2Ub5703PoY;

    invoke-direct {v14, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$a_wqxo60onQxTR27G2Ub5703PoY;-><init>(Lcom/android/server/connectivity/Tethering;)V

    const-string v10, "CarrierConfigChangeListener"

    move-object v9, v15

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v15, v0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    .line 287
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v9

    .line 288
    const-string v9, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    new-instance v9, Landroid/net/util/VersionedBroadcastListener;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;

    invoke-direct {v15, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;-><init>(Lcom/android/server/connectivity/Tethering;)V

    const-string v11, "DefaultSubscriptionChangeListener"

    move-object v10, v9

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

    .line 303
    new-instance v9, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v9, v0, v3}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 308
    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/Tethering;->startStateMachineUpdaters(Landroid/os/Handler;)V

    .line 309
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/os/ResultReceiver;
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->enableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Tethering;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .line 148
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->disableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Lcom/android/internal/util/State;
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDunSettingChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/Network;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/Network;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->reportUpstreamChanged(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/NetworkState;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/util/InterfaceSet;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .line 148
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/ip/IpServer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Landroid/net/ip/IpServer;II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/ip/IpServer;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    return-object p1
.end method

.method private static argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .line 2114
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2115
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2114
    .end local v3    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2117
    :cond_1
    return v1
.end method

.method private changeInterfaceState(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "requestedState"    # I

    .line 1188
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 1198
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-void

    .line 1195
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    .line 1196
    .local v0, "result":I
    goto :goto_0

    .line 1191
    .end local v0    # "result":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 1192
    .restart local v0    # "result":I
    nop

    .line 1201
    :goto_0
    if-eqz v0, :cond_2

    .line 1202
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable start or stop tethering on iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void

    .line 1205
    :cond_2
    return-void
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strarray"    # [Ljava/lang/String;

    .line 2240
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private disableWifiIpServingLocked(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "apState"    # I

    .line 1096
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling WiFi tethering request - AP_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 1104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1106
    .local v0, "ts":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v0, :cond_0

    .line 1107
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->unwanted()V

    .line 1108
    return-void

    .line 1112
    .end local v0    # "ts":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1113
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    .line 1114
    .local v1, "ipServer":Landroid/net/ip/IpServer;
    invoke-virtual {v1}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v2

    if-nez v2, :cond_1

    .line 1115
    invoke-virtual {v1}, Landroid/net/ip/IpServer;->unwanted()V

    .line 1116
    return-void

    .line 1112
    .end local v1    # "ipServer":Landroid/net/ip/IpServer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error disabling Wi-Fi IP serving; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "no interface name specified"

    goto :goto_1

    .line 1122
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "specified interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 470
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 490
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v2, "Invalid tether type."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    .line 487
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    .line 488
    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 484
    .local v0, "result":I
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 485
    goto :goto_0

    .line 478
    .end local v0    # "result":I
    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(ZLjava/lang/String;)I

    move-result v0

    .line 480
    .restart local v0    # "result":I
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 481
    nop

    .line 493
    .end local v0    # "result":I
    :goto_0
    return-void
.end method

.method private enableWifiIpServingLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "wifiIpMode"    # I

    .line 1129
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enable IP serving in unknown WiFi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1138
    return-void

    .line 1134
    :cond_0
    const/4 v1, 0x3

    .line 1135
    .local v1, "ipServingMode":I
    goto :goto_0

    .line 1131
    .end local v1    # "ipServingMode":I
    :cond_1
    const/4 v1, 0x2

    .line 1132
    .restart local v1    # "ipServingMode":I
    nop

    .line 1141
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 1142
    invoke-direct {p0, p1, v3}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    .line 1143
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    goto :goto_1

    .line 1145
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-array v0, v0, [Ljava/lang/Object;

    .line 1147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1145
    const-string v3, "Cannot enable IP serving in mode %s on missing interface name"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1149
    :goto_1
    return-void
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 392
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    const-string/jumbo v1, "persist.vendor.wigig.interface"

    const-string/jumbo v2, "wigig0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "wigigIface":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    const/4 v2, 0x3

    return v2

    .line 397
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 404
    .end local v1    # "wigigIface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "usb\\d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    const/4 v1, 0x1

    return v1

    .line 407
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    const/4 v1, 0x2

    return v1

    .line 410
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .line 1299
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1300
    return-void
.end method

.method private makeControlCallback()Landroid/net/ip/IpServer$Callback;
    .locals 1

    .line 2121
    new-instance v0, Lcom/android/server/connectivity/Tethering$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-object v0
.end method

.method private maybeDefaultDataSubChanged()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 358
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    if-ne v0, v1, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration(I)V

    .line 360
    return-void
.end method

.method private maybeDunSettingChanged()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;)Z

    move-result v0

    .line 352
    .local v0, "isDunRequired":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 354
    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 2204
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    .line 2205
    .local v0, "interfaceType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a tetherable iface, ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2207
    return-void

    .line 2209
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    .line 2210
    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V
    .locals 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "interfaceType"    # I

    .line 2214
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active iface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") reported as added, ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2216
    return-void

    .line 2219
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding TetheringInterfaceStateMachine for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2220
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v11, Landroid/net/ip/IpServer;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 2222
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->makeControlCallback()Landroid/net/ip/IpServer$Callback;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v9, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 2223
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getIpServerDependencies()Landroid/net/ip/IpServer$Dependencies;

    move-result-object v10

    move-object v1, v11

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v10}, Landroid/net/ip/IpServer;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/ip/IpServer$Callback;ZLandroid/net/ip/IpServer$Dependencies;)V

    invoke-direct {v0, v11}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Landroid/net/ip/IpServer;)V

    .line 2224
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->start()V

    .line 2226
    return-void
.end method

.method private notifyInterfaceStateChange(Landroid/net/ip/IpServer;II)V
    .locals 8
    .param p1, "who"    # Landroid/net/ip/IpServer;
    .param p2, "state"    # I
    .param p3, "error"    # I

    .line 2136
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2137
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2138
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2139
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2140
    iput p2, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 2141
    iput p3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    .line 2145
    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string v5, "OBSERVED iface=%s state=%s error=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2153
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-ne p2, v7, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-interface {v1, v0, v3}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2156
    goto :goto_1

    .line 2154
    :catch_0
    move-exception v1

    .line 2161
    :goto_1
    const/4 v1, 0x5

    if-ne p3, v1, :cond_2

    .line 2162
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50006

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2165
    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v6, :cond_4

    if-eq p2, v7, :cond_3

    if-eq p2, v2, :cond_3

    .line 2175
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown interface state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    return-void

    .line 2172
    :cond_3
    const v1, 0x50001

    .line 2173
    .local v1, "which":I
    goto :goto_2

    .line 2168
    .end local v1    # "which":I
    :cond_4
    const v1, 0x50002

    .line 2169
    .restart local v1    # "which":I
    nop

    .line 2178
    :goto_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2, v1, p2, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2179
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 2180
    return-void

    .line 2145
    .end local v1    # "which":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private notifyLinkPropertiesChanged(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "who"    # Landroid/net/ip/IpServer;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 2183
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2185
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2186
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2187
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2188
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 2193
    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .local v3, "state":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2195
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v5, 0x1

    .line 2197
    invoke-static {v3}, Landroid/net/ip/IpServer;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object p2, v2, v5

    .line 2195
    const-string v5, "OBSERVED LinkProperties update iface=%s state=%s lp=%s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2198
    const v1, 0x50007

    .line 2199
    .local v1, "which":I
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x50007

    invoke-virtual {v2, v5, v3, v4, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2200
    return-void

    .line 2190
    .end local v1    # "which":I
    .end local v3    # "state":I
    .restart local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got notification from stale iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2191
    monitor-exit v1

    return-void

    .line 2193
    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .locals 3
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 1321
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1323
    .local v1, "ifname":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    iget-object v2, v2, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1324
    const/4 v0, 0x1

    return v0

    .line 1326
    .end local v1    # "ifname":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1328
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private reportUpstreamChanged(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 2029
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2031
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2033
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/ITetheringEventCallback;

    invoke-interface {v2, p1}, Landroid/net/ITetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    goto :goto_1

    .line 2039
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    .line 2034
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 2031
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2039
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2040
    nop

    .line 2041
    return-void
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .locals 1
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    .line 496
    if-eqz p1, :cond_0

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 499
    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 12

    .line 644
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v1, "tetherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v2, "localOnlyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v3, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    .line 660
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    .line 661
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    .line 664
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 666
    .local v5, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 667
    nop

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 668
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 669
    .local v7, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 670
    .local v8, "iface":Ljava/lang/String;
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v9, :cond_1

    .line 671
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 672
    :cond_1
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 673
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 674
    :cond_2
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_3

    .line 675
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 676
    :cond_3
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7

    .line 689
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 690
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    goto :goto_1

    .line 691
    :cond_4
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 692
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    goto :goto_1

    .line 693
    :cond_5
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 694
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    .line 697
    :cond_6
    :goto_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .end local v8    # "iface":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 700
    .end local v4    # "i":I
    :cond_8
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v4, "bcast":Landroid/content/Intent;
    const/high16 v6, 0x24000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    const-string v6, "availableArray"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 705
    const-string/jumbo v6, "localOnlyArray"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 706
    const-string/jumbo v6, "tetherArray"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 707
    const-string v6, "erroredArray"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 708
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 741
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    const/16 v7, 0xe

    if-eqz v6, :cond_b

    .line 742
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_9

    goto :goto_3

    .line 745
    :cond_9
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 743
    :cond_a
    :goto_3
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 747
    :cond_b
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    if-eqz v6, :cond_d

    .line 748
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_c

    .line 749
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 752
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 753
    const v6, 0x33954ba

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 755
    :cond_d
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_e

    .line 756
    const/16 v6, 0x10

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    .line 758
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 761
    :goto_4
    return-void

    .line 700
    .end local v4    # "bcast":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .line 534
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 535
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 558
    return-void

    .line 536
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 539
    return-void
.end method

.method private setWifiTethering(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setWifiTethering(ZLjava/lang/String;)I
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 511
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    .line 512
    .local v3, "mgr":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_0

    .line 513
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v5, "setWifiTethering: failed to get WifiManager!"

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 514
    const/4 v4, 0x2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    return v4

    .line 518
    :cond_0
    :try_start_2
    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->transPackageName(Ljava/lang/String;)V

    .line 520
    if-eqz p1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-nez p1, :cond_3

    .line 521
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 522
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 523
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    return v4

    .line 525
    .end local v3    # "mgr":Landroid/net/wifi/WifiManager;
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 528
    nop

    .line 530
    const/4 v2, 0x5

    return v2

    .line 525
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/connectivity/Tethering;
    .end local p1    # "enable":Z
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 527
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/connectivity/Tethering;
    .restart local p1    # "enable":Z
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private showTetheredNotification(I)V
    .locals 1
    .param p1, "id"    # I

    .line 764
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    .line 765
    return-void
.end method

.method private startStateMachineUpdaters(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .line 312
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    .line 313
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    .line 315
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 322
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 323
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 328
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 330
    .local v1, "umi":Landroid/os/UserManagerInternal;
    if-eqz v1, :cond_0

    .line 331
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 333
    :cond_0
    return-void
.end method

.method private stopTrackingInterfaceLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 2229
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2230
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    .line 2231
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to remove unknown iface ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2232
    return-void

    .line 2234
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->stop()V

    .line 2235
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing TetheringInterfaceStateMachine for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 2236
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    return-void
.end method

.method private tether(Ljava/lang/String;I)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "requestedState"    # I

    .line 566
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 568
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 569
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to Tether an unknown iface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    monitor-exit v0

    return v2

    .line 574
    :cond_0
    iget v3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eq v3, v2, :cond_1

    .line 575
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v2, 0x4

    monitor-exit v0

    return v2

    .line 589
    :cond_1
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    const v3, 0x50066

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p2, v5, v4}, Landroid/net/ip/IpServer;->sendMessage(IIILjava/lang/Object;)V

    .line 591
    monitor-exit v0

    return v5

    .line 592
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tetherMatchingInterfaces(II)V
    .locals 6
    .param p1, "requestedState"    # I
    .param p2, "interfaceType"    # I

    .line 1162
    const/4 v0, 0x0

    .line 1164
    .local v0, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1168
    nop

    .line 1169
    const/4 v1, 0x0

    .line 1170
    .local v1, "chosenIface":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1171
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1172
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 1173
    move-object v1, v4

    .line 1174
    goto :goto_1

    .line 1171
    .end local v4    # "iface":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1178
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1179
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find iface of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void

    .line 1183
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    .line 1184
    return-void

    .line 1165
    .end local v1    # "chosenIface":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1166
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Error listing Interfaces"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    return-void
.end method

.method private updateConfiguration()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 342
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration(I)V

    .line 343
    return-void
.end method

.method private updateConfiguration(I)V
    .locals 3
    .param p1, "subId"    # I

    .line 346
    new-instance v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;-><init>(Landroid/content/Context;Landroid/net/util/SharedLog;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 347
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->updateMobileRequiresDun(Z)V

    .line 348
    return-void
.end method

.method private upstreamWanted()Z
    .locals 2

    .line 1305
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1306
    const-string v1, "com.oneplus.filemanager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v1, "filemanager enable tether, ignore upstreamWanted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/4 v0, 0x0

    return v0

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    monitor-exit v0

    return v1

    .line 1315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected clearTetheredNotification()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 943
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 944
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_0

    .line 945
    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 947
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 949
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2047
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2048
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2050
    :cond_0
    const-string v1, "Tethering:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2053
    const-string v1, "Configuration:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2055
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 2056
    .local v1, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 2057
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2059
    const-string v2, "Entitlement:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2061
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->dump(Ljava/io/PrintWriter;)V

    .line 2062
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2064
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2065
    :try_start_0
    const-string v3, "Tether state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2067
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2068
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2069
    .local v4, "iface":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2070
    .local v5, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2072
    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 2086
    const-string v6, "UnknownState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2083
    :cond_1
    const-string v6, "LocalHotspotState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2084
    goto :goto_1

    .line 2080
    :cond_2
    const-string v6, "TetheredState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2081
    goto :goto_1

    .line 2077
    :cond_3
    const-string v6, "AvailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2078
    goto :goto_1

    .line 2074
    :cond_4
    const-string v6, "UnavailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2075
    nop

    .line 2089
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - lastError = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    .end local v4    # "iface":Ljava/lang/String;
    .end local v5    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2091
    .end local v3    # "i":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upstream wanted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current upstream interface(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2094
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2096
    const-string v2, "Hardware offload:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2098
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2099
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2101
    const-string v2, "Log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2103
    const-string v2, "--short"

    invoke-static {p3, v2}, Lcom/android/server/connectivity/Tethering;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2104
    const-string v2, "<log removed for brevity>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2106
    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2108
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2110
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2111
    return-void

    .line 2094
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 5

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1288
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1289
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1290
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v4, :cond_0

    .line 1291
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    .end local v3    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1294
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1294
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 621
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_0

    .line 622
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 626
    :cond_0
    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    monitor-exit v0

    return v2

    .line 627
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showEntitlementUi"    # Z

    .line 2004
    if-eqz p2, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V

    .line 2007
    :cond_0
    return-void
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 6

    .line 1267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1269
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1270
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1271
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1272
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    .end local v3    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1275
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1275
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 6

    .line 1254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1257
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1258
    .local v3, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1259
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    .end local v3    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1262
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1262
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public hasTetherableConfiguration()Z
    .locals 5

    .line 1212
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    .line 1213
    .local v0, "cfg":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1217
    .local v1, "hasDownstreamConfiguration":Z
    :goto_1
    iget-object v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v3

    .line 1220
    .local v4, "hasUpstreamConfiguration":Z
    :goto_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    .line 418
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 387
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    .line 426
    monitor-exit v0

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 367
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    if-eqz p2, :cond_0

    .line 369
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 372
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    .line 381
    :cond_1
    :goto_0
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$Tethering(I)V
    .locals 2
    .param p1, "downstream"    # I

    .line 271
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED UiEnitlementFailed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 273
    return-void
.end method

.method public synthetic lambda$new$1$Tethering()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    .line 275
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDefaultDataSubChanged()V

    .line 276
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public synthetic lambda$new$2$Tethering(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ignored"    # Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED carrier config change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 285
    return-void
.end method

.method public synthetic lambda$new$3$Tethering(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ignored"    # Landroid/content/Intent;

    .line 292
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED default data subscription change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDefaultDataSubChanged()V

    .line 297
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "IGNORED reevaluate provisioning due to no carrier config loaded"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void
.end method

.method public synthetic lambda$registerTetheringEventCallback$4$Tethering(Landroid/net/ITetheringEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/net/ITetheringEventCallback;

    .line 2013
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    invoke-interface {p1, v0}, Landroid/net/ITetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    goto :goto_0

    .line 2014
    :catch_0
    move-exception v0

    .line 2017
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2018
    return-void
.end method

.method public synthetic lambda$unregisterTetheringEventCallback$5$Tethering(Landroid/net/ITetheringEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/net/ITetheringEventCallback;

    .line 2024
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2025
    return-void
.end method

.method public registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/net/ITetheringEventCallback;

    .line 2011
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Tethering$CL7AR28AECaRXzwrU9_xiYIE5GE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Tethering$CL7AR28AECaRXzwrU9_xiYIE5GE;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2019
    return-void
.end method

.method public setUsbTethering(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 1239
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1240
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    if-nez v0, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "setUsbTethering: failed to get UsbManager!"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1242
    const/4 v1, 0x2

    return v1

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1246
    if-eqz p1, :cond_1

    const-wide/16 v2, 0x20

    goto :goto_0

    .line 1247
    :cond_1
    const-wide/16 v2, 0x0

    .line 1246
    :goto_0
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    .line 1248
    monitor-exit v1

    .line 1249
    const/4 v1, 0x0

    return v1

    .line 1248
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public showSoftApClientsNotification(I)V
    .locals 1
    .param p1, "clients"    # I

    .line 633
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    .line 634
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    const v0, 0x33954ba

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_1

    .line 635
    :cond_1
    :goto_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 639
    :goto_1
    return-void
.end method

.method protected showTetheredNotification(IZ)V
    .locals 17
    .param p1, "id"    # I
    .param p2, "tetheringOn"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 769
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 770
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/NotificationManager;

    .line 771
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    if-nez v3, :cond_0

    .line 772
    return-void

    .line 776
    :cond_0
    const/4 v0, 0x1

    .line 778
    .local v0, "show":Z
    const/4 v4, 0x0

    .line 779
    .local v4, "icon":I
    const/16 v5, 0xf

    if-eq v2, v5, :cond_3

    const/16 v6, 0x10

    if-eq v2, v6, :cond_2

    const v6, 0x33954ba

    if-eq v2, v6, :cond_1

    .line 795
    const v4, 0x108082e

    move v6, v0

    goto :goto_0

    .line 789
    :cond_1
    const v4, 0x1080830

    .line 790
    const/4 v0, 0x0

    .line 791
    move v6, v0

    goto :goto_0

    .line 784
    :cond_2
    const v4, 0x108082d

    .line 785
    move v6, v0

    goto :goto_0

    .line 781
    :cond_3
    const v4, 0x108082f

    .line 782
    move v6, v0

    .line 799
    .end local v0    # "show":Z
    .local v6, "show":Z
    :goto_0
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    const v7, 0x1080830

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    .line 806
    if-ne v0, v4, :cond_4

    if-eq v4, v7, :cond_4

    .line 808
    return-void

    .line 810
    :cond_4
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v0, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 812
    iput v9, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 815
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    .line 816
    .local v15, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v10, "com.android.settings.TetherSettings"

    invoke-virtual {v15, v0, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 819
    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v12, v15

    move-object/from16 v16, v15

    .end local v15    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    move-object v15, v0

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 822
    .local v10, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 826
    .local v11, "r":Landroid/content/res/Resources;
    const/4 v0, 0x1

    if-eqz p2, :cond_b

    .line 834
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isTmobileSku()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 835
    const/16 v12, 0xe

    if-ne v2, v12, :cond_6

    .line 836
    const v12, 0x50f00e9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, "title":Ljava/lang/CharSequence;
    goto :goto_1

    .line 838
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_6
    const v12, 0x50f00ec

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .restart local v12    # "title":Ljava/lang/CharSequence;
    goto :goto_1

    .line 841
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_7
    const v12, 0x10406fa

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 844
    .restart local v12    # "title":Ljava/lang/CharSequence;
    :goto_1
    if-ne v4, v7, :cond_a

    .line 845
    iget v7, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    if-nez v7, :cond_8

    .line 846
    const v7, 0x50f00ea

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 847
    .end local v7    # "message":Ljava/lang/CharSequence;
    :cond_8
    if-ne v7, v0, :cond_9

    .line 848
    const v7, 0x50f00eb

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v0, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 850
    .end local v7    # "message":Ljava/lang/CharSequence;
    :cond_9
    const v7, 0x50f00e8

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v0, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 853
    .end local v7    # "message":Ljava/lang/CharSequence;
    :cond_a
    const v7, 0x10406f9

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto :goto_2

    .line 857
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_b
    const v7, 0x1040209

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 858
    .restart local v12    # "title":Ljava/lang/CharSequence;
    const v7, 0x1040208

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 863
    .restart local v7    # "message":Ljava/lang/CharSequence;
    :goto_2
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isTmobileSku()Z

    move-result v13

    if-eqz v13, :cond_c

    if-eq v2, v5, :cond_c

    .line 864
    const v4, 0x507015d

    .line 896
    :cond_c
    new-instance v5, Landroid/app/NotificationChannel;

    iget-object v13, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v14, 0x50f0078

    .line 898
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    const-string v15, "HOTSPOT_TETHERING_STATUS"

    invoke-direct {v5, v15, v13, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 900
    .local v5, "hotspotTetheringStatus":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 901
    invoke-virtual {v5, v9}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 902
    invoke-virtual {v5, v8, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 903
    invoke-virtual {v5, v9}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 904
    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 905
    const/4 v13, 0x0

    .line 906
    .local v13, "n":Landroid/app/Notification;
    iget-object v14, v1, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v14

    .line 907
    :try_start_0
    iget-object v15, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v15, :cond_d

    .line 908
    new-instance v15, Landroid/app/Notification$Builder;

    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v9, "HOTSPOT_TETHERING_STATUS"

    invoke-direct {v15, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v15, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    .line 910
    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v0, 0x0

    :try_start_1
    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 911
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    :try_start_2
    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v15, 0x106001c

    .line 912
    invoke-virtual {v8, v15}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 914
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v9, "status"

    .line 915
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 930
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    .line 907
    :cond_d
    move v8, v0

    .line 917
    :goto_3
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 918
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 919
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 920
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v9, "com.android.server.connectivity.tethering"

    .line 921
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 922
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 925
    :try_start_3
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move-object v13, v0

    .line 926
    iget-object v0, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "hide_icon"

    if-nez v6, :cond_e

    goto :goto_4

    :cond_e
    move v8, v9

    :goto_4
    invoke-virtual {v0, v15, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 929
    goto :goto_5

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v8, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TetheredNotificationBuilder build e:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 932
    if-eqz v13, :cond_f

    .line 933
    iput v4, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 934
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v0, v13, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 938
    :cond_f
    return-void

    .line 930
    :catchall_1
    move-exception v0

    :goto_6
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z
    .param p4, "callerPkg"    # Ljava/lang/String;

    .line 436
    if-nez p1, :cond_0

    .line 437
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTethering caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->startProvisioningIfNeeded(IZ)V

    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public stopTethering(I)V
    .locals 2
    .param p1, "type"    # I

    .line 454
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->stopProvisioningIfNeeded(I)V

    .line 456
    return-void
.end method

.method public systemReady()V
    .locals 3

    .line 1997
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->startTrackDefaultNetwork(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/tethering/EntitlementManager;)V

    .line 1999
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 561
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/net/ITetheringEventCallback;

    .line 2023
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Tethering$XBoGgF8AkKeshbpj45SRWFjtpIQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Tethering$XBoGgF8AkKeshbpj45SRWFjtpIQ;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2026
    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 599
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_0

    .line 600
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 603
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherState;->isCurrentlyServing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 604
    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to untether an inactive iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v2, 0x4

    monitor-exit v0

    return v2

    .line 607
    :cond_1
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    const v3, 0x50067

    invoke-virtual {v2, v3}, Landroid/net/ip/IpServer;->sendMessage(I)V

    .line 608
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 609
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public untetherAll()V
    .locals 1

    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 614
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 615
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 616
    return-void
.end method
