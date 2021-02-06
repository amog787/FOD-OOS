.class public Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;,
        Lcom/android/server/TelephonyRegistry$opRecord;,
        Lcom/android/server/TelephonyRegistry$ConfigurationProvider;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field private static final ACTION_SUBSCRIPTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SUBSCRIPTION_PHONE_STATE"

.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field static final ENFORCE_LOCATION_PERMISSION_MASK:I = -0x3ffffbf0

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x110000c

.field static final ENFORCE_PRECISE_PHONE_STATE_PERMISSION_MASK:I = -0x31ffe800

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field private static final OPDBG:Z

.field private static final PHONE_CONSTANTS_DATA_APN_KEY:Ljava/lang/String; = "apn"

.field private static final PHONE_CONSTANTS_DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field private static final PHONE_CONSTANTS_SLOT_KEY:Ljava/lang/String; = "slot"

.field private static final PHONE_CONSTANTS_STATE_KEY:Ljava/lang/String; = "state"

.field private static final PHONE_CONSTANTS_SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field static final READ_ACTIVE_EMERGENCY_SESSION_PERMISSION_MASK:I = 0x30000000

.field static final READ_PRIVILEGED_PHONE_STATE_PERMISSION_MASK:I = 0x82c000

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z = false


# instance fields
.field private m5gStatus:I

.field private mActiveDataSubId:I

