.class public Lcom/android/server/display/utils/RollingBuffer;
.super Ljava/lang/Object;
.source "RollingBuffer.java"


# static fields
.field private static final INITIAL_SIZE:I = 0x32


# instance fields
.field private mCount:I

.field private mEnd:I

.field private mSize:I

.field private mStart:I

.field private mTimes:[J

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 36
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 37
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 38
    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->clear()V

    .line 39
    return-void
.end method

.method private expandBuffer()V
    .locals 7

    .line 161
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 162
    .local v0, "size":I
    new-array v1, v0, [J

    .line 163
    .local v1, "times":[J
    new-array v2, v0, [F

    .line 164
    .local v2, "values":[F
    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    .line 169
    iput v6, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 170
    iget v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iput v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 171
    iput-object v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    .line 172
    iput-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    .line 173
    return-void
.end method

.method private getLatestIndexBefore(J)I
    .locals 3
    .param p1, "time"    # J

    .line 176
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge v0, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    invoke-direct {p0, v0}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v2

    aget-wide v1, v1, v2

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    .line 178
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private offsetOf(I)I
    .locals 3
    .param p1, "index"    # I

    .line 153
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge p1, v0, :cond_0

    .line 157
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    rem-int/2addr v0, v1

    return v0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(JF)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "value"    # F

    .line 50
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    if-lt v0, v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/server/display/utils/RollingBuffer;->expandBuffer()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    aput-wide p1, v0, v1

    .line 54
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    aput p3, v0, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 56
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 57
    return-void
.end method

.method public clear()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 129
    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 130
    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    .line 131
    return-void
.end method

.method public getTime(I)J
    .locals 2
    .param p1, "index"    # I

    .line 86
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValue(I)F
    .locals 2
    .param p1, "index"    # I

    .line 98
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge v1, v2, :cond_1

    .line 142
    invoke-direct {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v2

    .line 143
    .local v2, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-eq v3, v4, :cond_0

    .line 145
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    .end local v2    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public truncate(J)V
    .locals 3
    .param p1, "minTime"    # J

    .line 108
    invoke-virtual {p0}, Lcom/android/server/display/utils/RollingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/utils/RollingBuffer;->getLatestIndexBefore(J)I

    move-result v0

    .line 112
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    .line 113
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    .line 121
    iget-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    aput-wide p1, v2, v1

    .line 122
    return-void

    .line 109
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void
.end method
