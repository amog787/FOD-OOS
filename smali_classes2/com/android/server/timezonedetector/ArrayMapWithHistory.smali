.class public final Lcom/android/server/timezonedetector/ArrayMapWithHistory;
.super Ljava/lang/Object;
.source "ArrayMapWithHistory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArrayMapWithHistory"


# instance fields
.field private mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TK;",
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final mMaxHistorySize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxHistorySize"    # I

    .line 54
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 58
    iput p1, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMaxHistorySize:I

    .line 59
    return-void

    .line 56
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


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 138
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "{Empty}"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key idx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 144
    .local v1, "value":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "val idx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 147
    const-string v2, "Historic values=["

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 149
    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 151
    const-string v2, "]"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 141
    .end local v1    # "value":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 157
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 87
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 91
    .local v0, "valueHolder":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    if-nez v0, :cond_1

    .line 92
    return-object v1

    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->getHistoryCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" was unexpectedly empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArrayMapWithHistory"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getHistoryCountForKeyForTests(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    return v1

    .line 169
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 170
    .local v0, "valueHolder":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    if-nez v0, :cond_1

    .line 171
    return v1

    .line 172
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->getHistoryCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValuesSizeForKeyForTests(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\") was unexpectedly empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ArrayMapWithHistory"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v1

    .line 176
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->getHistoryCount()I

    move-result v1

    return v1
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 71
    .local v0, "valueHolder":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    if-nez v0, :cond_1

    .line 72
    new-instance v1, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    iget v2, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMaxHistorySize:I

    invoke-direct {v1, v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    move-object v0, v1

    .line 73
    iget-object v1, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->getHistoryCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" was unexpectedly empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArrayMapWithHistory"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 103
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 182
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrayMapWithHistory{mHistorySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMaxHistorySize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/android/server/timezonedetector/ArrayMapWithHistory;, "Lcom/android/server/timezonedetector/ArrayMapWithHistory<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 127
    .local v0, "valueHolder":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->getHistoryCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 128
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "valueAt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") was unexpectedly null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArrayMapWithHistory"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    return-object v1

    .line 123
    .end local v0    # "valueHolder":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method
