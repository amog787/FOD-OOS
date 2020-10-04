.class public Lcom/android/server/connectivity/LingerMonitor;
.super Ljava/lang/Object;
.source "LingerMonitor.java"


# static fields
.field public static final CELLULAR_SETTINGS:Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final DEFAULT_NOTIFICATION_DAILY_LIMIT:I = 0x3

.field public static final DEFAULT_NOTIFICATION_RATE_LIMIT_MILLIS:J = 0xea60L

.field public static final NOTIFY_TYPE_NONE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NOTIFY_TYPE_NOTIFICATION:I = 0x1

.field public static final NOTIFY_TYPE_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSPORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VDBG:Z = false

.field private static sNotifyTypeNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDailyLimit:I

.field private final mEverNotified:Landroid/util/SparseBooleanArray;

.field private mFirstNotificationMillis:J

.field private mLastNotificationMillis:J

.field private mNotificationCounter:I

.field private final mNotifications:Landroid/util/SparseIntArray;

.field private final mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private final mRateLimitMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    const-class v0, Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/android/server/connectivity/LingerMonitor;->makeTransportToNameMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->CELLULAR_SETTINGS:Landroid/content/Intent;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/LingerMonitor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "NOTIFY_TYPE_"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->sNotifyTypeNames:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/server/connectivity/NetworkNotificationManager;
    .param p3, "dailyLimit"    # I
    .param p4, "rateLimitMillis"    # J

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    .line 85
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    .line 89
    iput-object p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    .line 91
    iput p3, p0, Lcom/android/server/connectivity/LingerMonitor;->mDailyLimit:I

    .line 92
    iput-wide p4, p0, Lcom/android/server/connectivity/LingerMonitor;->mRateLimitMillis:J

    .line 94
    neg-long v0, p4

    iput-wide v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mLastNotificationMillis:J

    .line 95
    return-void
.end method

.method private everNotified(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 123
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method private getNotificationSource(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 3
    .param p1, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    if-ne v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    return v1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 1
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p1, "transport"    # I

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method private isAboveDailyLimit(J)Z
    .locals 6
    .param p1, "now"    # J

    .line 292
    iget-wide v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 293
    iput-wide p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    .line 295
    :cond_0
    iget-wide v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    sub-long v0, p1, v0

    .line 296
    .local v0, "millisSinceFirst":J
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 297
    iput v5, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    .line 298
    iput-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    .line 300
    :cond_1
    iget v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    iget v3, p0, Lcom/android/server/connectivity/LingerMonitor;->mDailyLimit:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 301
    return v4

    .line 303
    :cond_2
    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    .line 304
    return v5
.end method

.method private isRateLimited(J)Z
    .locals 4
    .param p1, "now"    # J

    .line 283
    iget-wide v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mLastNotificationMillis:J

    sub-long v0, p1, v0

    .line 284
    .local v0, "millisSinceLast":J
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mRateLimitMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 285
    const/4 v2, 0x1

    return v2

    .line 287
    :cond_0
    iput-wide p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mLastNotificationMillis:J

    .line 288
    const/4 v2, 0x0

    return v2
.end method

.method private static makeTransportToNameMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TRANSPORT_"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 100
    .local v0, "numberToName":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v1, "nameToNumber":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->getNotificationSource(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    .line 167
    .local v0, "fromNetId":I
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 169
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 172
    :cond_0
    return-void
.end method

.method private notify(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 7
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "forceToast"    # Z

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 178
    .local v0, "notifyType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 179
    const/4 v0, 0x2

    .line 186
    :cond_0
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 196
    sget-object v1, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown notify type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 194
    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/LingerMonitor;->showNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 191
    nop

    .line 201
    :goto_0
    sget-object v2, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying switch from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/connectivity/LingerMonitor;->sNotifyTypeNames:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    iget-object v4, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    iget-object v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 207
    return-void

    .line 188
    :cond_3
    return-void
.end method

.method private showNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 154
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 155
    invoke-virtual {p0}, Lcom/android/server/connectivity/LingerMonitor;->createNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 154
    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 156
    return-void
.end method


# virtual methods
.method protected createNotificationIntent()Landroid/app/PendingIntent;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/connectivity/LingerMonitor;->CELLULAR_SETTINGS:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public isNotificationEnabled(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 11
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "notifySwitches":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 137
    .local v4, "notifySwitch":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    const/4 v5, 0x2

    const-string v6, "-"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "transports":[Ljava/lang/String;
    array-length v7, v6

    if-eq v7, v5, :cond_1

    .line 140
    sget-object v5, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid network switch notification configuration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_1

    .line 143
    :cond_1
    sget-object v5, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TRANSPORT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 144
    .local v5, "fromTransport":I
    sget-object v7, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 145
    .local v7, "toTransport":I
    invoke-static {p1, v5}, Lcom/android/server/connectivity/LingerMonitor;->hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {p2, v7}, Lcom/android/server/connectivity/LingerMonitor;->hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 146
    return v8

    .line 136
    .end local v4    # "notifySwitch":Ljava/lang/String;
    .end local v5    # "fromTransport":I
    .end local v6    # "transports":[Ljava/lang/String;
    .end local v7    # "toTransport":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_3
    return v2
.end method

.method public noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 276
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 277
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 280
    return-void
.end method

.method public noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 233
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 254
    .local v0, "forceToast":Z
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->everNotified(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    return-void

    .line 265
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_2

    return-void

    .line 267
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/LingerMonitor;->isNotificationEnabled(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 269
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 270
    .local v1, "now":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/LingerMonitor;->isRateLimited(J)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/LingerMonitor;->isAboveDailyLimit(J)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 272
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/LingerMonitor;->notify(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 273
    return-void

    .line 270
    :cond_5
    :goto_0
    return-void
.end method
