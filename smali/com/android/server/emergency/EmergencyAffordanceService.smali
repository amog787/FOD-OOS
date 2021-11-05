.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;,
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EMERGENCY_AFFORDANCE_OVERRIDE_ISO:Ljava/lang/String; = "emergency_affordance_override_iso"

.field private static final INITIALIZE_STATE:I = 0x1

.field private static final NETWORK_COUNTRY_CHANGED:I = 0x2

.field private static final SERVICE_NAME:Ljava/lang/String; = "emergency_affordance"

.field private static final SUBSCRIPTION_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"

.field private static final UPDATE_AIRPLANE_MODE_STATUS:I = 0x4

.field private static sInstance:Lcom/android/server/emergency/EmergencyAffordanceService;


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mAnyNetworkNeedsEmergencyAffordance:Z

.field private mAnySimNeedsEmergencyAffordance:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyAffordanceNeeded:Z

.field private final mEmergencyCallCountryIsos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 114
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "isos":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    .line 118
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 119
    .local v4, "iso":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v4    # "iso":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 123
    const-string v3, "emergency_affordance_override_iso"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "overrideIso":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v1    # "overrideIso":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "emergency_affordance_needed"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saved mEmergencyAffordanceNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyAffordanceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sput-object p0, Lcom/android/server/emergency/EmergencyAffordanceService;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 141
    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->make(Landroid/content/Context;)V

    .line 142
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->addEmergencyCallCountryCodeForTest()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 50
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 50
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/emergency/EmergencyAffordanceService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleNetworkCountryChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 50
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 50
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateAirplaneModeStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 50
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/emergency/EmergencyAffordanceService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 50
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/emergency/EmergencyAffordanceService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/emergency/EmergencyAffordanceService;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method private dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 330
    const-string v0, "EmergencyAffordanceService (dumpsys emergency_affordance) state:\n"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEmergencyAffordanceNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAnySimNeedsEmergencyAffordance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAnyNetworkNeedsEmergencyAffordance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEmergencyCallCountryIsos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public static getInstance()Lcom/android/server/emergency/EmergencyAffordanceService;
    .locals 2

    .line 353
    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceService;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceService;

    if-nez v0, :cond_0

    .line 354
    const-string v0, "EmergencyAffordanceService"

    const-string v1, "getInstance: called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    sget-object v0, Lcom/android/server/emergency/EmergencyAffordanceService;->sInstance:Lcom/android/server/emergency/EmergencyAffordanceService;

    return-object v0
.end method

.method private handleInitializeState()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateAirplaneModeStatus()V

    .line 201
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()V

    .line 202
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateNetworkCountry()V

    .line 205
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->onStartPollingCellInfo()V

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 210
    return-void
.end method

.method private handleNetworkCountryChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "EmergencyAffordanceService"

    const-string v1, "Ignore empty countryIso report when APM is on."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateNetworkCountry()V

    .line 274
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 275
    return-void
.end method

.method private handleThirdPartyBootPhase()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 215
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    .line 216
    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 218
    return-void

    .line 221
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmergencyAffordanceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v1, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    .line 225
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 226
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 228
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

.method private handleUpdateAirplaneModeStatus()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    .line 239
    return-void
.end method

.method private handleUpdateSimSubscriptionInfo()V
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 243
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    const/4 v1, 0x0

    .line 250
    .local v1, "needsAffordance":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 251
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/emergency/EmergencyAffordanceService;->isoRequiresEmergencyAffordance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    const/4 v1, 0x1

    .line 253
    goto :goto_1

    .line 255
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    goto :goto_0

    .line 257
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    .line 258
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 259
    return-void
.end method

.method private isoRequiresEmergencyAffordance(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateEmergencyAffordanceNeeded()V
    .locals 4

    .line 311
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 313
    .local v0, "lastAffordanceNeeded":Z
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 316
    if-eq v0, v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 319
    iget-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 317
    const-string v3, "emergency_affordance_needed"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_2

    .line 323
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->onStopPollingCellInfo()V

    .line 327
    :cond_2
    return-void
.end method

.method private updateNetworkCountry()V
    .locals 5

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "needsAffordance":Z
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    .line 281
    .local v1, "activeModems":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 282
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "countryIso":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    invoke-static {}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->getInstance()Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/emergency/EmergencyAffordanceServiceInjector;->setWifiCountryIso(Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->isoRequiresEmergencyAffordance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    const/4 v0, 0x1

    .line 292
    goto :goto_1

    .line 281
    .end local v3    # "countryIso":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    .line 296
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 297
    return-void
.end method


# virtual methods
.method public addEmergencyCallCountryCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEmergencyCallMccNumbers: countryIso = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmergencyAffordanceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method public getInitializeState()I
    .locals 1

    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 154
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleThirdPartyBootPhase()V

    .line 158
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 149
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Lcom/android/server/emergency/EmergencyAffordanceService$1;)V

    const-string v1, "emergency_affordance"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 150
    return-void
.end method
