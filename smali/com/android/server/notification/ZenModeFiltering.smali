.class public Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 44
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>(Lcom/android/server/notification/ZenModeFiltering$1;)V

    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/NotificationMessagingUtil;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messagingUtil"    # Lcom/android/internal/util/NotificationMessagingUtil;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 59
    return-void
.end method

.method private static audienceMatches(IF)Z
    .locals 3
    .param p0, "source"    # I
    .param p1, "contactAffinity"    # F

    .line 280
    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered unknown source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v0

    .line 286
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 284
    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 282
    :cond_4
    return v0
.end method

.method private static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 109
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0
.end method

.method protected static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 235
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 235
    :goto_1
    return v0
.end method

.method private isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 223
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 267
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 268
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 269
    sget-boolean v1, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default phone app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 271
    :goto_1
    return v0
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 240
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 244
    const-string/jumbo v0, "reminder"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zen"    # I
    .param p2, "consolidatedPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p6, "contactsTimeoutMs"    # I
    .param p7, "timeoutAffinity"    # F

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    .line 92
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    return v0

    .line 93
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 94
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 95
    invoke-static {v2, p0, p4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    return v1

    .line 98
    :cond_2
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 99
    :cond_3
    if-eqz p5, :cond_4

    .line 100
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 102
    .local v0, "contactAffinity":F
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result v1

    return v1

    .line 105
    .end local v0    # "contactAffinity":F
    :cond_4
    return v1
.end method

.method private static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "source"    # I
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 227
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const-string v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static ts(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$100(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 65
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RepeatCallers.mCalls="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    const-string v2, " at "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/notification/ZenModeFiltering;->ts(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 248
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0
.end method

.method public isMedia(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 253
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 254
    .local v0, "aa":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 276
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 259
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 260
    .local v0, "aa":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected recordCall(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 114
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$400(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 5
    .param p1, "zen"    # I
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;
    .param p3, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 123
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-direct {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 127
    :cond_0
    iget v1, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 128
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x30

    iget-object v2, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 129
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 130
    const-string/jumbo v1, "systemDndChangedNotification"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 131
    return v0

    .line 133
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 209
    return v0

    .line 139
    :cond_2
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    return v0

    .line 143
    :cond_3
    const-string v0, "alarmsOnly"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 144
    return v2

    .line 136
    :cond_4
    const-string/jumbo v0, "none"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 137
    return v2

    .line 147
    :cond_5
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 148
    const-string/jumbo v1, "priorityApp"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 149
    return v0

    .line 152
    :cond_6
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 153
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v1

    if-nez v1, :cond_7

    .line 154
    const-string v0, "!allowAlarms"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 155
    return v2

    .line 157
    :cond_7
    return v0

    .line 159
    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 160
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 162
    const-string/jumbo v1, "repeatCaller"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 163
    return v0

    .line 165
    :cond_9
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v0

    if-nez v0, :cond_a

    .line 166
    const-string v0, "!allowCalls"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 167
    return v2

    .line 169
    :cond_a
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v0

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0

    .line 171
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 172
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v0

    if-nez v0, :cond_c

    .line 173
    const-string v0, "!allowMessages"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 174
    return v2

    .line 176
    :cond_c
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v0

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0

    .line 178
    :cond_d
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 179
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v1

    if-nez v1, :cond_e

    .line 180
    const-string v0, "!allowEvents"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 181
    return v2

    .line 183
    :cond_e
    return v0

    .line 185
    :cond_f
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 186
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v1

    if-nez v1, :cond_10

    .line 187
    const-string v0, "!allowReminders"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 188
    return v2

    .line 190
    :cond_10
    return v0

    .line 192
    :cond_11
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMedia(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 193
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v1

    if-nez v1, :cond_12

    .line 194
    const-string v0, "!allowMedia"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 195
    return v2

    .line 197
    :cond_12
    return v0

    .line 199
    :cond_13
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 200
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v1

    if-nez v1, :cond_14

    .line 201
    const-string v0, "!allowSystem"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 202
    return v2

    .line 204
    :cond_14
    return v0

    .line 206
    :cond_15
    const-string v0, "!priority"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 207
    return v2

    .line 124
    :cond_16
    :goto_0
    return v0
.end method
