.class public Lcom/android/server/backup/remote/RemoteResult;
.super Ljava/lang/Object;
.source "RemoteResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/remote/RemoteResult$Type;
    }
.end annotation


# static fields
.field public static final FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

.field public static final FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

.field public static final FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;


# instance fields
.field private final mType:I

.field private final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    .line 37
    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    .line 38
    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    .line 50
    iput-wide p2, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    .line 51
    return-void
.end method

.method public static of(J)Lcom/android/server/backup/remote/RemoteResult;
    .locals 2
    .param p0, "value"    # J

    .line 42
    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    return-object v0
.end method

.method private toStringDescription()Ljava/lang/String;
    .locals 2

    .line 73
    iget v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 81
    const-string v0, "FAILED_THREAD_INTERRUPTED"

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 79
    :cond_1
    const-string v0, "FAILED_CANCELLED"

    return-object v0

    .line 77
    :cond_2
    const-string v0, "FAILED_TIMED_OUT"

    return-object v0

    .line 75
    :cond_3
    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 90
    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 93
    return v2

    .line 95
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/backup/remote/RemoteResult;

    .line 96
    .local v1, "that":Lcom/android/server/backup/remote/RemoteResult;
    iget v3, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    iget v4, v1, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    iget-wide v5, v1, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()J
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteResult;->isPresent()Z

    move-result v0

    const-string v1, "Can\'t obtain value of failed result"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteResult{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/backup/remote/RemoteResult;->toStringDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
