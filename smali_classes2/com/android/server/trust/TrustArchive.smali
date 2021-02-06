.class public Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustArchive$Event;
    }
.end annotation


# static fields
.field private static final HISTORY_LIMIT:I = 0xc8

.field private static final TYPE_AGENT_CONNECTED:I = 0x4

.field private static final TYPE_AGENT_DIED:I = 0x3

.field private static final TYPE_AGENT_STOPPED:I = 0x5

.field private static final TYPE_GRANT_TRUST:I = 0x0

.field private static final TYPE_MANAGING_TRUST:I = 0x6

.field private static final TYPE_POLICY_CHANGED:I = 0x7

.field private static final TYPE_REVOKE_TRUST:I = 0x1

.field private static final TYPE_TRUST_TIMEOUT:I = 0x2


# instance fields
.field mEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/trust/TrustArchive$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    return-void
.end method

.method private addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .locals 2
    .param p1, "e"    # Lcom/android/server/trust/TrustArchive$Event;

    .line 108
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private dumpGrantFlags(I)Ljava/lang/String;
    .locals 3
    .param p1, "flags"    # I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    const/16 v2, 0x7c

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    const-string v1, "INITIATED_BY_USER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_2
    const-string v1, "DISMISS_KEYGUARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 210
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_0
    const-string v0, "DevicePolicyChanged"

    return-object v0

    .line 191
    :pswitch_1
    const-string v0, "ManagingTrust"

    return-object v0

    .line 189
    :pswitch_2
    const-string v0, "AgentStopped"

    return-object v0

    .line 187
    :pswitch_3
    const-string v0, "AgentConnected"

    return-object v0

    .line 185
    :pswitch_4
    const-string v0, "AgentDied"

    return-object v0

    .line 183
    :pswitch_5
    const-string v0, "TrustTimeout"

    return-object v0

    .line 181
    :pswitch_6
    const-string v0, "RevokeTrust"

    return-object v0

    .line 179
    :pswitch_7
    const-string v0, "GrantTrust"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 2
    .param p0, "duration"    # J

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatElapsed(J)Ljava/lang/String;
    .locals 5
    .param p0, "elapsed"    # J

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p0, v0

    .line 162
    .local v0, "delta":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 163
    .local v2, "wallTime":J
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 167
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 169
    .local v1, "idx":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-ltz v1, :cond_0

    .line 170
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 172
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V
    .locals 10
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "limit"    # I
    .param p3, "userId"    # I
    .param p4, "linePrefix"    # Ljava/lang/String;
    .param p5, "duplicateSimpleNames"    # Z

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/trust/TrustArchive$Event;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    if-ge v0, p2, :cond_6

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustArchive$Event;

    .line 120
    .local v2, "ev":Lcom/android/server/trust/TrustArchive$Event;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iget v4, v2, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq p3, v4, :cond_0

    iget v4, v2, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-eq v4, v3, :cond_0

    .line 122
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-wide v8, v2, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    invoke-static {v8, v9}, Lcom/android/server/trust/TrustArchive;->formatElapsed(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    iget v6, v2, Lcom/android/server/trust/TrustArchive$Event;->type:I

    .line 127
    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustArchive;->dumpType(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 126
    const-string v6, "#%-2d %s %s: "

    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    if-ne p3, v3, :cond_1

    .line 129
    const-string v3, "user="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object v3, v2, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 132
    const-string v3, "agent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    if-eqz p5, :cond_2

    .line 134
    iget-object v3, v2, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v3, v2, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {v3}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    :cond_3
    :goto_1
    iget v3, v2, Lcom/android/server/trust/TrustArchive$Event;->type:I

    if-eqz v3, :cond_5

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    goto :goto_2

    .line 145
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", managingTrust="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 146
    goto :goto_2

    .line 141
    :cond_5
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, v2, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-wide v4, v2, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    .line 142
    invoke-static {v4, v5}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget v4, v2, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    invoke-direct {p0, v4}, Lcom/android/server/trust/TrustArchive;->dumpGrantFlags(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 141
    const-string v4, ", message=\"%s\", duration=%s, flags=%s"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 143
    nop

    .line 149
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 150
    nop

    .end local v2    # "ev":Lcom/android/server/trust/TrustArchive$Event;
    add-int/lit8 v0, v0, 0x1

    .line 151
    goto/16 :goto_0

    .line 152
    :cond_6
    return-void
.end method

.method public logAgentConnected(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 92
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 93
    return-void
.end method

.method public logAgentDied(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 88
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 89
    return-void
.end method

.method public logAgentStopped(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 96
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 97
    return-void
.end method

.method public logDevicePolicyChanged()V
    .locals 11

    .line 104
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 105
    return-void
.end method

.method public logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JI)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "flags"    # I

    .line 75
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 77
    return-void
.end method

.method public logManagingTrust(ILandroid/content/ComponentName;Z)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "managing"    # Z

    .line 100
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 101
    return-void
.end method

.method public logRevokeTrust(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 80
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 81
    return-void
.end method

.method public logTrustTimeout(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .line 84
    new-instance v10, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v10}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 85
    return-void
.end method
