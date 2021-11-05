.class public Lcom/android/server/notification/EventConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "EventConditionProvider.java"


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field private static final CHANGE_DELAY:J = 0x7d0L

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.ECP"


# instance fields
.field private mBootComplete:Z

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mEvaluateSubscriptionsW:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Landroid/os/HandlerThread;

.field private final mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/notification/CalendarTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    const-class v0, Lcom/android/server/notification/EventConditionProvider;

    const-string v1, "ConditionProviders"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 56
    new-instance v1, Landroid/content/ComponentName;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 65
    iput-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 316
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$2;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 325
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$3;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$4;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    .line 77
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    const-string v1, "ConditionProviders.ECP"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    .line 79
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .line 52
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .line 52
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .line 52
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .line 52
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/EventConditionProvider;

    .line 52
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptionsW()V

    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .locals 12
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "state"    # I

    .line 287
    const-string v0, "..."

    .line 288
    .local v0, "summary":Ljava/lang/String;
    const-string v1, "..."

    .line 289
    .local v1, "line1":Ljava/lang/String;
    const-string v2, "..."

    .line 290
    .local v2, "line2":Ljava/lang/String;
    new-instance v11, Landroid/service/notification/Condition;

    const-string v5, "..."

    const-string v6, "..."

    const-string v7, "..."

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object v3, v11

    move-object v4, p1

    move v9, p2

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v11
.end method

.method private evaluateSubscriptions()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_0
    return-void
.end method

.method private evaluateSubscriptionsW()V
    .locals 18

    .line 202
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string v2, "evaluateSubscriptions"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    if-nez v0, :cond_2

    .line 204
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ConditionProviders.ECP"

    const-string v2, "Skipping evaluate before boot complete"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    return-void

    .line 207
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 208
    .local v2, "now":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 209
    .local v4, "conditionsToNotify":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Condition;>;"
    iget-object v5, v1, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v5

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v6, v1, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 211
    iget-object v6, v1, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/CalendarTracker;

    .line 212
    iget-object v7, v1, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    iget-object v7, v1, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 211
    :goto_1
    invoke-virtual {v6, v7}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "i":I
    :cond_4
    iget-object v0, v1, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v7

    :goto_2
    invoke-direct {v1, v0}, Lcom/android/server/notification/EventConditionProvider;->setRegistered(Z)V

    .line 215
    const-wide/16 v8, 0x0

    .line 216
    .local v8, "reevaluateAt":J
    iget-object v0, v1, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 217
    .local v10, "conditionId":Landroid/net/Uri;
    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v11

    .line 218
    .local v11, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-nez v11, :cond_6

    .line 219
    invoke-direct {v1, v10, v7}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    move-wide/from16 v16, v8

    goto/16 :goto_6

    .line 222
    :cond_6
    const/4 v12, 0x0

    .line 223
    .local v12, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    iget-object v13, v11, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v13, :cond_9

    .line 225
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    iget-object v14, v1, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 226
    iget-object v14, v1, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/CalendarTracker;

    .line 227
    .local v14, "tracker":Lcom/android/server/notification/CalendarTracker;
    invoke-virtual {v14, v11, v2, v3}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v15

    .line 228
    .local v15, "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    if-nez v12, :cond_7

    .line 229
    move-object v12, v15

    move-wide/from16 v16, v8

    goto :goto_5

    .line 231
    :cond_7
    iget-boolean v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    iget-boolean v7, v15, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    or-int/2addr v6, v7

    iput-boolean v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 232
    iget-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide/from16 v16, v8

    .end local v8    # "reevaluateAt":J
    .local v16, "reevaluateAt":J
    iget-wide v8, v15, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 225
    .end local v14    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .end local v15    # "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_4

    .end local v16    # "reevaluateAt":J
    .restart local v8    # "reevaluateAt":J
    :cond_8
    move-wide/from16 v16, v8

    .end local v8    # "reevaluateAt":J
    .end local v13    # "i":I
    .restart local v16    # "reevaluateAt":J
    goto :goto_7

    .line 237
    .end local v16    # "reevaluateAt":J
    .restart local v8    # "reevaluateAt":J
    :cond_9
    move-wide/from16 v16, v8

    .end local v8    # "reevaluateAt":J
    .restart local v16    # "reevaluateAt":J
    iget v6, v11, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v6

    .line 238
    .local v6, "userId":I
    iget-object v7, v1, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/CalendarTracker;

    .line 239
    .local v7, "tracker":Lcom/android/server/notification/CalendarTracker;
    if-nez v7, :cond_a

    .line 240
    const-string v8, "ConditionProviders.ECP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No calendar tracker found for user "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v8, 0x0

    invoke-direct {v1, v10, v8}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    nop

    .line 216
    .end local v6    # "userId":I
    .end local v7    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .end local v10    # "conditionId":Landroid/net/Uri;
    .end local v11    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .end local v12    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v16    # "reevaluateAt":J
    .restart local v8    # "reevaluateAt":J
    :goto_6
    move-wide/from16 v8, v16

    const/4 v7, 0x0

    .end local v8    # "reevaluateAt":J
    .restart local v16    # "reevaluateAt":J
    goto/16 :goto_3

    .line 244
    .restart local v6    # "userId":I
    .restart local v7    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .restart local v10    # "conditionId":Landroid/net/Uri;
    .restart local v11    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .restart local v12    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_a
    invoke-virtual {v7, v11, v2, v3}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v8

    move-object v12, v8

    .line 246
    .end local v6    # "userId":I
    .end local v7    # "tracker":Lcom/android/server/notification/CalendarTracker;
    :goto_7
    iget-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    cmp-long v6, v16, v8

    if-eqz v6, :cond_b

    iget-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v6, v6, v16

    if-gez v6, :cond_c

    .line 248
    :cond_b
    iget-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide v8, v6

    .end local v16    # "reevaluateAt":J
    .local v6, "reevaluateAt":J
    goto :goto_8

    .line 250
    .end local v6    # "reevaluateAt":J
    .restart local v16    # "reevaluateAt":J
    :cond_c
    move-wide/from16 v8, v16

    .end local v16    # "reevaluateAt":J
    .restart local v8    # "reevaluateAt":J
    :goto_8
    iget-boolean v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    if-nez v6, :cond_d

    .line 251
    const/4 v6, 0x0

    invoke-direct {v1, v10, v6}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v7, 0x1

    goto :goto_9

    .line 254
    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v10, v7}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    nop

    .line 216
    .end local v10    # "conditionId":Landroid/net/Uri;
    .end local v11    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .end local v12    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :goto_9
    move v7, v6

    goto/16 :goto_3

    .line 256
    :cond_e
    move-wide/from16 v16, v8

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/android/server/notification/EventConditionProvider;->rescheduleAlarm(JJ)V

    .line 257
    .end local v8    # "reevaluateAt":J
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Condition;

    .line 259
    .local v5, "condition":Landroid/service/notification/Condition;
    if-eqz v5, :cond_f

    .line 260
    invoke-virtual {v1, v5}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 262
    .end local v5    # "condition":Landroid/service/notification/Condition;
    :cond_f
    goto :goto_a

    .line 263
    :cond_10
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evaluateSubscriptions took "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ConditionProviders.ECP"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_11
    return-void

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 310
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private reloadTrackers()V
    .locals 8

    .line 179
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    const-string v1, "ConditionProviders.ECP"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "reloadTrackers"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/CalendarTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 185
    .local v2, "user":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/notification/EventConditionProvider;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 186
    .local v3, "context":Landroid/content/Context;
    :goto_2
    if-nez v3, :cond_3

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create context for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_1

    .line 190
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    new-instance v6, Lcom/android/server/notification/CalendarTracker;

    iget-object v7, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/server/notification/CalendarTracker;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "context":Landroid/content/Context;
    goto :goto_1

    .line 192
    :cond_4
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 193
    return-void
