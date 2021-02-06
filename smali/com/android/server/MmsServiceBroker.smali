.class public Lcom/android/server/MmsServiceBroker;
.super Lcom/android/server/SystemService;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MmsServiceBroker$BinderService;
    }
.end annotation


# static fields
.field private static final FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_MMS_SENT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_SENT_URI:Landroid/net/Uri;

.field private static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final RETRY_DELAY_ON_DISCONNECTION_MS:J = 0xbb8L

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "MmsServiceBroker"


# instance fields
.field private volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mService:Lcom/android/internal/telephony/IMms;

.field private final mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

.field private volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms.service"

    const-string v2, "com.android.mms.service.MmsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 66
    const-string v0, "content://sms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    .line 67
    const-string v0, "content://mms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "content://sms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    .line 69
    const-string v0, "content://mms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 80
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    new-instance v1, Lcom/android/server/MmsServiceBroker$1;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$1;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 96
    new-instance v1, Lcom/android/server/MmsServiceBroker$2;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$2;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 123
    new-instance v1, Lcom/android/server/MmsServiceBroker$3;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$3;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    .line 220
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 221
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MmsServiceBroker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .line 58
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->tryConnecting()V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;
    .param p1, "x1"    # Lcom/android/internal/telephony/IMms;

    .line 58
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/MmsServiceBroker;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/MmsServiceBroker;->getPhoneIdFromSubId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .line 58
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .line 58
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .line 58
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .line 58
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 2

    .line 322
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 324
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 326
    :cond_0
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private getOrConnectService()Lcom/android/internal/telephony/IMms;
    .locals 7

    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    monitor-exit p0

    return-object v0

    .line 258
    :cond_0
    const-string v0, "MmsServiceBroker"

    const-string v1, "MmsService not connected. Try connecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 260
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    .line 263
    .local v0, "shouldEnd":J
    const-wide/16 v2, 0xfa0

    .line 264
    .local v2, "waitTime":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 267
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    goto :goto_1

    .line 268
    :catch_0
    move-exception v4

    .line 269
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "MmsServiceBroker"

    const-string v6, "Connection wait interrupted"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v4, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v4, :cond_1

    .line 273
    iget-object v4, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    monitor-exit p0

    return-object v4

    .line 276
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_0

    .line 279
    :cond_2
    const-string v4, "MmsServiceBroker"

    const-string v5, "Can not connect to MmsService (timed out)"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 281
    .end local v0    # "shouldEnd":J
    .end local v2    # "waitTime":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPhoneIdFromSubId(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 543
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 544
    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 545
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 546
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 547
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_1

    return v1

    .line 548
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    return v1
.end method

.method private getServiceGuarded()Lcom/android/internal/telephony/IMms;
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getOrConnectService()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 293
    .local v0, "service":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 294
    return-object v0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    return-object v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private tryConnecting()V
    .locals 4

    .line 234
    const-string v0, "MmsServiceBroker"

    const-string v1, "Connecting to MmsService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "MmsServiceBroker"

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    const-string v1, "MmsServiceBroker"

    const-string v2, "Failed to bind to MmsService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_1
    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v2, "MmsServiceBroker"

    const-string v3, "Forbidden to bind to MmsService"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    monitor-exit p0

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 226
    new-instance v0, Lcom/android/server/MmsServiceBroker$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$1;)V

    const-string v1, "imms"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/MmsServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    return-void
.end method

.method public systemRunning()V
    .locals 2

    .line 230
    const-string v0, "MmsServiceBroker"

    const-string v1, "Delay connecting to MmsService until an API is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method
