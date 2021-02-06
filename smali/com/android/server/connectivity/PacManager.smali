.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final DONT_SEND_BROADCAST:Z = false

.field public static final DO_SEND_BROADCAST:Z = true

.field private static final MAX_PAC_SIZE:J = 0x1312d00L

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field private static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field private static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private volatile mHasDownloaded:Z

.field private volatile mHasSentBroadcast:Z

.field private mLastPort:I

.field private final mNetThreadHandler:Landroid/os/Handler;

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private volatile mPacUrl:Landroid/net/Uri;

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private final mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "proxyMessage"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    .line 149
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.pacmanager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 153
    .local v0, "netThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 158
    new-instance v1, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    .line 161
    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/android/server/connectivity/PacManager;->get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Lcom/android/net/IProxyService;

    .line 55
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/PacManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/PacManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/PacManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/PacManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->longSchedule()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->reschedule()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 55
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    return-object v0
.end method

.method private bind()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 298
    const-string v0, "PacManager"

    const-string v1, "No context for binding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 301
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void

    .line 308
    :cond_1
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 340
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 343
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 344
    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 378
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 380
    return-void
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "pacUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "url":Ljava/net/URL;
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .line 220
    .local v1, "urlConnection":Ljava/net/URLConnection;
    const-wide/16 v2, -0x1

    .line 222
    .local v2, "contentLength":J
    :try_start_0
    const-string v4, "Content-Length"

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v4

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v4

    .line 226
    :goto_0
    const-wide/32 v4, 0x1312d00

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    .line 229
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v6, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 232
    .local v7, "buffer":[B
    :goto_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "count":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_1

    .line 233
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 234
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    int-to-long v10, v8

    cmp-long v8, v10, v4

    if-gtz v8, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "PAC too big"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 227
    .end local v6    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PAC too big: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .locals 3
    .param p1, "delayIndex"    # I

    .line 270
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getPacChangeDelay()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 272
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 274
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNextDelay(I)I
    .locals 1
    .param p1, "currentDelay"    # I

    .line 242
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 243
    return v0

    .line 245
    :cond_0
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "conn.pac_change_delay"

    const-string v2, "8 32 120 14400 43200"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string/jumbo v2, "pac_change_delay"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3
.end method

.method private longSchedule()V
    .locals 1

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 250
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 251
    return-void
.end method

.method private reschedule()V
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 255
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 256
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 396
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .locals 3

    monitor-enter p0

    .line 400
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    if-nez v0, :cond_1

    .line 404
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .end local p0    # "this":Lcom/android/server/connectivity/PacManager;
    :cond_1
    monitor-exit p0

    return-void

    .line 401
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)V
    .locals 3
    .param p1, "script"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    const-string v1, "PacManager"

    if-nez v0, :cond_0

    .line 285
    const-string/jumbo v0, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 289
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 290
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to set PAC file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setDownloadIn(I)V
    .locals 7
    .param p1, "delayIndex"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    move-result-wide v0

    .line 279
    .local v0, "delay":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 280
    .local v2, "timeTillTrigger":J
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 281
    return-void
.end method

.method private unbind()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 385
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 389
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 391
    :cond_1
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    .line 392
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 393
    return-void
.end method


# virtual methods
.method declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z
    .locals 5
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    monitor-enter p0

    .line 181
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-lez v0, :cond_0

    .line 184
    monitor-exit p0

    return v1

    .line 186
    .end local p0    # "this":Lcom/android/server/connectivity/PacManager;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 188
    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    .line 190
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 191
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 192
    monitor-exit p0

    return v0

    .line 194
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 196
    :try_start_3
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 197
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 200
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v2}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :goto_0
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 205
    goto :goto_2

    .line 204
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v3, "PacManager"

    const-string v4, "Failed to stop PAC service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 204
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    .line 205
    nop

    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    throw v1

    .line 207
    .restart local p0    # "this":Lcom/android/server/connectivity/PacManager;
    .restart local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_2
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 208
    monitor-exit p0

    return v1

    .line 207
    :catchall_1
    move-exception v1

    :goto_3
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local p0    # "this":Lcom/android/server/connectivity/PacManager;
    :catchall_2
    move-exception v1

    goto :goto_3

    .line 180
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