.end method

.method private rescheduleAlarm(JJ)V
    .locals 9
    .param p1, "now"    # J
    .param p3, "time"    # J

    .line 267
    iput-wide p3, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    .line 268
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 269
    .local v0, "alarms":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 273
    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    .line 269
    const/4 v3, 0x1

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 275
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 276
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    const-string v6, "ConditionProviders.ECP"

    if-eqz v2, :cond_2

    cmp-long v2, p3, p1

    if-gez v2, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    sget-boolean v2, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 282
    invoke-static {p3, p4}, Lcom/android/server/notification/EventConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    sub-long v7, p3, p1

    invoke-static {v7, v8}, Lcom/android/server/notification/EventConditionProvider;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, Lcom/android/server/notification/EventConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 281
    const-string v3, "Scheduling evaluate for %s, in %s, now=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    invoke-virtual {v0, v4, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 284
    return-void

    .line 277
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not scheduling evaluate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v3, p3, v4

    if-nez v3, :cond_3

    const-string/jumbo v3, "no time specified"

    goto :goto_1

    .line 278
    :cond_3
    const-string/jumbo v3, "specified time in the past"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_4
    return-void
.end method

.method private setRegistered(Z)V
    .locals 2
    .param p1, "registered"    # Z

    .line 294
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 295
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRegistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.ECP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    .line 297
    if-eqz p1, :cond_2

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/EventConditionProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/EventConditionProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    :goto_0
    return-void
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/EventConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/notification/EventConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 95
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 97
    const-string v0, "      mRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 98
    const-string v0, "      mBootComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    iget-wide v3, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v2, "mNextAlarmTime"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/EventConditionProvider;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    .line 100
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v0

    .line 101
    :try_start_0
    const-string v1, "      mSubscriptions="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 103
    .local v2, "conditionId":Landroid/net/Uri;
    const-string v3, "        "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 105
    .end local v2    # "conditionId":Landroid/net/Uri;
    goto :goto_0

    .line 106
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const-string v0, "      mTrackers="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 109
    const-string v1, "        user="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 110
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/CalendarTracker;

    const-string v2, "          "

    invoke-virtual {v1, v2, p1}, Lcom/android/server/notification/CalendarTracker;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 106
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 85
    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "id"    # Landroid/net/Uri;

    .line 90
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .locals 3

    .line 116
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onBootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    if-eqz v0, :cond_1

    return-void

    .line 118
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/EventConditionProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    .line 129
    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    .line 140
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    .line 142
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 146
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSubscribe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.ECP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 149
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 155
    :cond_2
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 2
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 160
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnsubscribe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.ECP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 165
    :cond_1
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
