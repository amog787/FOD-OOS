.class public final Lcom/android/server/am/BroadcastStats;
.super Ljava/lang/Object;
.source "BroadcastStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastStats$ViolationEntry;,
        Lcom/android/server/am/BroadcastStats$PackageEntry;,
        Lcom/android/server/am/BroadcastStats$ActionEntry;
    }
.end annotation


# static fields
.field static final ACTIONS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field mEndRealtime:J

.field mEndUptime:J

.field final mStartRealtime:J

.field final mStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/server/am/BroadcastStats$1;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastStats$1;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    .line 72
    return-void
.end method


# virtual methods
.method public addBackgroundCheckViolation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 97
    .local v0, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-nez v0, :cond_0

    .line 98
    new-instance v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 99
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 102
    .local v1, "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    if-nez v1, :cond_1

    .line 103
    new-instance v2, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastStats$ViolationEntry;-><init>()V

    move-object v1, v2

    .line 104
    iget-object v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    iget v2, v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    .line 107
    return-void
.end method

.method public addBroadcast(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "srcPackage"    # Ljava/lang/String;
    .param p3, "receiveCount"    # I
    .param p4, "skipCount"    # I
    .param p5, "dispatchTime"    # J

    .line 76
    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 77
    .local v0, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-nez v0, :cond_0

    .line 78
    new-instance v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 79
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    iget v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    .line 82
    iget v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    add-int/2addr v1, p4

    iput v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    .line 83
    iget-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    add-long/2addr v1, p5

    iput-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    .line 84
    iget-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    cmp-long v1, v1, p5

    if-gez v1, :cond_1

    .line 85
    iput-wide p5, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    .line 87
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 88
    .local v1, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    if-nez v1, :cond_2

    .line 89
    new-instance v2, Lcom/android/server/am/BroadcastStats$PackageEntry;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastStats$PackageEntry;-><init>()V

    move-object v1, v2

    .line 90
    iget-object v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2
    iget v2, v1, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    .line 93
    return-void
.end method

.method public dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 159
    const-string v0, "broadcast-stats,1,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 161
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    iget-wide v1, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-wide v1, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 165
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 166
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 167
    .local v2, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-eqz p2, :cond_2

    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    goto/16 :goto_3

    .line 170
    :cond_2
    const-string v3, "a,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 180
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 181
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 182
    const-string/jumbo v4, "p,"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 185
    .local v4, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget v5, v4, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 187
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 181
    .end local v4    # "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 189
    .end local v3    # "j":I
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "j":I
    :goto_2
    if-ltz v3, :cond_4

    .line 190
    const-string/jumbo v4, "v,"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 193
    .local v4, "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget v5, v4, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 195
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 189
    .end local v4    # "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 165
    .end local v2    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    .end local v3    # "j":I
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "printedSomething":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastStats$ActionEntry;>;"
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    :cond_0
    sget-object v2, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 117
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    .line 118
    .local v3, "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    if-eqz p3, :cond_1

    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    goto/16 :goto_4

    .line 121
    :cond_1
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    const-string v4, "  Number received: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 128
    const-string v4, ", skipped: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 130
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    const-string v4, "  Total dispatch time: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 133
    const-string v4, ", max: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 135
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 136
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_2
    const-string v5, " times"

    const-string v6, ": "

    if-ltz v4, :cond_2

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    const-string v7, "  Package "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v6, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 142
    .local v6, "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    iget v7, v6, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 143
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .end local v6    # "pe":Lcom/android/server/am/BroadcastStats$PackageEntry;
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 145
    .end local v4    # "j":I
    :cond_2
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "j":I
    :goto_3
    if-ltz v4, :cond_3

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    const-string v7, "  Bg Check Violation "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v7, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 151
    .local v7, "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    iget v8, v7, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 152
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .end local v7    # "ve":Lcom/android/server/am/BroadcastStats$ViolationEntry;
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 116
    .end local v3    # "ae":Lcom/android/server/am/BroadcastStats$ActionEntry;
    .end local v4    # "j":I
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 155
    .end local v2    # "i":I
    :cond_4
    return v0
.end method
