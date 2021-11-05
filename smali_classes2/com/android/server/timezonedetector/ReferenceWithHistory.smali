.class public final Lcom/android/server/timezonedetector/ReferenceWithHistory;
.super Ljava/lang/Object;
.source "ReferenceWithHistory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NULL_MARKER:Ljava/lang/Object;


# instance fields
.field private final mMaxHistorySize:I

.field private mValues:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "{null marker}"

    sput-object v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->NULL_MARKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxHistorySize"    # I

    .line 69
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 73
    iput p1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    .line 74
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxHistorySize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private packNullIfRequired(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->NULL_MARKER:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private unpackNullIfRequired(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    sget-object v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->NULL_MARKER:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 111
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "{Empty}"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_0
    const/4 v1, 0x0

    .line 115
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "value":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->unpackNullIfRequired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 117
    nop

    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 118
    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 121
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->unpackNullIfRequired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHistoryCount()I
    .locals 1

    .line 127
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    if-lt v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->packNullIfRequired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "nullSafeValue":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 104
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 132
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
