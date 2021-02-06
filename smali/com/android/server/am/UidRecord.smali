.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidRecord$ChangeItem;
    }
.end annotation


# static fields
.field static final CHANGE_ACTIVE:I = 0x4

.field static final CHANGE_CACHED:I = 0x8

.field static final CHANGE_GONE:I = 0x1

.field static final CHANGE_IDLE:I = 0x2

.field static final CHANGE_PROCSTATE:I = 0x0

.field static final CHANGE_UNCACHED:I = 0x10

.field private static ORIG_ENUMS:[I

.field private static PROTO_ENUMS:[I


# instance fields
.field curCapability:I

.field curProcStateSeq:J

.field curWhitelist:Z

.field ephemeral:Z

.field foregroundServices:Z

.field volatile hasInternetPermission:Z

.field idle:Z

.field lastBackgroundTime:J

.field lastDispatchedProcStateSeq:J

.field lastNetworkUpdatedProcStateSeq:J

.field lastReportedChange:I

.field mCurProcState:I

.field final networkStateLock:Ljava/lang/Object;

.field numProcs:I

.field packageName:Ljava/lang/String;

.field pendingChange:Lcom/android/server/am/UidRecord$ChangeItem;

.field procRecords:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field setCapability:I

.field setIdle:Z

.field setProcState:I

.field setWhitelist:Z

.field final uid:I

.field volatile waitingForNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 108
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "_uid"    # I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 54
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->procRecords:Landroid/util/ArraySet;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 130
    iput p1, p0, Lcom/android/server/am/UidRecord;->uid:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->idle:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    .line 133
    return-void
.end method


# virtual methods
.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 168
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 169
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/UidRecord;->uid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 170
    iget v2, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 171
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->ephemeral:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 172
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 173
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 174
    iget-wide v8, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 174
    const-wide v6, 0x10b00000006L

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 176
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->idle:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 177
    iget v8, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    if-eqz v8, :cond_0

    .line 178
    const-wide v6, 0x20e00000008L

    sget-object v9, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v10, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 181
    :cond_0
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/am/UidRecord;->numProcs:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 183
    const-wide v2, 0x10b0000000aL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 184
    .local v2, "seqToken":J
    const-wide v4, 0x10300000001L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 185
    const-wide v4, 0x10300000002L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 187
    const-wide v4, 0x10300000003L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 188
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 190
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 191
    return-void
.end method

.method public getCurProcState()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 144
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    .line 146
    iput v0, p0, Lcom/android/server/am/UidRecord;->curCapability:I

    .line 148
    return-void
.end method

.method public setCurProcState(I)V
    .locals 0
    .param p1, "curProcState"    # I

    .line 140
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    iget v2, p0, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->ephemeral:Z

    if-eqz v1, :cond_0

    .line 202
    const-string v1, " ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v1, :cond_1

    .line 205
    const-string v1, " fgServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eqz v1, :cond_2

    .line 208
    const-string v1, " whitelist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_2
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 211
    const-string v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 214
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v1, :cond_4

    .line 215
    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_4
    iget v1, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    if-eqz v1, :cond_d

    .line 218
    const-string v1, " change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "printed":Z
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 221
    const/4 v1, 0x1

    .line 222
    const-string v2, "gone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_5
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_7

    .line 225
    if-eqz v1, :cond_6

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_6
    const/4 v1, 0x1

    .line 229
    const-string v2, "idle"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_7
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    .line 232
    if-eqz v1, :cond_8

    .line 233
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_8
    const/4 v1, 0x1

    .line 236
    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_9
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    .line 239
    if-eqz v1, :cond_a

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_a
    const/4 v1, 0x1

    .line 243
    const-string v2, "cached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_b
    iget v2, p0, Lcom/android/server/am/UidRecord;->lastReportedChange:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_d

    .line 246
    if-eqz v1, :cond_c

    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_c
    const-string/jumbo v2, "uncached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .end local v1    # "printed":Z
    :cond_d
    const-string v1, " procs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Lcom/android/server/am/UidRecord;->numProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, " seq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-wide v2, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateHasInternetPermission()V
    .locals 2

    .line 151
    iget v0, p0, Lcom/android/server/am/UidRecord;->uid:I

    const-string v1, "android.permission.INTERNET"

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    .line 153
    return-void
.end method

.method public updateLastDispatchedProcStateSeq(I)V
    .locals 2
    .param p1, "changeToDispatch"    # I

    .line 161
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 162
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    iput-wide v0, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    .line 164
    :cond_0
    return-void
.end method
