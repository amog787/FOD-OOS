.class abstract Lcom/android/server/display/whitebalance/AmbientFilter;
.super Ljava/lang/Object;
.source "AmbientFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientFilter$WeightedMovingAverageAmbientFilter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false


# instance fields
.field private final mBuffer:Lcom/android/server/display/utils/RollingBuffer;

.field private final mHorizon:I

.field protected mLoggingEnabled:Z

.field protected final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "horizon"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0, p2}, Lcom/android/server/display/whitebalance/AmbientFilter;->validateArguments(I)V

    .line 61
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mTag:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    .line 63
    iput p2, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mHorizon:I

    .line 64
    new-instance v0, Lcom/android/server/display/utils/RollingBuffer;

    invoke-direct {v0}, Lcom/android/server/display/utils/RollingBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 65
    return-void
.end method

.method private truncateOldValues(J)V
    .locals 3
    .param p1, "time"    # J

    .line 149
    iget v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mHorizon:I

    int-to-long v0, v0

    sub-long v0, p1, v0

    .line 150
    .local v0, "minTime":J
    iget-object v2, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/utils/RollingBuffer;->truncate(J)V

    .line 151
    return-void
.end method

.method private validateArguments(I)V
    .locals 2
    .param p1, "horizon"    # I

    .line 143
    if-lez p1, :cond_0

    .line 146
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "horizon must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addValue(JF)Z
    .locals 3
    .param p1, "time"    # J
    .param p3, "value"    # F

    .line 78
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientFilter;->truncateOldValues(J)V

    .line 82
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/utils/RollingBuffer;->add(JF)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/utils/RollingBuffer;->clear()V

    .line 111
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected abstract filter(JLcom/android/server/display/utils/RollingBuffer;)F
.end method

.method public getEstimate(J)F
    .locals 4
    .param p1, "time"    # J

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientFilter;->truncateOldValues(J)V

    .line 99
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->filter(JLcom/android/server/display/utils/RollingBuffer;)F

    move-result v0

    .line 100
    .local v0, "value":F
    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get estimate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 122
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/AmbientFilter;->mLoggingEnabled:Z

    .line 126
    const/4 v0, 0x1

    return v0
.end method
