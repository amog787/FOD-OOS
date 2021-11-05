.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INTERVAL_LENGTH:[J

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private mLastBackgroundedPackage:Ljava/lang/String;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mRealTimeSnapshot:J

.field private mStatsChanged:Z

.field private mSystemTimeSnapshot:J

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    .line 360
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 377
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 394
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void

    nop

    :array_0
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "usageStatsDir"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 107
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 109
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 111
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 113
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    .line 116
    return-void
.end method

.method private checkAndGetTimeLocked()J
    .locals 12

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 249
    .local v0, "actualSystemTime":J
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-nez v2, :cond_0

    .line 250
    return-wide v0

    .line 252
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 253
    .local v2, "actualRealtime":J
    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    .line 254
    .local v4, "expectedSystemTime":J
    sub-long v6, v0, v4

    .line 255
    .local v6, "diffSystemTime":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Time changed in by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v6, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UsageStatsService"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 259
    iput-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 260
    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    .line 262
    :cond_1
    return-wide v0
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 4
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 270
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 271
    return-void
.end method

.method private dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .locals 7
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "filename"    # J

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 856
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    .line 857
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 858
    return-void
.end method

.method private dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 6
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "interval"    # I

    .line 843
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, p2

    .line 844
    .local v0, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 845
    .local v1, "numFiles":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 846
    invoke-virtual {v0, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 847
    .local v3, "filename":J
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, p2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    .line 848
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    .line 849
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 845
    .end local v3    # "filename":J
    .end local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "eventType"    # I

    .line 1120
    packed-switch p0, :pswitch_data_0

    .line 1174
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_TYPE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1172
    :pswitch_1
    const-string v0, "DEVICE_STARTUP"

    return-object v0

    .line 1170
    :pswitch_2
    const-string v0, "DEVICE_SHUTDOWN"

    return-object v0

    .line 1132
    :pswitch_3
    const-string v0, "ACTIVITY_STOPPED"

    return-object v0

    .line 1136
    :pswitch_4
    const-string v0, "ROLLOVER_FOREGROUND_SERVICE"

    return-object v0

    .line 1140
    :pswitch_5
    const-string v0, "CONTINUING_FOREGROUND_SERVICE"

    return-object v0

    .line 1130
    :pswitch_6
    const-string v0, "FOREGROUND_SERVICE_STOP"

    return-object v0

    .line 1128
    :pswitch_7
    const-string v0, "FOREGROUND_SERVICE_START"

    return-object v0

    .line 1168
    :pswitch_8
    const-string v0, "KEYGUARD_HIDDEN"

    return-object v0

    .line 1166
    :pswitch_9
    const-string v0, "KEYGUARD_SHOWN"

    return-object v0

    .line 1164
    :pswitch_a
    const-string v0, "SCREEN_NON_INTERACTIVE"

    return-object v0

    .line 1162
    :pswitch_b
    const-string v0, "SCREEN_INTERACTIVE"

    return-object v0

    .line 1158
    :pswitch_c
    const-string v0, "SLICE_PINNED"

    return-object v0

    .line 1160
    :pswitch_d
    const-string v0, "SLICE_PINNED_PRIV"

    return-object v0

    .line 1156
    :pswitch_e
    const-string v0, "NOTIFICATION_INTERRUPTION"

    return-object v0

    .line 1154
    :pswitch_f
    const-string v0, "STANDBY_BUCKET_CHANGED"

    return-object v0

    .line 1152
    :pswitch_10
    const-string v0, "NOTIFICATION_SEEN"

    return-object v0

    .line 1150
    :pswitch_11
    const-string v0, "CHOOSER_ACTION"

    return-object v0

    .line 1148
    :pswitch_12
    const-string v0, "SHORTCUT_INVOCATION"

    return-object v0

    .line 1146
    :pswitch_13
    const-string v0, "USER_INTERACTION"

    return-object v0

    .line 1144
    :pswitch_14
    const-string v0, "SYSTEM_INTERACTION"

    return-object v0

    .line 1142
    :pswitch_15
    const-string v0, "CONFIGURATION_CHANGE"

    return-object v0

    .line 1138
    :pswitch_16
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    return-object v0

    .line 1134
    :pswitch_17
    const-string v0, "END_OF_DAY"

    return-object v0

    .line 1124
    :pswitch_18
    const-string v0, "ACTIVITY_PAUSED"

    return-object v0

    .line 1126
    :pswitch_19
    const-string v0, "ACTIVITY_RESUMED"

    return-object v0

    .line 1122
    :pswitch_1a
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static formatDateTime(JZ)Ljava/lang/String;
    .locals 4
    .param p0, "dateTime"    # J
    .param p2, "pretty"    # Z

    .line 861
    if-eqz p2, :cond_0

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 864
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .locals 4
    .param p1, "elapsedTime"    # J
    .param p3, "pretty"    # Z

    .line 868
    if-eqz p3, :cond_0

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 871
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "interval"    # I

    .line 1090
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1100
    const-string v0, "?"

    return-object v0

    .line 1098
    :cond_0
    const-string v0, "yearly"

    return-object v0

    .line 1096
    :cond_1
    const-string v0, "monthly"

    return-object v0

    .line 1094
    :cond_2
    const-string v0, "weekly"

    return-object v0

    .line 1092
    :cond_3
    const-string v0, "daily"

    return-object v0
.end method

.method static synthetic lambda$queryEventsForPackage$0(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 5
    .param p0, "beginTime"    # J
    .param p2, "endTime"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "names"    # Landroid/util/ArraySet;
    .param p6, "includeTaskRoot"    # Z
    .param p7, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p8, "mutable"    # Z
    .param p9, "accumulatedResult"    # Ljava/util/List;

    .line 571
    iget-object v0, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 572
    .local v0, "startIndex":I
    iget-object v1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 573
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 574
    iget-object v3, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v3, v3, p2

    if-ltz v3, :cond_0

    .line 575
    return-void

    .line 578
    :cond_0
    iget-object v3, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 579
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 580
    goto :goto_1

    .line 582
    :cond_1
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 583
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_2
    if-eqz p6, :cond_3

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 586
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_3
    if-eqz p6, :cond_4

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 589
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_4
    invoke-interface {p9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private loadActiveStats(J)V
    .locals 9
    .param p1, "currentTimeMillis"    # J

    .line 714
    const/4 v0, 0x0

    .local v0, "intervalType":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 715
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    .line 716
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    const-string v2, ") for interval "

    const-string v3, "("

    const-string v4, "UsageStatsService"

    if-eqz v1, :cond_1

    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v7, v7, v0

    add-long/2addr v5, v7

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    .line 718
    sget-boolean v5, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Loading existing stats @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-wide v7, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 720
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aput-object v1, v2, v0

    goto :goto_1

    .line 726
    :cond_1
    sget-boolean v5, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating new stats @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 728
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 727
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v3, v2, v0

    .line 733
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v0

    iput-wide p1, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 734
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v0

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 714
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 738
    .end local v0    # "intervalType":I
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 739
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 742
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    .line 743
    return-void
.end method

.method private notifyNewUpdate()V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    .line 711
    return-void
.end method

.method private notifyStatsChanged()V
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 705
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 707
    :cond_0
    return-void
.end method

.method private onTimeChanged(JJ)V
    .locals 3
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J

    .line 239
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 240
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 241
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 242
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .locals 17
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 414
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    const/4 v1, 0x4

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    .line 415
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result v1

    .line 416
    .end local p1    # "intervalType":I
    .local v1, "intervalType":I
    if-gez v1, :cond_0

    .line 419
    const/4 v1, 0x0

    move v12, v1

    goto :goto_0

    .line 416
    :cond_0
    move v12, v1

    goto :goto_0

    .line 414
    .end local v1    # "intervalType":I
    .restart local p1    # "intervalType":I
    :cond_1
    move v12, v2

    .line 423
    .end local p1    # "intervalType":I
    .local v12, "intervalType":I
    :goto_0
    const/4 v1, 0x0

    const-string v13, "UsageStatsService"

    if-ltz v12, :cond_d

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-lt v12, v3, :cond_2

    move-object/from16 v4, p6

    goto/16 :goto_3

    .line 430
    :cond_2
    aget-object v14, v2, v12

    .line 432
    .local v14, "currentStats":Lcom/android/server/usage/IntervalStats;
    sget-boolean v2, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " WHERE beginTime >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND endTime < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_3
    iget-wide v2, v14, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v8, v2

    if-ltz v2, :cond_5

    .line 438
    sget-boolean v2, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Requesting stats after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " but latest is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_4
    return-object v1

    .line 449
    :cond_5
    iget-wide v1, v14, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 452
    .local v15, "truncatedEndTime":J
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v2, v12

    move-wide/from16 v3, p2

    move-wide v5, v15

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-boolean v2, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " results from disk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current stats beginTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v14, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " endTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v14, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_7
    iget-wide v4, v14, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v8, v4

    if-gez v2, :cond_a

    iget-wide v4, v14, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, v10, v4

    if-lez v2, :cond_a

    .line 462
    sget-boolean v2, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Returning in-memory stats"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_8
    if-nez v1, :cond_9

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 469
    :cond_9
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, v14}, Lcom/android/server/usage/UsageStatsDatabase;->filterStats(Lcom/android/server/usage/IntervalStats;)V

    .line 470
    const/4 v2, 0x1

    move-object/from16 v4, p6

    invoke-interface {v4, v14, v2, v1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    goto :goto_2

    .line 461
    :cond_a
    move-object/from16 v4, p6

    .line 473
    :goto_2
    sget-boolean v2, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Results: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_c
    return-object v1

    .line 423
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v14    # "currentStats":Lcom/android/server/usage/IntervalStats;
    .end local v15    # "truncatedEndTime":J
    :cond_d
    move-object/from16 v4, p6

    .line 424
    :goto_3
    sget-boolean v2, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Bad intervalType used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_e
    return-object v1
.end method

.method private readPackageMappingsLocked(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    .line 188
    iget v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    .line 191
    :cond_0
    return-void
.end method

.method private rolloverStats(J)V
    .locals 32
    .param p1, "currentTimeMillis"    # J

    .line 621
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 622
    .local v1, "startTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Rolling over usage stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsageStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 629
    .local v3, "previousConfig":Landroid/content/res/Configuration;
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 630
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 632
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 634
    .local v8, "continueForegroundService":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v10, v9

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_5

    aget-object v15, v9, v11

    .line 635
    .local v15, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 636
    .local v14, "pkgCount":I
    const/4 v12, 0x0

    move v13, v12

    .local v13, "i":I
    :goto_1
    const-wide/16 v19, 0x1

    if-ge v13, v14, :cond_4

    .line 637
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 638
    .local v12, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 639
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    goto/16 :goto_4

    .line 640
    :cond_1
    :goto_2
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 641
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-object v9, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 644
    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v17

    sub-long v17, v17, v19

    const/4 v9, 0x3

    const/16 v23, 0x0

    .line 643
    move-object/from16 v24, v12

    .end local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    .local v24, "pkgStats":Landroid/app/usage/UsageStats;
    move-object v12, v15

    move/from16 v25, v13

    .end local v13    # "i":I
    .local v25, "i":I
    move-object v13, v5

    move v5, v14

    const/4 v14, 0x0

    .end local v14    # "pkgCount":I
    .local v5, "pkgCount":I
    move-object/from16 v26, v15

    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v26, "stat":Lcom/android/server/usage/IntervalStats;
    move-wide/from16 v15, v17

    move/from16 v17, v9

    move/from16 v18, v23

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_3

    .line 640
    .end local v5    # "pkgCount":I
    .end local v24    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v25    # "i":I
    .end local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    .restart local v13    # "i":I
    .restart local v14    # "pkgCount":I
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_2
    move-object/from16 v22, v9

    move-object/from16 v24, v12

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    .line 647
    .end local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v13    # "i":I
    .end local v14    # "pkgCount":I
    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v5    # "pkgCount":I
    .restart local v24    # "pkgStats":Landroid/app/usage/UsageStats;
    .restart local v25    # "i":I
    .restart local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    :goto_3
    move-object/from16 v9, v24

    .end local v24    # "pkgStats":Landroid/app/usage/UsageStats;
    .local v9, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 648
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v13, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v13, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 651
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v15

    sub-long v15, v15, v19

    const/16 v17, 0x16

    const/16 v18, 0x0

    .line 650
    move-object/from16 v12, v26

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 654
    :cond_3
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 636
    .end local v9    # "pkgStats":Landroid/app/usage/UsageStats;
    :goto_4
    add-int/lit8 v13, v25, 0x1

    move v14, v5

    move-object/from16 v9, v22

    move-object/from16 v15, v26

    const/4 v5, 0x0

    .end local v25    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_1

    .end local v5    # "pkgCount":I
    .end local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v14    # "pkgCount":I
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_4
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    .line 659
    .end local v13    # "i":I
    .end local v14    # "pkgCount":I
    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v5    # "pkgCount":I
    .restart local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    const/4 v9, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 660
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    .line 659
    move-object/from16 v14, v26

    .end local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v14, "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v14, v9, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 661
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    invoke-virtual {v14, v12, v13}, Lcom/android/server/usage/IntervalStats;->commitTime(J)V

    .line 634
    .end local v5    # "pkgCount":I
    .end local v14    # "stat":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v22

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 664
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 665
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v9, p1

    invoke-virtual {v5, v9, v10}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 666
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 668
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 669
    .local v5, "continueCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v5, :cond_a

    .line 670
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 671
    .local v12, "pkgName":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/16 v20, 0x0

    aget-object v13, v13, v20

    iget-wide v14, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 672
    .local v14, "beginTime":J
    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-wide/from16 v16, v14

    .end local v14    # "beginTime":J
    .local v16, "beginTime":J
    array-length v15, v13

    move/from16 v14, v20

    :goto_6
    if-ge v14, v15, :cond_9

    move/from16 v18, v15

    aget-object v15, v13, v14

    .line 673
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 674
    nop

    .line 675
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v5

    .end local v5    # "continueCount":I
    .local v21, "continueCount":I
    move-object/from16 v5, v19

    check-cast v5, Landroid/util/SparseIntArray;

    .line 676
    .local v5, "eventMap":Landroid/util/SparseIntArray;
    move-object/from16 v22, v6

    .end local v6    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 677
    .local v6, "size":I
    const/16 v19, 0x0

    move-object/from16 v23, v7

    move/from16 v7, v19

    .local v7, "j":I
    .local v23, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :goto_7
    if-ge v7, v6, :cond_6

    .line 678
    const/16 v19, 0x0

    .line 679
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v24

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v25

    .line 678
    move-object/from16 v26, v13

    move-object v13, v15

    move/from16 v29, v14

    move-wide/from16 v27, v16

    .end local v16    # "beginTime":J
    .local v27, "beginTime":J
    move-object v14, v12

    move-object/from16 v31, v15

    move/from16 v30, v18

    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v31, "stat":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v15, v19

    move/from16 v18, v24

    move/from16 v19, v25

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 677
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v13, v26

    move/from16 v14, v29

    move/from16 v18, v30

    move-object/from16 v15, v31

    goto :goto_7

    .end local v27    # "beginTime":J
    .end local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v16    # "beginTime":J
    :cond_6
    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    move-wide/from16 v27, v16

    move/from16 v30, v18

    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v16    # "beginTime":J
    .restart local v27    # "beginTime":J
    .restart local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    goto :goto_8

    .line 673
    .end local v21    # "continueCount":I
    .end local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v27    # "beginTime":J
    .end local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v5, "continueCount":I
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v16    # "beginTime":J
    :cond_7
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    move-wide/from16 v27, v16

    move/from16 v30, v18

    .line 682
    .end local v5    # "continueCount":I
    .end local v6    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v16    # "beginTime":J
    .restart local v21    # "continueCount":I
    .restart local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v27    # "beginTime":J
    .restart local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    :goto_8
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 683
    nop

    .line 684
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 685
    .local v5, "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 686
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_9
    if-ge v7, v6, :cond_8

    .line 687
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    .line 688
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    .line 687
    move-object/from16 v13, v31

    move-object v14, v12

    move-wide/from16 v16, v27

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 686
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 691
    .end local v5    # "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "size":I
    .end local v7    # "j":I
    :cond_8
    move-wide/from16 v5, v27

    move-object/from16 v7, v31

    .end local v27    # "beginTime":J
    .end local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v5, "beginTime":J
    .local v7, "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v7, v3, v5, v6}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 672
    .end local v7    # "stat":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v14, v29, 0x1

    move-wide/from16 v16, v5

    move/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v13, v26

    move/from16 v15, v30

    goto/16 :goto_6

    .end local v21    # "continueCount":I
    .end local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v5, "continueCount":I
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v16    # "beginTime":J
    :cond_9
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v5, v16

    .line 669
    .end local v5    # "continueCount":I
    .end local v6    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v16    # "beginTime":J
    .restart local v21    # "continueCount":I
    .restart local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_5

    .end local v21    # "continueCount":I
    .end local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v5    # "continueCount":I
    .restart local v6    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_a
    move/from16 v21, v5

    move-object/from16 v23, v7

    .line 695
    .end local v5    # "continueCount":I
    .end local v7    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11    # "i":I
    .restart local v21    # "continueCount":I
    .restart local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 697
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 698
    .local v5, "totalTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Rolling over usage stats complete. Took "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " milliseconds"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method private static stringToInterval(Ljava/lang/String;)I
    .locals 7
    .param p0, "interval"    # Ljava/lang/String;

    .line 1105
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "monthly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "daily"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "yearly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "weekly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    .line 1115
    return v3

    .line 1113
    :cond_1
    return v4

    .line 1111
    :cond_2
    return v5

    .line 1109
    :cond_3
    return v6

    .line 1107
    :cond_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f307f7f -> :sswitch_3
        -0x2bc88576 -> :sswitch_2
        0x5aede19 -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch
.end method

.method private updateRolloverDeadline()V
    .locals 4

    .line 746
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 748
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rollover scheduled @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 750
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 751
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void
.end method

.method private static validRange(JJJ)Z
    .locals 1
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .line 404
    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 1185
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 1186
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 1187
    return-void
.end method

.method checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 759
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    .line 766
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 769
    .local p2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    .line 770
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "compact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 773
    .local p2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V

    .line 774
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 775
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 776
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 777
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v1, v0

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    .end local v0    # "interval":I
    :cond_0
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 783
    :cond_1
    return-void
.end method

.method dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 786
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 787
    return-void
.end method

.method dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 794
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 806
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->stringToInterval(Ljava/lang/String;)I

    move-result v1

    .line 807
    .local v1, "intervalValue":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 808
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "interval":I
    goto :goto_0

    .line 810
    .end local v0    # "interval":I
    :cond_1
    move v0, v1

    .line 815
    .end local v1    # "intervalValue":I
    .restart local v0    # "interval":I
    :goto_0
    nop

    .line 816
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    goto :goto_1

    .line 820
    :cond_2
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 822
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_4

    .line 827
    :cond_3
    :try_start_1
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 831
    .local v3, "filename":J
    nop

    .line 832
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    .line 833
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    if-nez v1, :cond_4

    .line 834
    const-string v2, "the specified filename does not exist."

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 835
    return-void

    .line 837
    :cond_4
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    goto :goto_4

    .line 828
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v3    # "filename":J
    :catch_0
    move-exception v1

    .line 829
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "invalid filename specified."

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 830
    return-void

    .line 817
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_1
    const-string v1, "the specified interval does not exist."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 818
    return-void

    .line 812
    .end local v0    # "interval":I
    :catch_1
    move-exception v0

    .line 813
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v1, "invalid interval specified."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 814
    return-void

    .line 796
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v0, v0

    .line 797
    .local v0, "numIntervals":I
    const/4 v1, 0x0

    .local v1, "interval":I
    :goto_3
    if-ge v1, v0, :cond_7

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 800
    invoke-direct {p0, p1, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 801
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 803
    .end local v0    # "numIntervals":I
    .end local v1    # "interval":I
    :cond_7
    nop

    .line 840
    :goto_4
    return-void
.end method

.method dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 790
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 791
    return-void
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1179
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 1181
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method init(JLjava/util/HashMap;)V
    .locals 8
    .param p1, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p3, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0, p3}, Lcom/android/server/usage/UserUsageStatsService;->readPackageMappingsLocked(Ljava/util/HashMap;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 121
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->wasUpgradePerformed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "nullCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    aput-object v3, v2, v1

    .line 128
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_2
    if-lez v0, :cond_4

    .line 136
    array-length v1, v2

    if-eq v0, v1, :cond_3

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Some stats have no latest available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_1

    .line 151
    :cond_4
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 159
    .local v1, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    if-eqz v1, :cond_5

    .line 160
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    const/16 v3, 0x1a

    iget-wide v4, v1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iget-wide v6, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 161
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 162
    .local v2, "shutdownEvent":Landroid/app/usage/UsageEvents$Event;
    const-string v3, "android"

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 164
    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    const/16 v5, 0x1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 165
    .local v4, "startupEvent":Landroid/app/usage/UsageEvents$Event;
    iput-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v4}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 169
    .end local v2    # "shutdownEvent":Landroid/app/usage/UsageEvents$Event;
    .end local v4    # "startupEvent":Landroid/app/usage/UsageEvents$Event;
    :cond_5
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    .line 172
    :cond_6
    return-void
.end method

.method onPackageRemoved(Ljava/lang/String;J)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeRemoved"    # J

    .line 180
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->onPackageRemoved(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method persistActiveStats()V
    .locals 4

    .line 605
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_1

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Flushing usage stats to disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V

    .line 609
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    goto :goto_1

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed to persist active stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p3, "prettyDates"    # Z

    .line 876
    iget-wide v0, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 877
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 878
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 879
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    const-string v1, "class"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 882
    :cond_0
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 885
    :cond_1
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    const-string v1, "shortcutId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 888
    :cond_2
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 889
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyBucket()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "standbyBucket"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 890
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result v0

    invoke-static {v0}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    .line 891
    :cond_3
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_5

    .line 894
    :cond_4
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "instanceId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 897
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 898
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "taskRootPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 901
    :cond_6
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 902
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "taskRootClass"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 905
    :cond_7
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 906
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    const-string v1, "channelId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 908
    :cond_8
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 909
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 910
    return-void
.end method

.method printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "tracker"    # Lcom/android/server/usage/IntervalStats$EventTracker;
    .param p4, "prettyDates"    # Z

    .line 961
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 962
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 963
    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 964
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 965
    const-string v0, "x for "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 966
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-direct {p0, v3, v4, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 967
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 968
    const-string v0, " (now running, started at "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 969
    iget-wide v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-static {v0, v1, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 970
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 972
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 974
    :cond_2
    return-void
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    .locals 21
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "prettyDates"    # Z
    .param p4, "skipEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Lcom/android/server/usage/IntervalStats;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 978
    .local p5, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    if-eqz v3, :cond_0

    .line 979
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    iget-wide v8, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v10, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v12, 0x20015

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeRange"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    .line 982
    :cond_0
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "beginTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 983
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "endTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 985
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 986
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 987
    const-string v5, "packages"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 989
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 990
    .local v5, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 991
    .local v6, "pkgCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const-string v8, "package"

    if-ge v7, v6, :cond_2

    .line 992
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 993
    .local v9, "usageStats":Landroid/app/usage/UsageStats;
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 994
    goto :goto_2

    .line 996
    :cond_1
    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 997
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 998
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 997
    const-string v10, "totalTimeUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 999
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "lastTimeUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1000
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 1001
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1000
    const-string v10, "totalTimeVisible"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1002
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 1003
    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1002
    const-string v10, "lastTimeVisible"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1004
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 1005
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1004
    const-string v10, "totalTimeFS"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1006
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 1007
    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1006
    const-string v10, "lastTimeFS"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1008
    iget v8, v9, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "appLaunchCount"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1009
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 991
    .end local v9    # "usageStats":Landroid/app/usage/UsageStats;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1011
    .end local v7    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1013
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1014
    const-string v7, "ChooserCounts"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1016
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 1017
    .local v10, "usageStats":Landroid/app/usage/UsageStats;
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1018
    goto :goto_3

    .line 1020
    :cond_3
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1021
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v11, :cond_7

    .line 1022
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 1023
    .local v11, "chooserCountSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v11, :cond_6

    .line 1024
    iget-object v13, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1025
    .local v13, "action":Ljava/lang/String;
    iget-object v14, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    .line 1026
    .local v14, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 1027
    .local v15, "annotationSize":I
    const/16 v16, 0x0

    move-object/from16 v17, v5

    move/from16 v5, v16

    .local v5, "j":I
    .local v17, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :goto_5
    if-ge v5, v15, :cond_5

    .line 1028
    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v6

    .end local v6    # "pkgCount":I
    .local v18, "pkgCount":I
    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 1029
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1030
    .local v16, "count":I
    if-eqz v16, :cond_4

    .line 1031
    move-object/from16 v19, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1031
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1033
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_6

    .line 1030
    :cond_4
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 1027
    .end local v6    # "key":Ljava/lang/String;
    .end local v16    # "count":I
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_5

    .end local v18    # "pkgCount":I
    .local v6, "pkgCount":I
    :cond_5
    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 1023
    .end local v5    # "j":I
    .end local v6    # "pkgCount":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "annotationSize":I
    .restart local v18    # "pkgCount":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v17

    goto :goto_4

    .end local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18    # "pkgCount":I
    .local v5, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    :cond_6
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .restart local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18    # "pkgCount":I
    goto :goto_7

    .line 1021
    .end local v11    # "chooserCountSize":I
    .end local v12    # "i":I
    .end local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18    # "pkgCount":I
    .restart local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    :cond_7
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 1038
    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .restart local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18    # "pkgCount":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1039
    .end local v10    # "usageStats":Landroid/app/usage/UsageStats;
    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto/16 :goto_3

    .line 1040
    .end local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18    # "pkgCount":I
    .restart local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    :cond_8
    move-object/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .restart local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18    # "pkgCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1042
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1043
    const-string v5, "configurations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1045
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 1046
    .local v5, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1047
    .local v6, "configCount":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    if-ge v7, v6, :cond_9

    .line 1048
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/ConfigurationStats;

    .line 1049
    .local v8, "config":Landroid/app/usage/ConfigurationStats;
    iget-object v9, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1051
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-direct {v0, v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v10, "totalTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1052
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lastTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1053
    iget v9, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "count"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1054
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1047
    .end local v8    # "config":Landroid/app/usage/ConfigurationStats;
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 1056
    .end local v7    # "i":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1057
    const-string v7, "event aggregations"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1059
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "screen-interactive"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1061
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "screen-non-interactive"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1063
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "keyguard-shown"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1065
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "keyguard-hidden"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1067
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1072
    .end local v5    # "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    .end local v6    # "configCount":I
    :cond_a
    if-nez p4, :cond_e

    .line 1073
    const-string v5, "events"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1075
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 1076
    .local v5, "events":Landroid/app/usage/EventList;
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/app/usage/EventList;->size()I

    move-result v6

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    .line 1077
    .local v6, "eventCount":I
    :goto_9
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a
    if-ge v7, v6, :cond_d

    .line 1078
    invoke-virtual {v5, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v8

    .line 1079
    .local v8, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v8, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1080
    goto :goto_b

    .line 1082
    :cond_c
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 1077
    .end local v8    # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 1084
    .end local v7    # "i":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1086
    .end local v5    # "events":Landroid/app/usage/EventList;
    .end local v6    # "eventCount":I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1087
    return-void
.end method

.method printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V
    .locals 18
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "prettyDates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 914
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 915
    .local v10, "endTime":J
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {v0, v10, v11}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    move-object v12, v0

    .line 916
    .local v12, "yesterday":Lcom/android/server/usage/UnixCalendar;
    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 918
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v13

    .line 920
    .local v13, "beginTime":J
    new-instance v15, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v4, v10

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/util/List;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v6

    .line 941
    .local v6, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const-string v0, "Last 24 hour events ("

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 942
    if-eqz v9, :cond_0

    .line 943
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v16, 0x20015

    move-wide v1, v13

    move-wide v3, v10

    move-object/from16 v17, v12

    move-object v12, v5

    .end local v12    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .local v17, "yesterday":Lcom/android/server/usage/UnixCalendar;
    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeRange"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    .line 946
    .end local v17    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .restart local v12    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    :cond_0
    move-object/from16 v17, v12

    .end local v12    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .restart local v17    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "beginTime"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 947
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "endTime"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 949
    :goto_0
    const-string v0, ")"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 950
    if-eqz v6, :cond_2

    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 952
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 953
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 954
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    goto :goto_1

    .line 955
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 957
    :cond_2
    return-void
.end method

.method pruneUninstalledPackagesData()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->pruneUninstalledPackagesData()Z

    move-result v0

    return v0
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    return-object v0

    .line 490
    :cond_0
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEventStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 494
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    return-object v0

    .line 497
    :cond_0
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJI)Landroid/app/usage/UsageEvents;
    .locals 12
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "flags"    # I

    .line 501
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 502
    return-object v1

    .line 504
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 505
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object v2, v11

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJILandroid/util/ArraySet;)V

    move-object v2, p0

    move v3, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v2

    .line 553
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 558
    .local v1, "table":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 559
    new-instance v3, Landroid/app/usage/UsageEvents;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    .line 554
    .end local v1    # "table":[Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1
.end method

.method queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .locals 13
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "includeTaskRoot"    # Z

    .line 564
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 565
    return-object v1

    .line 567
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 568
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v10, p5

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 569
    const/4 v11, 0x0

    new-instance v12, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;

    move-object v2, v12

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object v8, v0

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    move-object v2, p0

    move v3, v11

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v2

    .line 595
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v4, p6

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 600
    .local v1, "table":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 601
    new-instance v3, Landroid/app/usage/UsageEvents;

    move/from16 v4, p6

    invoke-direct {v3, v2, v1, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    .line 595
    .end local v1    # "table":[Ljava/lang/String;
    :cond_2
    move/from16 v4, p6

    .line 596
    :goto_0
    return-object v1
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 480
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    return-object v0

    .line 483
    :cond_0
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .locals 17
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/server/usage/UserUsageStatsService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got usage event for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 277
    invoke-static {v3}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    const-string v3, "UsageStatsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 281
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UserUsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 283
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 285
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    .line 288
    :cond_1
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 290
    .local v2, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 291
    .local v4, "newFullConfig":Landroid/content/res/Configuration;
    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_2

    .line 294
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v5, v4}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 298
    :cond_2
    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x6

    if-eq v5, v7, :cond_3

    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x18

    if-eq v5, v7, :cond_3

    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x19

    if-eq v5, v7, :cond_3

    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_3

    .line 307
    invoke-virtual {v2, v1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 310
    :cond_3
    const/4 v5, 0x0

    .line 311
    .local v5, "incrementAppLaunch":Z
    iget v7, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 312
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 313
    const/4 v5, 0x1

    goto :goto_0

    .line 315
    :cond_4
    iget v7, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 316
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 317
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    .line 321
    :cond_5
    :goto_0
    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_a

    aget-object v15, v7, v9

    .line 322
    .local v15, "stats":Lcom/android/server/usage/IntervalStats;
    iget v10, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v10, v6, :cond_8

    const/16 v11, 0x9

    if-eq v10, v11, :cond_6

    packed-switch v10, :pswitch_data_0

    .line 348
    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v10, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    move/from16 v16, v10

    move-object v10, v15

    move-object v6, v15

    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    .local v6, "stats":Lcom/android/server/usage/IntervalStats;
    move/from16 v15, v16

    move/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 350
    if-eqz v5, :cond_9

    .line 351
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/android/server/usage/IntervalStats;->incrementAppLaunchCount(Ljava/lang/String;)V

    goto :goto_3

    .line 345
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_0
    move-object v6, v15

    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateKeyguardHidden(J)V

    .line 346
    goto :goto_3

    .line 342
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_1
    move-object v6, v15

    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateKeyguardShown(J)V

    .line 343
    goto :goto_3

    .line 339
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_2
    move-object v6, v15

    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateScreenNonInteractive(J)V

    .line 340
    goto :goto_3

    .line 336
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_3
    move-object v6, v15

    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateScreenInteractive(J)V

    .line 337
    goto :goto_3

    .line 327
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_6
    move-object v6, v15

    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v3, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 329
    .local v3, "annotations":[Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 330
    array-length v10, v3

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_7

    aget-object v12, v3, v11

    .line 331
    .local v12, "annotation":Ljava/lang/String;
    iget-object v13, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v14, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v13, v12, v14}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v12    # "annotation":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 334
    .end local v3    # "annotations":[Ljava/lang/String;
    :cond_7
    goto :goto_3

    .line 324
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_8
    move-object v6, v15

    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    iget-wide v10, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v4, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 325
    nop

    .line 321
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_9
    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x5

    goto :goto_1

    .line 357
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 358
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updatePackageMappingsLocked(Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 204
    .local p1, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 205
    return v1

    .line 208
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 209
    .local v2, "timeNow":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "removedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 212
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v5, v5, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 213
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 214
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 217
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    return v1

    .line 222
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 223
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    .line 222
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 226
    .end local v4    # "i":I
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    nop

    .line 231
    return v1

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UsageStatsService"

    const-string v5, "Unable to write updated package mappings file on service initialization."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v4, 0x0

    return v4
.end method

.method userStopped()V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 177
    return-void
.end method
