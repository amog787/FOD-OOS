.class public abstract Lcom/android/server/display/utils/AmbientFilter;
.super Ljava/lang/Object;
.source "AmbientFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p2}, Lcom/android/server/display/utils/AmbientFilter;->validateArguments(I)V

    .line 59
    iput-object p1, p0, Lcom/android/server/display/utils/AmbientFilter;->mTag:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mLoggingEnabled:Z

    .line 61
    iput p2, p0, Lcom/android/server/display/utils/AmbientFilter;->mHorizon:I

    .line 62
    new-instance v0, Lcom/android/server/display/utils/RollingBuffer;

    invoke-direct {v0}, Lcom/android/server/display/utils/RollingBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 63
    return-void
.end method

.method private truncateOldValues(J)V
    .locals 3
    .param p1, "time"    # J

    .line 147
    iget v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mHorizon:I

    int-to-long v0, v0

    sub-long v0, p1, v0

    .line 148
    .local v0, "minTime":J
    iget-object v2, p0, Lcom/android/server/display/utils/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/utils/RollingBuffer;->truncate(J)V

    .line 149
    return-void
.end method

.method private validateArguments(I)V
    .locals 2
    .param p1, "horizon"    # I

    .line 141
    if-lez p1, :cond_0

    .line 144
    return-void

    .line 142
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

    .line 76
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;->truncateOldValues(J)V

    .line 80
    iget-boolean v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mTag:Ljava/lang/String;

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

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/utils/RollingBuffer;->add(JF)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/utils/RollingBuffer;->clear()V

    .line 109
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/utils/AmbientFilter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/utils/AmbientFilter;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/utils/AmbientFilter;->mHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/utils/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected abstract filter(JLcom/android/server/display/utils/RollingBuffer;)F
.end method

.method public getEstimate(J)F
    .locals 4
    .param p1, "time"    # J

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;->truncateOldValues(J)V

    .line 97
    iget-object v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/utils/AmbientFilter;->filter(JLcom/android/server/display/utils/RollingBuffer;)F

    move-result v0

    .line 98
    .local v0, "value":F
    iget-boolean v1, p0, Lcom/android/server/display/utils/AmbientFilter;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/server/display/utils/AmbientFilter;->mTag:Ljava/lang/String;

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

    .line 101
    :cond_0
    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 120
    iget-boolean v0, p0, Lcom/android/server/display/utils/AmbientFilter;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/utils/AmbientFilter;->mLoggingEnabled:Z

    .line 124
    const/4 v0, 0x1

    return v0
.end method