.field private mAnomalyStatus:[I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:[I

.field private mBarringInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/BarringInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallAttributes:[Landroid/telephony/CallAttributes;

.field private mCallDisconnectCause:[I

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallNetworkType:[I

.field private mCallPreciseDisconnectCause:[I

.field private mCallQuality:[Landroid/telephony/CallQuality;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:Z

.field private mCellIdentity:[Landroid/telephony/CellIdentity;

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

.field private final mContext:Landroid/content/Context;

.field private mDataActivationState:[I

.field private mDataActivity:[I

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionState:[I

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mEmergencyNumberList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForegroundCallState:[I

.field private final mHandler:Landroid/os/Handler;

.field private mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

.field private mHasNotifySubscriptionInfoChangedOccurred:Z

.field private mImsCapabilityStatus:[[Z

.field private mImsReasonInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenLog:Landroid/util/LocalLog;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private final mOpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/TelephonyRegistry$opRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field private mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

.field private mPhoneCapability:Landroid/telephony/PhoneCapability;

.field private mPreciseCallState:[Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PreciseDataConnectionState;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRadioPowerState:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:[I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mSrvccState:[I

.field private mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

.field private mUserMobileDataState:[Z

.field private mVoiceActivationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/TelephonyRegistry;->OPDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configurationProvider"    # Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 626
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRemoveList:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 350
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 352
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 364
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 368
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 370
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 372
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 374
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 376
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 379
    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 381
    new-array v4, v3, [[Z

    const/4 v6, 0x6

    new-array v7, v6, [Z

    fill-array-data v7, :array_0

    aput-object v7, v4, v0

    new-array v6, v6, [Z

    fill-array-data v6, :array_1

    const/4 v7, 0x1

    aput-object v6, v4, v7

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    .line 383
    new-array v3, v3, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAnomalyStatus:[I

    .line 385
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->m5gStatus:I

    .line 388
    new-instance v3, Landroid/util/LocalLog;

    invoke-direct {v3, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 431
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 489
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 627
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 629
    .local v3, "location":Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 630
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 631
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 633
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    .line 635
    .local v4, "numPhones":I
    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 636
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 637
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 638
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 639
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 640
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 641
    new-array v5, v4, [Landroid/telephony/ServiceState;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 642
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 643
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 644
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 645
    new-array v5, v4, [Landroid/telephony/SignalStrength;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 646
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 647
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 648
    new-array v5, v4, [Landroid/telephony/CellIdentity;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 649
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 650
    new-array v5, v4, [Landroid/telephony/PreciseCallState;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 651
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 652
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 653
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 654
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 655
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 656
    new-array v5, v4, [Landroid/telephony/CallQuality;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 657
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 658
    new-array v5, v4, [Landroid/telephony/CallAttributes;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    .line 659
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 660
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 661
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    .line 662
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 663
    new-array v5, v4, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 664
    new-array v5, v4, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 665
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    .line 666
    new-array v5, v4, [Landroid/telephony/TelephonyDisplayInfo;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 667
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 668
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v0, v6, v5

    .line 669
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v0, v6, v5

    .line 670
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v2, v6, v5

    .line 671
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v0, v6, v5

    .line 672
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v0, v6, v5

    .line 673
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v5

    .line 674
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v7, Landroid/telephony/ServiceState;

    invoke-direct {v7}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v7, v6, v5

    .line 675
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object v1, v6, v5

    .line 676
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v0, v6, v5

    .line 677
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v0, v6, v5

    .line 678
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v0, v6, v5

    .line 679
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object v1, v6, v5

    .line 680
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 681
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v6, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 682
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v2, v6, v5

    .line 683
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v2, v6, v5

    .line 684
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v2, v6, v5

    .line 685
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v7

    aput-object v7, v6, v5

    .line 686
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v7, Landroid/telephony/CallAttributes;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v8

    .line 687
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v9

    invoke-direct {v7, v8, v0, v9}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v7, v6, v5

    .line 688
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v0, v6, v5

    .line 689
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v7

    aput-object v7, v6, v5

    .line 690
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v0, v6, v5

    .line 691
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v0, v6, v5

    .line 692
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v0, v6, v5

    .line 693
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v7, Landroid/telephony/BarringInfo;

    invoke-direct {v7}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v6, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 695
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object v1, v6, v5

    .line 667
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 698
    .end local v5    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 699
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 127
    invoke-static {p0}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/TelephonyRegistry;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/TelephonyRegistry;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->onMultiSimConfigChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TelephonyRegistry;)[Landroid/telephony/CellIdentity;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "x2"    # I

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/TelephonyRegistry;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .line 127
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/TelephonyRegistry;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .line 127
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 127
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method private add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "doesLimitApply"    # Z

    .line 1309
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1312
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1313
    .local v2, "numRecordsForPid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1314
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1315
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne p1, v5, :cond_0

    .line 1317
    monitor-exit v0

    return-object v4

    .line 1319
    :cond_0
    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    if-ne v5, p3, :cond_1

    .line 1320
    add-int/lit8 v2, v2, 0x1

    .line 1313
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1324
    .end local v3    # "i":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-virtual {v3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->getRegistrationLimit()I

    move-result v3

    .line 1326
    .local v3, "registrationLimit":I
    if-eqz p4, :cond_4

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4

    if-lt v2, v3, :cond_4

    .line 1329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has exceeded the number of permissible registered listeners. Ignoring request to add."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1331
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1332
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mConfigurationProvider:Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    .line 1333
    invoke-virtual {v5, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->isRegistrationLimitEnabledInPlatformCompat(I)Z

    move-result v5

    if-nez v5, :cond_3

    .end local v4    # "errorMsg":Ljava/lang/String;
    goto :goto_1

    .line 1334
    .restart local v4    # "errorMsg":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/TelephonyRegistry;
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPid":I
    .end local p4    # "doesLimitApply":Z
    throw v5

    .line 1336
    .end local v4    # "errorMsg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/TelephonyRegistry;
    .restart local p1    # "binder":Landroid/os/IBinder;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPid":I
    .restart local p4    # "doesLimitApply":Z
    :cond_4
    if-eqz p4, :cond_5

    const/16 v4, 0x19

    if-lt v2, v4, :cond_5

    .line 1340
    const-string v4, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has exceeded half the number of permissible registered listeners. Now at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1336
    :cond_5
    :goto_1
    nop

    .line 1344
    :goto_2
    new-instance v4, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 1345
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 1346
    new-instance v6, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-direct {v6, p0, p1}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    iput-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    :try_start_1
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    nop

    .line 1356
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    nop

    .end local v1    # "N":I
    .end local v2    # "numRecordsForPid":I
    .end local v3    # "registrationLimit":I
    monitor-exit v0

    .line 1360
    return-object v4

    .line 1350
    .restart local v1    # "N":I
    .restart local v2    # "numRecordsForPid":I
    .restart local v3    # "registrationLimit":I
    :catch_0
    move-exception v6

    .line 1353
    .local v6, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-object v5

    .line 1358
    .end local v1    # "N":I
    .end local v2    # "numRecordsForPid":I
    .end local v3    # "registrationLimit":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;II)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .line 2760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2762
    .local v0, "ident":J
    const/16 v2, 0x5f

    if-nez p1, :cond_0

    .line 2763
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V

    .line 2764
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    goto :goto_0

    .line 2767
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V

    .line 2768
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2774
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2775
    throw v2

    .line 2771
    :catch_0
    move-exception v2

    .line 2774
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2775
    nop

    .line 2777
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2778
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->callStateToString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2782
    const/4 v3, -0x1

    if-eq p4, v3, :cond_1

    .line 2783
    const-string v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2784
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2785
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2788
    :cond_1
    if-eq p3, v3, :cond_2

    .line 2789
    const-string/jumbo v3, "slot"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2790
    const-string v3, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2794
    :cond_2
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2797
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2798
    .local v3, "intentWithPhoneNumber":Landroid/content/Intent;
    const-string v4, "incoming_number"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2802
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2804
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v6, 0x33

    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v2, v5, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 2807
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_CALL_LOG"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 2810
    return-void
.end method

.method private broadcastDataConnectionStateChanged(ILjava/lang/String;II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "apnType"    # I
    .param p4, "subId"    # I

    .line 2829
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2830
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->dataStateToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2831
    const-string v1, "apn"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2832
    nop

    .line 2833
    invoke-static {p3}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v1

    .line 2832
    const-string v2, "apnType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2834
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2835
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2836
    return-void
.end method

.method private broadcastImsCapabilityStatusChangeForPhoneId([ZII)V
    .locals 3
    .param p1, "status"    # [Z
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 3400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.ACTION_IMS_CAPABILITY_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3401
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 3402
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3403
    const-string/jumbo v1, "subId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3404
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3405
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .locals 7
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 2691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2693
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2697
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2698
    throw v2

    .line 2694
    :catch_0
    move-exception v2

    .line 2697
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2698
    nop

    .line 2700
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2701
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2702
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2703
    .local v3, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2704
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2706
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2707
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2708
    const-string/jumbo v4, "slot"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2709
    const-string v4, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2710
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2711
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 2715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2717
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2721
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2722
    throw v2

    .line 2718
    :catch_0
    move-exception v2

    .line 2721
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2722
    nop

    .line 2724
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIG_STR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2725
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2726
    .local v3, "data":Landroid/os/Bundle;
    invoke-direct {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->fillInSignalStrengthNotifierBundle(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V

    .line 2727
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2728
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2729
    const-string/jumbo v4, "slot"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2730
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2731
    return-void
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "callState"    # I

    .line 2814
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2820
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    return-object v0

    .line 2818
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-object v0

    .line 2816
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    return-object v0
.end method

.method private checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "minSdk"    # I

    .line 3034
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3036
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3037
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3038
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3039
    const-string v1, "TelephonyRegistry push"

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3040
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3041
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3042
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 3044
    .local v0, "query":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    new-instance v1, Lcom/android/server/-$$Lambda$TelephonyRegistry$KwKYEFoKdijV5jZbDqX1IUV4CzY;

    invoke-direct {v1, p0, v0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$KwKYEFoKdijV5jZbDqX1IUV4CzY;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "minSdk"    # I

    .line 3016
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 3018
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 3019
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 3020
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3021
    const-string v1, "TelephonyRegistry push"

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3022
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3023
    invoke-virtual {v0, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 3024
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v0

    .line 3026
    .local v0, "query":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    new-instance v1, Lcom/android/server/-$$Lambda$TelephonyRegistry$ANYH01Imb6dMua6cgKvMEl4kD3I;

    invoke-direct {v1, p0, v0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$ANYH01Imb6dMua6cgKvMEl4kD3I;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private checkListenerPermission(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "events"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 2864
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 2866
    invoke-virtual {v0, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2867
    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2868
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2869
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v0

    .line 2871
    .local v0, "locationQueryBuilder":Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    const v1, -0x3ffffbf0    # -2.000248f

    and-int/2addr v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2873
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 2876
    invoke-virtual {v0, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    .line 2878
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2880
    invoke-virtual {v0}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v4

    .line 2879
    invoke-static {v1, v4}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v1

    .line 2881
    .local v1, "result":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v4, Lcom/android/server/TelephonyRegistry$3;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 2886
    :cond_0
    return v3

    .line 2883
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to listen for events "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " due to insufficient location permissions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2890
    .end local v1    # "result":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    :cond_2
    :goto_0
    const v1, 0x110000c

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    .line 2891
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3, p4, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2893
    return v3

    .line 2897
    :cond_3
    const v1, -0x31ffe800

    and-int/2addr v1, p1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 2901
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2905
    goto :goto_1

    .line 2903
    :catch_0
    move-exception v1

    .line 2904
    .local v1, "se":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v4, p2, p5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 2908
    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_4
    :goto_1
    const/high16 v1, 0x30000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_5

    .line 2909
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_ACTIVE_EMERGENCY_SESSION"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    :cond_5
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_6

    .line 2914
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.LISTEN_ALWAYS_REPORTED_SIGNAL_STRENGTH"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    :cond_6
    const v1, 0x82c000

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    .line 2919
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    :cond_7
    return v2
.end method

.method private checkNotifyPermission()Z
    .locals 2

    .line 2858
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 2848
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2849
    const/4 v0, 0x1

    return v0

    .line 2851
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modify Phone State Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2854
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .line 3052
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 3054
    .local v0, "events":I
    and-int/lit8 v1, v0, 0x1

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3058
    :try_start_0
    new-instance v1, Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p2

    invoke-direct {v1, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 3059
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3060
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 3061
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3062
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/4 v5, 0x0

    .line 3063
    invoke-virtual {v1, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 3062
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 3065
    :cond_1
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 3066
    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 3065
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3070
    .end local v1    # "ss":Landroid/telephony/ServiceState;
    :goto_0
    goto :goto_1

    .line 3068
    :catch_0
    move-exception v1

    .line 3069
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3073
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-nez v1, :cond_3

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    .line 3076
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    if-eqz v1, :cond_4

    .line 3077
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    .line 3082
    .local v1, "signalStrength":Landroid/telephony/SignalStrength;
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3086
    .end local v1    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_4
    goto :goto_2

    .line 3084
    :catch_1
    move-exception v1

    .line 3085
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3089
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_8

    .line 3091
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    if-eqz v1, :cond_7

    .line 3092
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    .line 3093
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 3098
    .local v1, "gsmSignalStrength":I
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v1, v5, :cond_6

    const/4 v5, -0x1

    goto :goto_3

    .line 3099
    :cond_6
    move v5, v1

    .line 3098
    :goto_3
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3103
    .end local v1    # "gsmSignalStrength":I
    :cond_7
    goto :goto_4

    .line 3101
    :catch_2
    move-exception v1

    .line 3102
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3106
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_8
    :goto_4
    const/16 v1, 0x400

    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3112
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3113
    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3114
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3118
    :cond_9
    goto :goto_5

    .line 3116
    :catch_3
    move-exception v1

    .line 3117
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3121
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_a
    :goto_5
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 3127
    :try_start_4
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3130
    goto :goto_6

    .line 3128
    :catch_4
    move-exception v1

    .line 3129
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3133
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_b
    :goto_6
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 3139
    :try_start_5
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v1, v1, p2

    if-eqz v1, :cond_c

    .line 3140
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v4, v4, p2

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3144
    :cond_c
    goto :goto_7

    .line 3142
    :catch_5
    move-exception v1

    .line 3143
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3147
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_d
    :goto_7
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_e

    .line 3153
    :try_start_6
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3157
    goto :goto_8

    .line 3155
    :catch_6
    move-exception v1

    .line 3156
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3160
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_e
    :goto_8
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_f

    .line 3166
    :try_start_7
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v4, v4, p2

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 3170
    goto :goto_9

    .line 3168
    :catch_7
    move-exception v1

    .line 3169
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3173
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_f
    :goto_9
    const/16 v1, 0x10

    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3179
    :try_start_8
    invoke-direct {p0, p1, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3180
    invoke-direct {p0, p1, v2}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3182
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v2, v2, p2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 3186
    :cond_10
    goto :goto_a

    .line 3184
    :catch_8
    move-exception v1

    .line 3185
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3189
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_11
    :goto_a
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_12

    .line 3197
    :try_start_9
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, p2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v3, v3, p2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 3201
    goto :goto_b

    .line 3199
    :catch_9
    move-exception v1

    .line 3200
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3203
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_12
    :goto_b
    return-void
.end method

.method private static createCallQuality()Landroid/telephony/CallQuality;
    .locals 13

    .line 3291
    new-instance v12, Landroid/telephony/CallQuality;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIII)V

    return-object v12
.end method

.method private static createPreciseCallState()Landroid/telephony/PreciseCallState;
    .locals 7

    .line 3282
    new-instance v6, Landroid/telephony/PreciseCallState;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    return-object v6
.end method

.method private cutListToSize(Ljava/util/List;I)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "size"    # I

    .line 611
    if-nez p1, :cond_0

    return-void

    .line 613
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 614
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 616
    :cond_1
    return-void
.end method

.method private static dataStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 3211
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 3217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3215
    :cond_0
    const-string v0, "SUSPENDED"

    return-object v0

    .line 3214
    :cond_1
    const-string v0, "CONNECTED"

    return-object v0

    .line 3213
    :cond_2
    const-string v0, "CONNECTING"

    return-object v0

    .line 3212
    :cond_3
    const-string v0, "DISCONNECTED"

    return-object v0
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 2839
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2840
    return-void

    .line 2843
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 2844
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 2843
    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 2845
    return-void
.end method

.method private fillInSignalStrengthNotifierBundle(Landroid/telephony/SignalStrength;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 2734
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    .line 2735
    .local v0, "cellSignalStrengths":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellSignalStrength;

    .line 2736
    .local v2, "cellSignalStrength":Landroid/telephony/CellSignalStrength;
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v3, :cond_0

    .line 2737
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthLte;

    const-string v4, "Lte"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 2738
    :cond_0
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v3, :cond_1

    .line 2739
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthCdma;

    const-string v4, "Cdma"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 2740
    :cond_1
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v3, :cond_2

    .line 2741
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthGsm;

    const-string v4, "Gsm"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 2742
    :cond_2
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v3, :cond_3

    .line 2743
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthWcdma;

    const-string v4, "Wcdma"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 2744
    :cond_3
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v3, :cond_4

    .line 2745
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthTdscdma;

    const-string v4, "Tdscdma"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 2746
    :cond_4
    instance-of v3, v2, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v3, :cond_5

    .line 2747
    move-object v3, v2

    check-cast v3, Landroid/telephony/CellSignalStrengthNr;

    const-string v4, "Nr"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2749
    .end local v2    # "cellSignalStrength":Landroid/telephony/CellSignalStrength;
    :cond_5
    :goto_1
    goto :goto_0

    .line 2750
    :cond_6
    return-void
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .line 1303
    invoke-virtual {p1}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 3228
    packed-switch p1, :pswitch_data_0

    .line 3276
    :pswitch_0
    const-string v0, "UNKNOWN"

    return-object v0

    .line 3274
    :pswitch_1
    const-string v0, "NR"

    return-object v0

    .line 3264
    :pswitch_2
    const-string v0, "IWLAN"

    return-object v0

    .line 3262
    :pswitch_3
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 3260
    :pswitch_4
    const-string v0, "GSM"

    return-object v0

    .line 3258
    :pswitch_5
    const-string v0, "HSPA+"

    return-object v0

    .line 3254
    :pswitch_6
    const-string v0, "CDMA - eHRPD"

    return-object v0

    .line 3252
    :pswitch_7
    const-string v0, "LTE"

    return-object v0

    .line 3248
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. B"

    return-object v0

    .line 3256
    :pswitch_9
    const-string v0, "iDEN"

    return-object v0

    .line 3240
    :pswitch_a
    const-string v0, "HSPA"

    return-object v0

    .line 3238
    :pswitch_b
    const-string v0, "HSUPA"

    return-object v0

    .line 3236
    :pswitch_c
    const-string v0, "HSDPA"

    return-object v0

    .line 3250
    :pswitch_d
    const-string v0, "CDMA - 1xRTT"

    return-object v0

    .line 3246
    :pswitch_e
    const-string v0, "CDMA - EvDo rev. A"

    return-object v0

    .line 3244
    :pswitch_f
    const-string v0, "CDMA - EvDo rev. 0"

    return-object v0

    .line 3242
    :pswitch_10
    const-string v0, "CDMA"

    return-object v0

    .line 3234
    :pswitch_11
    const-string v0, "UMTS"

    return-object v0

    .line 3232
    :pswitch_12
    const-string v0, "EDGE"

    return-object v0

    .line 3230
    :pswitch_13
    const-string v0, "GPRS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneIdFromSubId(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 3295
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3296
    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 3297
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 3299
    :cond_0
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_1

    .line 3300
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 3303
    :cond_1
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 3304
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_2

    return v1

    .line 3305
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    return v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleOpRemoveListLocked()V
    .locals 3

    .line 2940
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2942
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 2943
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOpRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 2944
    .local v2, "b":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->opremove(Landroid/os/IBinder;)V

    .line 2945
    .end local v2    # "b":Landroid/os/IBinder;
    goto :goto_0

    .line 2946
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOpRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2948
    :cond_1
    return-void
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .line 2927
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2929
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 2930
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 2931
    .local v2, "b":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 2932
    .end local v2    # "b":Landroid/os/IBinder;
    goto :goto_0

    .line 2933
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2935
    :cond_1
    return-void
.end method

.method private idMatchWithoutDefaultPhoneCheck(II)Z
    .locals 3
    .param p1, "subIdInRecord"    # I
    .param p2, "subIdToNotify"    # I

    .line 2995
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_1

    .line 2996
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2998
    :cond_1
    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private listen(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 18
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z
    .param p6, "subId"    # I

    .line 979
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 980
    .local v12, "callerUserId":I
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listen: E pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " events=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " notifyNow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " myUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callerUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 984
    .local v13, "str":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v0, v13}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 987
    sget-boolean v0, Lcom/android/server/TelephonyRegistry;->OPDBG:Z

    if-eqz v0, :cond_0

    .line 988
    invoke-static {v13}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 992
    :cond_0
    if-eqz v9, :cond_2d

    .line 996
    const-string/jumbo v6, "listen"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p6

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 998
    return-void

    .line 1001
    :cond_1
    invoke-direct {v7, v11}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v1

    .line 1002
    .local v1, "phoneId":I
    iget-object v2, v7, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1004
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v3, v0

    .line 1006
    .local v3, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_2

    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v4, 0x3e9

    if-eq v0, v4, :cond_2

    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 1009
    .local v4, "doesLimitApply":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-direct {v7, v3, v0, v14, v4}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v0

    move-object v14, v0

    .line 1011
    .local v14, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v14, :cond_3

    .line 1012
    monitor-exit v2

    return-void

    .line 1015
    :cond_3
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1016
    move-object/from16 v15, p3

    :try_start_1
    iput-object v15, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1017
    iput-object v8, v14, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    move-object/from16 v6, p2

    :try_start_2
    iput-object v6, v14, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 1019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 1020
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 1023
    invoke-static/range {p6 .. p6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1024
    const v0, 0x7fffffff

    iput v0, v14, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto :goto_1

    .line 1026
    :cond_4
    iput v11, v14, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1028
    :goto_1
    iput v1, v14, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 1029
    iput v9, v14, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 1033
    if-eqz v10, :cond_2b

    invoke-direct {v7, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2b

    .line 1034
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_7

    .line 1037
    :try_start_3
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v5, v7, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v1

    invoke-direct {v0, v5}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1038
    .local v0, "rawSs":Landroid/telephony/ServiceState;
    const/16 v5, 0x1d

    invoke-direct {v7, v14, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v17
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v17, :cond_5

    .line 1039
    :try_start_4
    iget-object v5, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v17, v3

    move/from16 v16, v4

    goto :goto_2

    .line 1047
    .end local v0    # "rawSs":Landroid/telephony/ServiceState;
    :catch_0
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v4

    goto :goto_3

    .line 1040
    .restart local v0    # "rawSs":Landroid/telephony/ServiceState;
    :cond_5
    const/16 v5, 0x1d

    :try_start_5
    invoke-direct {v7, v14, v5}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v17
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v17, :cond_6

    .line 1041
    :try_start_6
    iget-object v5, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1042
    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "b":Landroid/os/IBinder;
    .local v17, "b":Landroid/os/IBinder;
    :try_start_7
    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 1041
    invoke-interface {v5, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v16, v4

    goto :goto_2

    .line 1047
    .end local v0    # "rawSs":Landroid/telephony/ServiceState;
    :catch_1
    move-exception v0

    move/from16 v16, v4

    goto :goto_3

    .end local v17    # "b":Landroid/os/IBinder;
    .restart local v3    # "b":Landroid/os/IBinder;
    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v4

    .end local v3    # "b":Landroid/os/IBinder;
    .restart local v17    # "b":Landroid/os/IBinder;
    goto :goto_3

    .line 1044
    .end local v17    # "b":Landroid/os/IBinder;
    .restart local v0    # "rawSs":Landroid/telephony/ServiceState;
    .restart local v3    # "b":Landroid/os/IBinder;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "b":Landroid/os/IBinder;
    .restart local v17    # "b":Landroid/os/IBinder;
    :try_start_8
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1045
    move/from16 v16, v4

    const/4 v5, 0x1

    .end local v4    # "doesLimitApply":Z
    .local v16, "doesLimitApply":Z
    :try_start_9
    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 1044
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1049
    .end local v0    # "rawSs":Landroid/telephony/ServiceState;
    :goto_2
    goto :goto_4

    .line 1047
    :catch_3
    move-exception v0

    goto :goto_3

    .end local v16    # "doesLimitApply":Z
    .restart local v4    # "doesLimitApply":Z
    :catch_4
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "doesLimitApply":Z
    .restart local v16    # "doesLimitApply":Z
    goto :goto_3

    .end local v16    # "doesLimitApply":Z
    .end local v17    # "b":Landroid/os/IBinder;
    .restart local v3    # "b":Landroid/os/IBinder;
    .restart local v4    # "doesLimitApply":Z
    :catch_5
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v4

    .line 1048
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "doesLimitApply":Z
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v16    # "doesLimitApply":Z
    .restart local v17    # "b":Landroid/os/IBinder;
    :goto_3
    :try_start_a
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 1034
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v16    # "doesLimitApply":Z
    .end local v17    # "b":Landroid/os/IBinder;
    .restart local v3    # "b":Landroid/os/IBinder;
    .restart local v4    # "doesLimitApply":Z
    :cond_7
    move-object/from16 v17, v3

    move/from16 v16, v4

    .line 1051
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "doesLimitApply":Z
    .restart local v16    # "doesLimitApply":Z
    .restart local v17    # "b":Landroid/os/IBinder;
    :goto_4
    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_a

    .line 1053
    :try_start_b
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    .line 1054
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v1

    .line 1055
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1056
    .local v0, "gsmSignalStrength":I
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v4, 0x63

    if-ne v0, v4, :cond_8

    const/4 v4, -0x1

    goto :goto_5

    .line 1057
    :cond_8
    move v4, v0

    .line 1056
    :goto_5
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1061
    .end local v0    # "gsmSignalStrength":I
    :cond_9
    goto :goto_6

    .line 1059
    :catch_6
    move-exception v0

    .line 1060
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_c
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1063
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_a
    :goto_6
    and-int/lit8 v0, v9, 0x4

    if-eqz v0, :cond_b

    .line 1065
    :try_start_d
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1069
    goto :goto_7

    .line 1067
    :catch_7
    move-exception v0

    .line 1068
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_e
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1071
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_b
    :goto_7
    and-int/lit8 v0, v9, 0x8

    if-eqz v0, :cond_c

    .line 1073
    :try_start_f
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1077
    goto :goto_8

    .line 1075
    :catch_8
    move-exception v0

    .line 1076
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_10
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1079
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_c
    :goto_8
    const/16 v0, 0x10

    invoke-direct {v7, v14, v0}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v0, :cond_e

    .line 1082
    const/4 v3, 0x1

    :try_start_11
    invoke-direct {v7, v14, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1083
    const/16 v3, 0x1d

    invoke-direct {v7, v14, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1085
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1089
    :cond_d
    goto :goto_9

    .line 1087
    :catch_9
    move-exception v0

    .line 1088
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_12
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1091
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_e
    :goto_9
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_f

    .line 1093
    :try_start_13
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v3, v3, v1

    .line 1094
    invoke-direct {v7, v14, v1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v4

    .line 1093
    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1097
    goto :goto_a

    .line 1095
    :catch_a
    move-exception v0

    .line 1096
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_14
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1099
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    :goto_a
    and-int/lit8 v0, v9, 0x40

    if-eqz v0, :cond_10

    .line 1101
    :try_start_15
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v1

    iget-object v4, v7, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v4, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1105
    goto :goto_b

    .line 1103
    :catch_b
    move-exception v0

    .line 1104
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_16
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1107
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_10
    :goto_b
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_11

    .line 1109
    :try_start_17
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1112
    goto :goto_c

    .line 1110
    :catch_c
    move-exception v0

    .line 1111
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_18
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1114
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_11
    :goto_c
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_13

    .line 1116
    :try_start_19
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v1

    if-eqz v0, :cond_12

    .line 1117
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 1121
    :cond_12
    goto :goto_d

    .line 1119
    :catch_d
    move-exception v0

    .line 1120
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_1a
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1123
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_d
    and-int/lit16 v0, v9, 0x200

    if-eqz v0, :cond_15

    .line 1125
    iget v0, v14, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-direct {v7, v0}, Lcom/android/server/TelephonyRegistry;->updateReportSignalStrengthDecision(I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 1127
    :try_start_1b
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v1

    if-eqz v0, :cond_14

    .line 1128
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 1132
    :cond_14
    goto :goto_e

    .line 1130
    :catch_e
    move-exception v0

    .line 1131
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_1c
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1134
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_15
    :goto_e
    const/16 v0, 0x400

    invoke-direct {v7, v14, v0}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-eqz v0, :cond_17

    .line 1138
    const/4 v3, 0x1

    :try_start_1d
    invoke-direct {v7, v14, v3}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1139
    const/16 v3, 0x1d

    invoke-direct {v7, v14, v3}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1140
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1144
    :cond_16
    goto :goto_f

    .line 1142
    :catch_f
    move-exception v0

    .line 1143
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_1e
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 1146
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_17
    :goto_f
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_18

    .line 1148
    :try_start_1f
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_10
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 1151
    goto :goto_10

    .line 1149
    :catch_10
    move-exception v0

    .line 1150
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_20
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 1153
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_18
    :goto_10
    const/high16 v0, 0x2000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_19

    .line 1155
    :try_start_21
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v3, v3, v1

    iget-object v4, v7, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v4, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_11
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 1159
    goto :goto_11

    .line 1157
    :catch_11
    move-exception v0

    .line 1158
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_22
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 1161
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_19
    :goto_11
    const/high16 v0, 0x8000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_1a

    .line 1163
    :try_start_23
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_12
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 1166
    goto :goto_12

    .line 1164
    :catch_12
    move-exception v0

    .line 1165
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_24
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 1168
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1a
    :goto_12
    and-int/lit16 v0, v9, 0x1000

    if-eqz v0, :cond_1c

    .line 1171
    :try_start_25
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/PreciseDataConnectionState;

    .line 1172
    .local v3, "pdcs":Landroid/telephony/PreciseDataConnectionState;
    iget-object v4, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_13
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    .line 1173
    .end local v3    # "pdcs":Landroid/telephony/PreciseDataConnectionState;
    goto :goto_13

    .line 1176
    :cond_1b
    goto :goto_14

    .line 1174
    :catch_13
    move-exception v0

    .line 1175
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_26
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    .line 1178
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1c
    :goto_14
    const/high16 v0, 0x10000

    and-int/2addr v0, v9

    if-eqz v0, :cond_1d

    .line 1180
    :try_start_27
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v3, v7, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_14
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    .line 1183
    goto :goto_15

    .line 1181
    :catch_14
    move-exception v0

    .line 1182
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_28
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    .line 1185
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1d
    :goto_15
    const/high16 v0, 0x20000

    and-int/2addr v0, v9

    if-eqz v0, :cond_1e

    .line 1187
    :try_start_29
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_15
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    .line 1191
    goto :goto_16

    .line 1189
    :catch_15
    move-exception v0

    .line 1190
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_2a
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    .line 1193
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1e
    :goto_16
    const/high16 v0, 0x40000

    and-int/2addr v0, v9

    if-eqz v0, :cond_1f

    .line 1195
    :try_start_2b
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_16
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    .line 1198
    goto :goto_17

    .line 1196
    :catch_16
    move-exception v0

    .line 1197
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_2c
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    .line 1200
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1f
    :goto_17
    const/high16 v0, 0x80000

    and-int/2addr v0, v9

    if-eqz v0, :cond_20

    .line 1202
    :try_start_2d
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_17
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    .line 1205
    goto :goto_18

    .line 1203
    :catch_17
    move-exception v0

    .line 1204
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_2e
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2

    .line 1207
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_20
    :goto_18
    const/high16 v0, 0x100000

    and-int/2addr v0, v9

    if-eqz v0, :cond_22

    .line 1209
    :try_start_2f
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v0, v0, v1

    if-eqz v0, :cond_21

    .line 1210
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_18
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 1214
    :cond_21
    goto :goto_19

    .line 1212
    :catch_18
    move-exception v0

    .line 1213
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_30
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    .line 1216
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_22
    :goto_19
    const/high16 v0, 0x1000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_23

    .line 1218
    :try_start_31
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_19
    .catchall {:try_start_31 .. :try_end_31} :catchall_2

    .line 1221
    goto :goto_1a

    .line 1219
    :catch_19
    move-exception v0

    .line 1220
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_32
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_2

    .line 1223
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_23
    :goto_1a
    const/high16 v0, 0x200000

    and-int/2addr v0, v9

    if-eqz v0, :cond_24

    .line 1225
    :try_start_33
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_1a
    .catchall {:try_start_33 .. :try_end_33} :catchall_2

    .line 1228
    goto :goto_1b

    .line 1226
    :catch_1a
    move-exception v0

    .line 1227
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_34
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2

    .line 1230
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_24
    :goto_1b
    const/high16 v0, 0x400000

    and-int/2addr v0, v9

    if-eqz v0, :cond_25

    .line 1233
    :try_start_35
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, v7, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_1b
    .catchall {:try_start_35 .. :try_end_35} :catchall_2

    .line 1236
    goto :goto_1c

    .line 1234
    :catch_1b
    move-exception v0

    .line 1235
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_36
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_2

    .line 1238
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_25
    :goto_1c
    const/high16 v0, 0x800000

    and-int/2addr v0, v9

    if-eqz v0, :cond_26

    .line 1240
    :try_start_37
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, v7, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_1c
    .catchall {:try_start_37 .. :try_end_37} :catchall_2

    .line 1243
    goto :goto_1d

    .line 1241
    :catch_1c
    move-exception v0

    .line 1242
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_38
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2

    .line 1245
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    :goto_1d
    and-int/lit16 v0, v9, 0x4000

    if-eqz v0, :cond_27

    .line 1247
    :try_start_39
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_1d
    .catchall {:try_start_39 .. :try_end_39} :catchall_2

    .line 1250
    goto :goto_1e

    .line 1248
    :catch_1d
    move-exception v0

    .line 1249
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_3a
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2

    .line 1252
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_27
    :goto_1e
    const/high16 v0, 0x4000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_28

    .line 1254
    :try_start_3b
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v7, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_1e
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2

    .line 1257
    goto :goto_1f

    .line 1255
    :catch_1e
    move-exception v0

    .line 1256
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_3c
    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1259
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_28
    :goto_1f
    const/high16 v0, -0x80000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_2c

    .line 1260
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BarringInfo;

    move-object v3, v0

    .line 1261
    .local v3, "barringInfo":Landroid/telephony/BarringInfo;
    if-eqz v3, :cond_29

    .line 1262
    invoke-virtual {v3}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2

    goto :goto_20

    :cond_29
    const/4 v0, 0x0

    :goto_20
    move-object v4, v0

    .line 1265
    .local v4, "biNoLocation":Landroid/telephony/BarringInfo;
    :try_start_3d
    iget-object v0, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1266
    const/4 v5, 0x1

    invoke-direct {v7, v14, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1267
    move-object v5, v3

    goto :goto_21

    :cond_2a
    move-object v5, v4

    .line 1265
    :goto_21
    invoke-interface {v0, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_1f
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2

    .line 1270
    goto :goto_22

    .line 1268
    :catch_1f
    move-exception v0

    .line 1269
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_3e
    iget-object v5, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v7, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_22

    .line 1033
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v16    # "doesLimitApply":Z
    .end local v17    # "b":Landroid/os/IBinder;
    .local v3, "b":Landroid/os/IBinder;
    .local v4, "doesLimitApply":Z
    :cond_2b
    move-object/from16 v17, v3

    move/from16 v16, v4

    .line 1273
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "doesLimitApply":Z
    .end local v14    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2c
    :goto_22
    monitor-exit v2

    .line 1274
    .end local v1    # "phoneId":I
    goto :goto_24

    .line 1273
    .restart local v1    # "phoneId":I
    :catchall_0
    move-exception v0

    move-object/from16 v6, p2

    goto :goto_23

    :catchall_1
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v15, p3

    :goto_23
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_23

    .line 1276
    .end local v1    # "phoneId":I
    :cond_2d
    move-object/from16 v6, p2

    move-object/from16 v15, p3

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1278
    :goto_24
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 2977
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 2981
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    return-void
.end method

.method private notifyDataConnectionFailedForSubscriber(III)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "apnType"    # I

    .line 2034
    const-string/jumbo v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2035
    return-void

    .line 2041
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2042
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2043
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2044
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v11, Landroid/telephony/PreciseDataConnectionState;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    move v6, p3

    invoke-direct/range {v3 .. v10}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIILjava/lang/String;Landroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;)V

    .line 2043
    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2051
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2053
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2055
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 2056
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PreciseDataConnectionState;

    .line 2055
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2059
    goto :goto_1

    .line 2057
    :catch_0
    move-exception v3

    .line 2058
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2064
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2065
    monitor-exit v0

    .line 2066
    return-void

    .line 2065
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onMultiSimConfigChanged()V
    .locals 8

    .line 529
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 530
    .local v0, "oldNumPhones":I
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 531
    if-ne v0, v1, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 538
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 539
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 540
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 541
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 542
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/ServiceState;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 543
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 544
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 545
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 546
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_1

    .line 547
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    goto :goto_0

    .line 549
    :cond_1
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    new-array v1, v1, [Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 551
    :goto_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 552
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 553
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/CellIdentity;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 554
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    .line 555
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/PreciseCallState;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    .line 556
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    .line 557
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    .line 558
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    .line 559
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    .line 560
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    .line 561
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/CallQuality;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    .line 562
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    .line 563
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/CallAttributes;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    .line 564
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 565
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/emergency/EmergencyNumber;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    .line 566
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/TelephonyDisplayInfo;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    .line 569
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v1, v0, :cond_2

    .line 570
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v1}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 571
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 572
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 573
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/TelephonyRegistry;->cutListToSize(Ljava/util/List;I)V

    .line 574
    return-void

    .line 578
    :cond_2
    move v1, v0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v1, v2, :cond_3

    .line 579
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 580
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v3, v2, v1

    .line 581
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    const/4 v4, -0x1

    aput v4, v2, v1

    .line 582
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v3, v2, v1

    .line 583
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v3, v2, v1

    .line 584
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v1

    .line 585
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v5, v2, v1

    .line 586
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    const/4 v5, 0x0

    aput-object v5, v2, v1

    .line 587
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v3, v2, v1

    .line 588
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v3, v2, v1

    .line 589
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v3, v2, v1

    .line 590
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object v5, v2, v1

    .line 591
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 592
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 593
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput v4, v2, v1

    .line 594
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput v4, v2, v1

    .line 595
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput v4, v2, v1

    .line 596
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v4

    aput-object v4, v2, v1

    .line 597
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v4, Landroid/telephony/CallAttributes;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v6

    .line 598
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v7

    invoke-direct {v4, v6, v3, v7}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v4, v2, v1

    .line 599
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput v3, v2, v1

    .line 600
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createPreciseCallState()Landroid/telephony/PreciseCallState;

    move-result-object v4

    aput-object v4, v2, v1

    .line 601
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput v3, v2, v1

    .line 602
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput v3, v2, v1

    .line 603
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput v3, v2, v1

    .line 604
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v3, Landroid/telephony/BarringInfo;

    invoke-direct {v3}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 606
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object v5, v2, v1

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 608
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private opadd(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$opRecord;
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1403
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1405
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1406
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$opRecord;

    .line 1407
    .local v3, "r":Lcom/android/server/TelephonyRegistry$opRecord;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    if-ne p1, v4, :cond_0

    .line 1409
    monitor-exit v0

    return-object v3

    .line 1405
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1412
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$opRecord;
    :cond_1
    new-instance v2, Lcom/android/server/TelephonyRegistry$opRecord;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/TelephonyRegistry$opRecord;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 1413
    .local v2, "r":Lcom/android/server/TelephonyRegistry$opRecord;
    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    .line 1414
    new-instance v4, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-direct {v4, p0, p1}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    iput-object v4, v2, Lcom/android/server/TelephonyRegistry$opRecord;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$opRecord;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    nop

    .line 1424
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    nop

    .end local v1    # "N":I
    monitor-exit v0

    .line 1428
    return-object v2

    .line 1418
    .restart local v1    # "N":I
    :catch_0
    move-exception v4

    .line 1421
    .local v4, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-object v3

    .line 1426
    .end local v1    # "N":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$opRecord;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private oplisten(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/AOpPhoneStateListener;IZI)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/AOpPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z
    .param p6, "subId"    # I

    .line 896
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 897
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oplisten: E pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " events=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notifyNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " myUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 903
    sget-boolean v2, Lcom/android/server/TelephonyRegistry;->OPDBG:Z

    if-eqz v2, :cond_0

    .line 904
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 907
    :cond_0
    if-eqz p4, :cond_7

    .line 909
    const-string/jumbo v8, "listen"

    move-object v3, p0

    move v4, p4

    move v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 911
    return-void

    .line 914
    :cond_1
    invoke-direct {p0, p6}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v2

    .line 915
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 917
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/telephony/AOpPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 918
    .local v4, "b":Landroid/os/IBinder;
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->opadd(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$opRecord;

    move-result-object v5

    .line 920
    .local v5, "r":Lcom/android/server/TelephonyRegistry$opRecord;
    if-nez v5, :cond_2

    .line 921
    monitor-exit v3

    return-void

    .line 924
    :cond_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v6, v5, Lcom/android/server/TelephonyRegistry$opRecord;->context:Landroid/content/Context;

    .line 925
    iput-object p3, v5, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    .line 926
    iput-object p1, v5, Lcom/android/server/TelephonyRegistry$opRecord;->callingPackage:Ljava/lang/String;

    .line 927
    iput-object p2, v5, Lcom/android/server/TelephonyRegistry$opRecord;->callingFeatureId:Ljava/lang/String;

    .line 928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v5, Lcom/android/server/TelephonyRegistry$opRecord;->callerUid:I

    .line 929
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    iput v6, v5, Lcom/android/server/TelephonyRegistry$opRecord;->callerPid:I

    .line 932
    invoke-static {p6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 933
    const v6, 0x7fffffff

    iput v6, v5, Lcom/android/server/TelephonyRegistry$opRecord;->subId:I

    goto :goto_0

    .line 935
    :cond_3
    iput p6, v5, Lcom/android/server/TelephonyRegistry$opRecord;->subId:I

    .line 937
    :goto_0
    iput v2, v5, Lcom/android/server/TelephonyRegistry$opRecord;->phoneId:I

    .line 938
    iput p4, v5, Lcom/android/server/TelephonyRegistry$opRecord;->events:I

    .line 942
    if-eqz p5, :cond_6

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_6

    .line 943
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_4

    .line 945
    :try_start_1
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v6, v6, v2

    .line 946
    .local v6, "status":[Z
    iget-object v7, v5, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    invoke-interface {v7, v6}, Lcom/android/internal/telephony/AOpPhoneStateListener;->onImsCapabilityStatusChange([Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    .end local v6    # "status":[Z
    goto :goto_1

    .line 947
    :catch_0
    move-exception v6

    .line 948
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v7, v5, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v7}, Lcom/android/server/TelephonyRegistry;->opremove(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 951
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    and-int/lit8 v6, p4, 0x2

    if-eqz v6, :cond_5

    .line 953
    :try_start_3
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mAnomalyStatus:[I

    .line 954
    .local v6, "status":[I
    iget-object v7, v5, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    invoke-interface {v7, v6}, Lcom/android/internal/telephony/AOpPhoneStateListener;->onAnomalyStatusChange([I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 957
    .end local v6    # "status":[I
    goto :goto_2

    .line 955
    :catch_1
    move-exception v6

    .line 956
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v7, v5, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v7}, Lcom/android/server/TelephonyRegistry;->opremove(Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 959
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    and-int/lit8 v6, p4, 0x4

    if-eqz v6, :cond_6

    .line 961
    :try_start_5
    iget v6, p0, Lcom/android/server/TelephonyRegistry;->m5gStatus:I

    .line 962
    .local v6, "status":I
    iget-object v7, v5, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    invoke-interface {v7, v6}, Lcom/android/internal/telephony/AOpPhoneStateListener;->on5gStateChange(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 965
    .end local v6    # "status":I
    goto :goto_3

    .line 963
    :catch_2
    move-exception v6

    .line 964
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_6
    iget-object v7, v5, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v7}, Lcom/android/server/TelephonyRegistry;->opremove(Landroid/os/IBinder;)V

    .line 968
    .end local v4    # "b":Landroid/os/IBinder;
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$opRecord;
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_6
    :goto_3
    monitor-exit v3

    .line 969
    .end local v2    # "phoneId":I
    goto :goto_4

    .line 968
    .restart local v2    # "phoneId":I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 971
    .end local v2    # "phoneId":I
    :cond_7
    invoke-interface {p3}, Lcom/android/internal/telephony/AOpPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->opremove(Landroid/os/IBinder;)V

    .line 974
    :goto_4
    return-void
.end method

.method private opremove(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1432
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1433
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1434
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1435
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$opRecord;

    .line 1436
    .local v3, "r":Lcom/android/server/TelephonyRegistry$opRecord;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    if-ne v4, p1, :cond_1

    .line 1442
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$opRecord;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1444
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$opRecord;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1448
    goto :goto_1

    .line 1445
    :catch_0
    move-exception v4

    .line 1451
    :cond_0
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1452
    monitor-exit v0

    return-void

    .line 1434
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$opRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1455
    .end local v1    # "recordCount":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 1456
    return-void

    .line 1455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static pii(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3315
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, "***"

    :goto_0
    return-object v0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1364
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1365
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1366
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1367
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1368
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v4, p1, :cond_2

    .line 1374
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1376
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1380
    goto :goto_1

    .line 1377
    :catch_0
    move-exception v4

    .line 1383
    :cond_0
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1388
    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1390
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->updateReportSignalStrengthDecision(I)V

    .line 1392
    :cond_1
    monitor-exit v0

    return-void

    .line 1366
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1395
    .end local v1    # "recordCount":I
    .end local v2    # "i":I
    :cond_3
    monitor-exit v0

    .line 1396
    return-void

    .line 1395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateReportSignalStrengthDecision(I)V
    .locals 5
    .param p1, "subscriptionId"    # I

    .line 1281
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 1283
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1284
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1287
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1289
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v4, 0x1

    .line 1290
    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->setAlwaysReportSignalStrength(Z)V

    .line 1291
    monitor-exit v0

    return-void

    .line 1293
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_0
    goto :goto_0

    .line 1296
    :cond_1
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 1297
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->setAlwaysReportSignalStrength(Z)V

    .line 1298
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    monitor-exit v0

    .line 1299
    return-void

    .line 1298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .line 2953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2954
    .local v0, "callingIdentity":J
    const/4 v2, 0x0

    .line 2956
    .local v2, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 2957
    .local v3, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2958
    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 2965
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2966
    nop

    .line 2967
    return v2

    .line 2965
    .end local v3    # "foregroundUser":I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2966
    throw v3
.end method

.method private validatePhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 2971
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2973
    .local v0, "valid":Z
    :goto_0
    return v0
.end method


# virtual methods
.method public addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 769
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 770
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 779
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 780
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v3

    .line 782
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v3, :cond_0

    .line 783
    monitor-exit v1

    return-void

    .line 786
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 787
    iput-object p3, v3, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 788
    iput-object p1, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 789
    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 790
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 791
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 792
    iput v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 797
    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 800
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    :goto_0
    goto :goto_1

    .line 802
    :catch_0
    move-exception v4

    .line 804
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 807
    :cond_1
    const-string/jumbo v4, "listen ooscl: hasNotifyOpptSubInfoChangedOccurred==false no callback"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 809
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_1
    monitor-exit v1

    .line 810
    return-void

    .line 809
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 715
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 716
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 725
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 726
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;IIZ)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v3

    .line 728
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v3, :cond_0

    .line 729
    monitor-exit v1

    return-void

    .line 732
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 733
    iput-object p3, v3, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 734
    iput-object p1, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 735
    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    .line 736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 737
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 738
    iput v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 743
    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 746
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    :goto_0
    goto :goto_1

    .line 748
    :catch_0
    move-exception v4

    .line 750
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 753
    :cond_1
    const-string/jumbo v4, "listen oscl: mHasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 755
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_1
    monitor-exit v1

    .line 756
    return-void

    .line 755
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2589
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2591
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "TelephonyRegistry"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2593
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2594
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2595
    .local v2, "recordCount":I
    const-string/jumbo v3, "last known state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2597
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone Id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRingingCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mForegroundCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBackgroundCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreciseCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVoiceActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserMobileDataState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellIdentity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mImsCallDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSrvccState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallPreciseDisconnectCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallQuality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallAttributes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPreciseDataConnectionStates="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOutgoingCallEmergencyNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOutgoingSmsEmergencyNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBarringInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2597
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2630
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCarrierNetworkChangeState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPhoneCapability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActiveDataSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRadioPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmergencyNumberList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDefaultPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDefaultSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2641
    const-string/jumbo v3, "local logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2643
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2644
    const-string/jumbo v3, "listen logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2645
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mListenLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registrations: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2649
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 2650
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2651
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_1

    .line 2652
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2653
    nop

    .end local v2    # "recordCount":I
    monitor-exit v1

    .line 2654
    return-void

    .line 2653
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method idMatch(III)Z
    .locals 3
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .line 3004
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_1

    .line 3006
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne v2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 3008
    :cond_1
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_3

    .line 3009
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    .line 3011
    :cond_3
    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0
.end method

.method public synthetic lambda$checkCoarseLocationAccess$2$TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3045
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3046
    invoke-static {v0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 3047
    .local v0, "locationResult":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$checkFineLocationAccess$1$TelephonyRegistry(Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "query"    # Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3027
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 3028
    invoke-static {v0, p1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    .line 3029
    .local v0, "locationResult":Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$notifyCarrierNetworkChange$0$TelephonyRegistry(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 1703
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 869
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenWithFeature(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 870
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p5, "events"    # I
    .param p6, "notifyNow"    # Z

    .line 882
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 883
    return-void
.end method

.method public listenWithFeature(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z

    .line 875
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 877
    return-void
.end method

.method public notify5gStatusChange(I)V
    .locals 6
    .param p1, "status"    # I

    .line 3442
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->m5gStatus:I

    .line 3443
    const-string/jumbo v0, "notify5gStatusChange()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3448
    return-void

    .line 3451
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify5gStatusChange: mAnomaly Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3453
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3454
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$opRecord;

    .line 3455
    .local v2, "r":Lcom/android/server/TelephonyRegistry$opRecord;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$opRecord;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 3457
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify5gStatusChange: callback r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3458
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/AOpPhoneStateListener;->on5gStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3461
    goto :goto_1

    .line 3459
    :catch_0
    move-exception v3

    .line 3460
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOpRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3463
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$opRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 3465
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleOpRemoveListLocked()V

    .line 3466
    monitor-exit v0

    .line 3467
    return-void

    .line 3466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyActiveDataSubIdChanged(I)V
    .locals 6
    .param p1, "activeDataSubId"    # I

    .line 2338
    const-string/jumbo v0, "notifyActiveDataSubIdChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2339
    return-void

    .line 2346
    :cond_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataSubId:I

    .line 2347
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2349
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2352
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onActiveDataSubIdChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2355
    goto :goto_1

    .line 2353
    :catch_0
    move-exception v3

    .line 2354
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2357
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2358
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2359
    monitor-exit v0

    .line 2360
    return-void

    .line 2359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyAnomalyStatusChange([I)V
    .locals 6
    .param p1, "status"    # [I

    .line 3411
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mAnomalyStatus:[I

    .line 3412
    const-string/jumbo v0, "notifyAnomalyStatusChange()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3417
    return-void

    .line 3420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAnomalyStatusChange: mAnomaly Status[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Status[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3422
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3423
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$opRecord;

    .line 3424
    .local v2, "r":Lcom/android/server/TelephonyRegistry$opRecord;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$opRecord;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 3426
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAnomalyStatusChange: callback r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3427
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/AOpPhoneStateListener;->onAnomalyStatusChange([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3430
    goto :goto_1

    .line 3428
    :catch_0
    move-exception v3

    .line 3429
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOpRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3432
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$opRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 3434
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleOpRemoveListLocked()V

    .line 3435
    monitor-exit v0

    .line 3436
    return-void

    .line 3435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 2549
    const-string/jumbo v0, "notifyBarringInfo()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2550
    return-void

    .line 2552
    :cond_0
    if-nez p3, :cond_1

    .line 2553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received null BarringInfo for subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2554
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    new-instance v1, Landroid/telephony/BarringInfo;

    invoke-direct {v1}, Landroid/telephony/BarringInfo;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2555
    return-void

    .line 2558
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2559
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2560
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBarringInfo:Ljava/util/List;

    invoke-interface {v1, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2562
    invoke-virtual {p3}, Landroid/telephony/BarringInfo;->createLocationInfoSanitizedCopy()Landroid/telephony/BarringInfo;

    move-result-object v1

    .line 2564
    .local v1, "biNoLocation":Landroid/telephony/BarringInfo;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2565
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2567
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 2573
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2574
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2575
    move-object v5, p3

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 2573
    :goto_1
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2578
    goto :goto_2

    .line 2576
    :catch_0
    move-exception v4

    .line 2577
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    goto :goto_0

    .line 2582
    .end local v1    # "biNoLocation":Landroid/telephony/BarringInfo;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2583
    monitor-exit v0

    .line 2584
    return-void

    .line 2583
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .line 1869
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 1870
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z

    .line 1873
    const-string/jumbo v0, "notifyCallForwardingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1874
    return-void

    .line 1880
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 1881
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1882
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1883
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v2, v0

    .line 1884
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1885
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1887
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1889
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1892
    goto :goto_1

    .line 1890
    :catch_0
    move-exception v4

    .line 1891
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1896
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1897
    monitor-exit v1

    .line 1898
    return-void

    .line 1897
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    .locals 6
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .param p4, "callNetworkType"    # I

    .line 2478
    const-string/jumbo v0, "notifyCallQualityChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2479
    return-void

    .line 2482
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2483
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2485
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aput-object p1, v1, p2

    .line 2486
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aput p4, v1, p2

    .line 2487
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/CallAttributes;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3, p4, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v2, v1, p2

    .line 2490
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2491
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2493
    invoke-virtual {p0, v3, p3, p2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2495
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v4, v4, p2

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2498
    goto :goto_1

    .line 2496
    :catch_0
    move-exception v3

    .line 2497
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2503
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2504
    monitor-exit v0

    .line 2505
    return-void

    .line 2504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyCallState(IIILjava/lang/String;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I
    .param p4, "incomingNumber"    # Ljava/lang/String;

    .line 1493
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    return-void

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1501
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1502
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p3, v1, p1

    .line 1503
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p4, v1, p1

    .line 1504
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1505
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v3, p2, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    .line 1509
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v3

    .line 1510
    .local v3, "incomingNumberOrEmpty":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1513
    .end local v3    # "incomingNumberOrEmpty":Ljava/lang/String;
    goto :goto_1

    .line 1511
    :catch_0
    move-exception v3

    .line 1512
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1517
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1518
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1519
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 1520
    return-void

    .line 1518
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyCallStateForAllSubs(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 1460
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1461
    return-void

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1470
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 1475
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 1476
    .local v3, "phoneNumberOrEmpty":Ljava/lang/String;
    :goto_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1479
    .end local v3    # "phoneNumberOrEmpty":Ljava/lang/String;
    goto :goto_2

    .line 1477
    :catch_0
    move-exception v3

    .line 1478
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_0

    .line 1482
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1483
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1487
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 1490
    return-void

    .line 1483
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyCarrierNetworkChange(Z)V
    .locals 11
    .param p1, "active"    # Z

    .line 1701
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1702
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v0

    .line 1701
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$TelephonyRegistry$1bce8MzlZGgWfCoSiX5udUvFDQ0;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$TelephonyRegistry$1bce8MzlZGgWfCoSiX5udUvFDQ0;-><init>(Lcom/android/server/TelephonyRegistry;)V

    .line 1703
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1704
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1705
    .local v0, "subIds":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1711
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1712
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 1713
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 1714
    .local v4, "subId":I
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v5

    .line 1719
    .local v5, "phoneId":I
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    .line 1720
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v7, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1722
    invoke-virtual {p0, v8, v4, v5}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 1724
    :try_start_1
    iget-object v8, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v8, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1727
    goto :goto_2

    .line 1725
    :catch_0
    move-exception v8

    .line 1726
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_2
    goto :goto_1

    .line 1713
    .end local v4    # "subId":I
    .end local v5    # "phoneId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1731
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1732
    monitor-exit v1

    .line 1733
    return-void

    .line 1732
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1706
    :cond_3
    const-string/jumbo v1, "notifyCarrierNetworkChange without carrier privilege"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 1708
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "notifyCarrierNetworkChange without carrier privilege"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1736
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 1737
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .locals 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1740
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string/jumbo v0, "notifyCellInfoForSubscriber()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    return-void

    .line 1747
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 1748
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1749
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1750
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1752
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1753
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 1754
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1d

    .line 1755
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1761
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1764
    goto :goto_1

    .line 1762
    :catch_0
    move-exception v4

    .line 1763
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1768
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1769
    monitor-exit v1

    .line 1770
    return-void

    .line 1769
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyCellLocation(Landroid/telephony/CellIdentity;)V
    .locals 1
    .param p1, "cellLocation"    # Landroid/telephony/CellIdentity;

    .line 2070
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V

    .line 2071
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/telephony/CellIdentity;

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2077
    const-string/jumbo v0, "notifyCellLocation()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    return-void

    .line 2084
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2085
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2086
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2087
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    aput-object p2, v2, v0

    .line 2088
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2089
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2090
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 2091
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1d

    .line 2092
    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 2098
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2101
    goto :goto_1

    .line 2099
    :catch_0
    move-exception v4

    .line 2100
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2105
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2106
    monitor-exit v1

    .line 2107
    return-void

    .line 2106
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyDataActivity(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1901
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 1902
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .line 1905
    const-string/jumbo v0, "notifyDataActivity()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1906
    return-void

    .line 1908
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 1909
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1910
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1911
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v2, v0

    .line 1912
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1914
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1915
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1917
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1920
    goto :goto_1

    .line 1918
    :catch_0
    move-exception v4

    .line 1919
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1924
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1925
    monitor-exit v1

    .line 1926
    return-void

    .line 1925
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .line 2030
    const-string v0, "This function should not be invoked"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->loge(Ljava/lang/String;)V

    .line 2031
    return-void
.end method

.method public notifyDataConnectionForSubscriber(IIILandroid/telephony/PreciseDataConnectionState;)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "apnType"    # I
    .param p4, "preciseState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1939
    const-string/jumbo v0, "notifyDataConnection()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1940
    return-void

    .line 1943
    :cond_0
    const-string v0, ""

    .line 1944
    .local v0, "apn":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1945
    .local v1, "state":I
    const/4 v2, 0x0

    .line 1946
    .local v2, "networkType":I
    const/4 v3, 0x0

    .line 1948
    .local v3, "linkProps":Landroid/net/LinkProperties;
    if-eqz p4, :cond_1

    .line 1949
    invoke-virtual {p4}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionApn()Ljava/lang/String;

    move-result-object v0

    .line 1950
    invoke-virtual {p4}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v1

    .line 1951
    invoke-virtual {p4}, Landroid/telephony/PreciseDataConnectionState;->getNetworkType()I

    move-result v2

    .line 1952
    invoke-virtual {p4}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 1961
    :cond_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1962
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1964
    and-int/lit8 v5, p3, 0x11

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, p1

    if-ne v5, v1, :cond_2

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v5, v5, p1

    if-eq v5, v2, :cond_5

    .line 1967
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDataConnectionStateChanged("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->dataStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1971
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1972
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v6, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1973
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    .line 1974
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v7, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1976
    invoke-virtual {p0, v8, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_3

    .line 1981
    :try_start_1
    iget-object v8, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v8, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1984
    goto :goto_1

    .line 1982
    :catch_0
    move-exception v8

    .line 1983
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    goto :goto_0

    .line 1987
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1989
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v1, v6, p1

    .line 1990
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput v2, v6, p1

    .line 1993
    .end local v5    # "str":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 1995
    .local v5, "needsNotify":Z
    const/4 v6, 0x1

    if-nez p4, :cond_7

    .line 1997
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    move v5, v6

    goto :goto_3

    .line 2000
    :cond_7
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 2001
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/PreciseDataConnectionState;

    .line 2002
    .local v7, "oldPreciseState":Landroid/telephony/PreciseDataConnectionState;
    invoke-virtual {p4, v7}, Landroid/telephony/PreciseDataConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v6, v8

    move v5, v6

    .line 2005
    .end local v7    # "oldPreciseState":Landroid/telephony/PreciseDataConnectionState;
    :goto_3
    if-eqz v5, :cond_9

    .line 2006
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    .line 2007
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget v8, v7, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2009
    invoke-virtual {p0, v8, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_8

    .line 2011
    :try_start_3
    iget-object v8, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v8, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2014
    goto :goto_5

    .line 2012
    :catch_1
    move-exception v8

    .line 2013
    .restart local v8    # "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2016
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_8
    :goto_5
    goto :goto_4

    .line 2019
    .end local v5    # "needsNotify":Z
    :cond_9
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2020
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2022
    invoke-direct {p0, v1, v0, p3, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(ILjava/lang/String;II)V

    .line 2023
    return-void

    .line 2020
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5
.end method

.method public notifyDisconnectCause(IIII)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "disconnectCause"    # I
    .param p4, "preciseDisconnectCause"    # I

    .line 2167
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2168
    return-void

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2171
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2172
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aput p3, v1, p1

    .line 2173
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aput p4, v1, p1

    .line 2174
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2175
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2176
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2178
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallDisconnectCause:[I

    aget v4, v4, p1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallPreciseDisconnectCause:[I

    aget v5, v5, p1

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallDisconnectCauseChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2182
    goto :goto_1

    .line 2180
    :catch_0
    move-exception v3

    .line 2181
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2184
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2186
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2187
    monitor-exit v0

    .line 2188
    return-void

    .line 2187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 1842
    const-string/jumbo v0, "notifyDisplayInfoChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    return-void

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1850
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1851
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mTelephonyDisplayInfos:[Landroid/telephony/TelephonyDisplayInfo;

    aput-object p3, v1, p1

    .line 1852
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1853
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1855
    invoke-direct {p0, v3, p2}, Lcom/android/server/TelephonyRegistry;->idMatchWithoutDefaultPhoneCheck(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1857
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1860
    goto :goto_1

    .line 1858
    :catch_0
    move-exception v3

    .line 1859
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1864
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1865
    monitor-exit v0

    .line 1866
    return-void

    .line 1865
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyEmergencyNumberList(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 2394
    const-string/jumbo v0, "notifyEmergencyNumberList()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2395
    return-void

    .line 2398
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2399
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2400
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2402
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    .line 2404
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2405
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2407
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 2409
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mEmergencyNumberList:Ljava/util/Map;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onEmergencyNumberListChanged(Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2416
    goto :goto_1

    .line 2414
    :catch_0
    move-exception v4

    .line 2415
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2421
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2422
    monitor-exit v0

    .line 2423
    return-void

    .line 2422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyImsCapabilityStatusChange([Z)V
    .locals 7
    .param p1, "status"    # [Z

    .line 3324
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3325
    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 3327
    const-string/jumbo v0, "notifyImsCapabilityStatusChange()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3332
    return-void

    .line 3335
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 3336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyImsCapabilityStatusChange: mImsCapabilityStatus[0]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3339
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$opRecord;

    .line 3341
    .local v3, "r":Lcom/android/server/TelephonyRegistry$opRecord;
    invoke-virtual {v3, v2}, Lcom/android/server/TelephonyRegistry$opRecord;->matchPhoneStateListenerEvent(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 3343
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyImsCapabilityStatusChange: callback r = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3344
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/AOpPhoneStateListener;->onImsCapabilityStatusChange([Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3347
    goto :goto_2

    .line 3345
    :catch_0
    move-exception v4

    .line 3346
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mOpRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3349
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$opRecord;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_1

    .line 3351
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleOpRemoveListLocked()V

    .line 3352
    monitor-exit v0

    .line 3353
    return-void

    .line 3352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyImsCapabilityStatusChangeForPhoneId(II[Z)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "status"    # [Z

    .line 3359
    const-string/jumbo v0, "notifyImsCapabilityStatusChangeForPhoneId()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3364
    return-void

    .line 3367
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyImsCapabilityStatusChangeForPhoneId: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3369
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3370
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3372
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aput-object p3, v1, p1

    .line 3374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyImsCapabilityStatusChangeForPhoneId: mImsCapabilityStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v3, v3, p1

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3378
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOpRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$opRecord;

    .line 3379
    .local v2, "r":Lcom/android/server/TelephonyRegistry$opRecord;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$opRecord;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/TelephonyRegistry$opRecord;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 3381
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyImsCapabilityStatusChangeForPhoneId: callback r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3382
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$opRecord;->callback:Lcom/android/internal/telephony/AOpPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/AOpPhoneStateListener;->onImsCapabilityStatusChange([Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3385
    goto :goto_2

    .line 3383
    :catch_0
    move-exception v3

    .line 3384
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mOpRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$opRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3387
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$opRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_1

    :cond_3
    goto :goto_3

    .line 3391
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyImsCapabilityStatusChangeForPhoneId: INVALID phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 3394
    :goto_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleOpRemoveListLocked()V

    .line 3395
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3396
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastImsCapabilityStatusChangeForPhoneId([ZII)V

    .line 3397
    return-void

    .line 3395
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2191
    const-string/jumbo v0, "notifyImsCallDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2192
    return-void

    .line 2194
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2195
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2196
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2197
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2198
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2199
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2201
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 2207
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsReasonInfo:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2210
    goto :goto_1

    .line 2208
    :catch_0
    move-exception v4

    .line 2209
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2212
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2214
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2215
    monitor-exit v1

    .line 2216
    return-void

    .line 2215
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z

    .line 1774
    const-string/jumbo v0, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    return-void

    .line 1779
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyMessageWaitingChangedForSubscriberPhoneID: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mwi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1782
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1783
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v1, p1

    .line 1784
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1785
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1787
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1791
    :try_start_1
    const-string/jumbo v3, "notifyMessageWaitingChangedForSubscriberPhoneID: callback"

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1793
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1796
    goto :goto_1

    .line 1794
    :catch_0
    move-exception v3

    .line 1795
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1800
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1801
    monitor-exit v0

    .line 1802
    return-void

    .line 1801
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyOemHookRawEventForSubscriber(II[B)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "rawData"    # [B

    .line 2286
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2287
    return-void

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2291
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2292
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2296
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const v3, 0x8000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2298
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2300
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2303
    goto :goto_1

    .line 2301
    :catch_0
    move-exception v3

    .line 2302
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2305
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2307
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2308
    monitor-exit v0

    .line 2309
    return-void

    .line 2308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyOpportunisticSubscriptionInfoChanged()V
    .locals 6

    .line 841
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 842
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_0

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOpptSubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 844
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 846
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifyOpportunisticSubscriptionInfoChangedOccurred:Z

    .line 847
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 848
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 849
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnOpportunisticSubscriptionsChangedListener()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 852
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 853
    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    goto :goto_1

    .line 855
    :catch_0
    move-exception v3

    .line 857
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 861
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 862
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 2428
    const-string/jumbo v0, "notifyOutgoingEmergencyCall()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2429
    return-void

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2432
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2433
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingCallEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aput-object p3, v1, p1

    .line 2434
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2435
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2437
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2439
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2442
    goto :goto_1

    .line 2440
    :catch_0
    move-exception v3

    .line 2441
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2444
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2446
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2447
    monitor-exit v0

    .line 2448
    return-void

    .line 2447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 2453
    const-string/jumbo v0, "notifyOutgoingEmergencySms()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2454
    return-void

    .line 2456
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2457
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2458
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mOutgoingSmsEmergencyNumber:[Landroid/telephony/emergency/EmergencyNumber;

    aput-object p3, v1, p1

    .line 2459
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2460
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2462
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2464
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2467
    goto :goto_1

    .line 2465
    :catch_0
    move-exception v3

    .line 2466
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2471
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2472
    monitor-exit v0

    .line 2473
    return-void

    .line 2472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 6
    .param p1, "capability"    # Landroid/telephony/PhoneCapability;

    .line 2312
    const-string/jumbo v0, "notifyPhoneCapabilityChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2313
    return-void

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2321
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mPhoneCapability:Landroid/telephony/PhoneCapability;

    .line 2323
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2324
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2327
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2330
    goto :goto_1

    .line 2328
    :catch_0
    move-exception v3

    .line 2329
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2333
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2334
    monitor-exit v0

    .line 2335
    return-void

    .line 2334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyPreciseCallState(IIIII)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "ringingCallState"    # I
    .param p4, "foregroundCallState"    # I
    .param p5, "backgroundCallState"    # I

    .line 2111
    const-string/jumbo v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2112
    return-void

    .line 2114
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2115
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2116
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:[I

    aput p3, v1, p1

    .line 2117
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:[I

    aput p4, v1, p1

    .line 2118
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:[I

    aput p5, v1, p1

    .line 2119
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    new-instance v8, Landroid/telephony/PreciseCallState;

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, v8

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    aput-object v8, v1, p1

    .line 2124
    const/4 v1, 0x1

    .line 2125
    .local v1, "notifyCallAttributes":Z
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    if-nez v2, :cond_1

    .line 2126
    const-string/jumbo v2, "notifyPreciseCallState: mCallQuality is null, skipping call attributes"

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2128
    const/4 v1, 0x0

    goto :goto_0

    .line 2132
    :cond_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 2134
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 2135
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    invoke-static {}, Lcom/android/server/TelephonyRegistry;->createCallQuality()Landroid/telephony/CallQuality;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2137
    :cond_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    new-instance v3, Landroid/telephony/CallAttributes;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v4, v4, p1

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallNetworkType:[I

    aget v5, v5, p1

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallQuality:[Landroid/telephony/CallQuality;

    aget-object v6, v6, p1

    invoke-direct {v3, v4, v5, v6}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    aput-object v3, v2, p1

    .line 2141
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2142
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2143
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 2145
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:[Landroid/telephony/PreciseCallState;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2148
    goto :goto_2

    .line 2146
    :catch_0
    move-exception v4

    .line 2147
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2152
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    .line 2154
    :try_start_3
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallAttributes:[Landroid/telephony/CallAttributes;

    aget-object v5, v5, p1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2157
    goto :goto_3

    .line 2155
    :catch_1
    move-exception v4

    .line 2156
    .restart local v4    # "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    goto :goto_1

    .line 2161
    .end local v1    # "notifyCallAttributes":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2162
    monitor-exit v0

    .line 2163
    return-void

    .line 2162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public notifyPreciseDataConnectionFailed(IIILjava/lang/String;I)V
    .locals 14
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "apnType"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "failCause"    # I

    .line 2221
    move-object v1, p0

    move v2, p1

    const-string/jumbo v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2222
    return-void

    .line 2226
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(III)V

    .line 2228
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2229
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2230
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2231
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v13, Landroid/telephony/PreciseDataConnectionState;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v13

    move/from16 v8, p3

    move/from16 v11, p5

    invoke-direct/range {v5 .. v12}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIILjava/lang/String;Landroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;)V

    .line 2230
    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v5, v0

    .line 2238
    .local v5, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    invoke-virtual {v5, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v5, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    move/from16 v6, p2

    :try_start_1
    invoke-virtual {p0, v0, v6, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 2242
    :try_start_2
    iget-object v0, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v7, v1, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionStates:Ljava/util/List;

    .line 2243
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/PreciseDataConnectionState;

    .line 2242
    invoke-interface {v0, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2246
    goto :goto_1

    .line 2244
    :catch_0
    move-exception v0

    .line 2245
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    iget-object v7, v1, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2238
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    move/from16 v6, p2

    .line 2248
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    :goto_1
    goto :goto_0

    .line 2237
    :cond_3
    move/from16 v6, p2

    goto :goto_2

    .line 2229
    :cond_4
    move/from16 v6, p2

    .line 2250
    :goto_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2251
    monitor-exit v3

    .line 2252
    return-void

    .line 2251
    :catchall_0
    move-exception v0

    move/from16 v6, p2

    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public notifyRadioPowerStateChanged(III)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I

    .line 2363
    const-string/jumbo v0, "notifyRadioPowerStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2364
    return-void

    .line 2371
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2372
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2373
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mRadioPowerState:I

    .line 2375
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2376
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2378
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2380
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onRadioPowerStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2383
    goto :goto_1

    .line 2381
    :catch_0
    move-exception v3

    .line 2382
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2385
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2388
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2389
    monitor-exit v0

    .line 2390
    return-void

    .line 2389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 14
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p4, "chosenPlmn"    # Ljava/lang/String;
    .param p5, "domain"    # I
    .param p6, "causeCode"    # I
    .param p7, "additionalCauseCode"    # I

    .line 2510
    move-object v1, p0

    const-string/jumbo v0, "notifyRegistrationFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2511
    return-void

    .line 2517
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/CellIdentity;->sanitizeLocationInfo()Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 2519
    .local v2, "noLocationCi":Landroid/telephony/CellIdentity;
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2520
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2521
    iget-object v0, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v5, v0

    .line 2522
    .local v5, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v5, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v5, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2524
    move v6, p1

    move/from16 v7, p2

    :try_start_1
    invoke-virtual {p0, v0, v7, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 2526
    :try_start_2
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 2527
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2528
    move-object/from16 v9, p3

    goto :goto_1

    :cond_1
    move-object v9, v2

    .line 2526
    :goto_1
    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2533
    goto :goto_2

    .line 2531
    :catch_0
    move-exception v0

    .line 2532
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    iget-object v8, v1, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2522
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    move v6, p1

    move/from16 v7, p2

    .line 2535
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    :goto_2
    goto :goto_0

    .line 2521
    :cond_4
    move v6, p1

    move/from16 v7, p2

    goto :goto_3

    .line 2520
    :cond_5
    move v6, p1

    move/from16 v7, p2

    .line 2537
    :goto_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2538
    monitor-exit v3

    .line 2539
    return-void

    .line 2538
    :catchall_0
    move-exception v0

    move v6, p1

    move/from16 v7, p2

    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .line 1523
    const-string/jumbo v0, "notifyServiceState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1524
    return-void

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1528
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1533
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1539
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1540
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v2, p1

    .line 1542
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1547
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1548
    invoke-virtual {p0, v5, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 1552
    const/16 v5, 0x1d

    :try_start_1
    invoke-direct {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkFineLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1553
    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .local v4, "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_1

    .line 1554
    .end local v4    # "stateToSend":Landroid/telephony/ServiceState;
    :cond_1
    invoke-direct {p0, v3, v5}, Lcom/android/server/TelephonyRegistry;->checkCoarseLocationAccess(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1555
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v4

    .restart local v4    # "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_1

    .line 1557
    .end local v4    # "stateToSend":Landroid/telephony/ServiceState;
    :cond_2
    invoke-virtual {p3, v4}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 1564
    .restart local v4    # "stateToSend":Landroid/telephony/ServiceState;
    :goto_1
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1567
    .end local v4    # "stateToSend":Landroid/telephony/ServiceState;
    goto :goto_2

    .line 1565
    :catch_0
    move-exception v4

    .line 1566
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    goto :goto_0

    :cond_4
    goto :goto_3

    .line 1571
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1574
    :goto_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1575
    .end local v1    # "str":Ljava/lang/String;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1576
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    .line 1577
    return-void

    .line 1575
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1642
    const-string/jumbo v0, "notifySignalStrength()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1643
    return-void

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1651
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1653
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p3, v1, p1

    .line 1654
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1659
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x200

    .line 1660
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1662
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 1669
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1672
    goto :goto_1

    .line 1670
    :catch_0
    move-exception v3

    .line 1671
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1675
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 1677
    :try_start_3
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 1678
    .local v3, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v3, v4, :cond_3

    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    move v4, v3

    .line 1684
    .local v4, "ss":I
    :goto_2
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1687
    .end local v3    # "gsmSignalStrength":I
    .end local v4    # "ss":I
    goto :goto_3

    .line 1685
    :catch_1
    move-exception v3

    .line 1686
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    goto :goto_0

    :cond_5
    goto :goto_4

    .line 1691
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySignalStrengthForPhoneId: invalid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1693
    :goto_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1694
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1695
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    .line 1696
    return-void

    .line 1694
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public notifySimActivationStateChangedForPhoneId(IIII)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "activationType"    # I
    .param p4, "activationState"    # I

    .line 1581
    const-string/jumbo v0, "notifySimActivationState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    return-void

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1589
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1590
    const/4 v1, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_1

    .line 1598
    monitor-exit v0

    return-void

    .line 1595
    :cond_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput p4, v2, p1

    .line 1596
    goto :goto_0

    .line 1592
    :cond_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput p4, v2, p1

    .line 1593
    nop

    .line 1600
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez p3, :cond_3

    const/high16 v4, 0x20000

    .line 1608
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1610
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1616
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    goto :goto_2

    .line 1629
    :catch_0
    move-exception v4

    goto :goto_3

    .line 1618
    :cond_3
    :goto_2
    if-ne p3, v1, :cond_4

    const/high16 v4, 0x40000

    .line 1619
    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1621
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1627
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1630
    .local v4, "ex":Landroid/os/RemoteException;
    :goto_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1631
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_4
    nop

    .line 1632
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_5
    goto :goto_1

    :cond_5
    goto :goto_6

    .line 1634
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySimActivationStateForPhoneId: INVALID phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1636
    :goto_6
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1637
    monitor-exit v0

    .line 1638
    return-void

    .line 1637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifySrvccStateChanged(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .line 2256
    const-string/jumbo v0, "notifySrvccStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2257
    return-void

    .line 2262
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->getPhoneIdFromSubId(I)I

    move-result v0

    .line 2263
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2264
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2265
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mSrvccState:[I

    aput p2, v2, v0

    .line 2266
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 2267
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 2269
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 2274
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSrvccStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2277
    goto :goto_1

    .line 2275
    :catch_0
    move-exception v4

    .line 2276
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2279
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2281
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2282
    monitor-exit v1

    .line 2283
    return-void

    .line 2282
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 6

    .line 815
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 816
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_0

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 818
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 820
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mHasNotifySubscriptionInfoChangedOccurred:Z

    .line 821
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 822
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 823
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 826
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    goto :goto_1

    .line 828
    :catch_0
    move-exception v3

    .line 830
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 834
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 835
    monitor-exit v0

    .line 836
    return-void

    .line 835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Z

    .line 1805
    const-string/jumbo v0, "notifyUserMobileDataStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    return-void

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1813
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1814
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean p3, v1, p1

    .line 1815
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1816
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1818
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1820
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1823
    goto :goto_1

    .line 1821
    :catch_0
    move-exception v3

    .line 1822
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1827
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1828
    monitor-exit v0

    .line 1829
    return-void

    .line 1828
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public oplistenForSubscriber(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/AOpPhoneStateListener;IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/AOpPhoneStateListener;
    .param p5, "events"    # I
    .param p6, "notifyNow"    # Z

    .line 891
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/TelephonyRegistry;->oplisten(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/AOpPhoneStateListener;IZI)V

    .line 892
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 1
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 762
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 763
    return-void
.end method

.method public systemRunning()V
    .locals 3

    .line 703
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 704
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 710
    return-void
.end method
