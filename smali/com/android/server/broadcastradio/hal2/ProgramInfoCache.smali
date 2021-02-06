.class Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
.super Ljava/lang/Object;
.source "ProgramInfoCache.java"


# static fields
.field private static final MAX_NUM_MODIFIED_PER_CHUNK:I = 0x64

.field private static final MAX_NUM_REMOVED_PER_CHUNK:I = 0x1f4


# instance fields
.field private mComplete:Z

.field private final mFilter:Landroid/hardware/radio/ProgramList$Filter;

.field private final mProgramInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 60
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 61
    return-void
.end method

.method varargs constructor <init>(Landroid/hardware/radio/ProgramList$Filter;Z[Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 5
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;
    .param p2, "complete"    # Z
    .param p3, "programInfos"    # [Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 67
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 68
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 69
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 70
    .local v2, "programInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v2    # "programInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method private static buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;
    .locals 16
    .param p0, "purge"    # Z
    .param p1, "complete"    # Z
    .param p3, "maxNumModifiedPerChunk"    # I
    .param p5, "maxNumRemovedPerChunk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;I",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    .line 237
    .local p2, "modified":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .local p4, "removed":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    if-eqz p0, :cond_0

    .line 238
    const/4 v0, 0x0

    .end local p4    # "removed":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    .local v0, "removed":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    goto :goto_0

    .line 237
    .end local v0    # "removed":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    .restart local p4    # "removed":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    :cond_0
    move-object/from16 v0, p4

    .line 242
    .end local p4    # "removed":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    .restart local v0    # "removed":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    :goto_0
    const/4 v1, 0x0

    .line 243
    .local v1, "numChunks":I
    if-eqz p2, :cond_1

    .line 244
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v3, p3

    invoke-static {v2, v3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    move-result v1

    goto :goto_1

    .line 243
    :cond_1
    move/from16 v3, p3

    .line 246
    :goto_1
    if-eqz v0, :cond_2

    .line 247
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v4, p5

    invoke-static {v2, v4}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 246
    :cond_2
    move/from16 v4, p5

    .line 249
    :goto_2
    if-nez v1, :cond_3

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 255
    :cond_3
    const/4 v2, 0x0

    .line 256
    .local v2, "modifiedPerChunk":I
    const/4 v5, 0x0

    .line 257
    .local v5, "removedPerChunk":I
    const/4 v6, 0x0

    .line 258
    .local v6, "modifiedIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    const/4 v7, 0x0

    .line 259
    .local v7, "removedIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    if-eqz p2, :cond_4

    .line 260
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v8, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    move-result v2

    .line 261
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 263
    :cond_4
    if-eqz v0, :cond_5

    .line 264
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v8, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->roundUpFraction(II)I

    move-result v5

    .line 265
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 267
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v8, "chunks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramList$Chunk;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v1, :cond_a

    .line 269
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v10, "modifiedChunk":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 271
    .local v11, "removedChunk":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    if-eqz v6, :cond_6

    .line 272
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    if-ge v12, v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 273
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 276
    .end local v12    # "j":I
    :cond_6
    if-eqz v7, :cond_7

    .line 277
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_5
    if-ge v12, v5, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 278
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 281
    .end local v12    # "j":I
    :cond_7
    new-instance v12, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v14, 0x1

    if-eqz p0, :cond_8

    if-nez v9, :cond_8

    move v15, v14

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    :goto_6
    if-eqz p1, :cond_9

    add-int/lit8 v13, v1, -0x1

    if-ne v9, v13, :cond_9

    move v13, v14

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    invoke-direct {v12, v15, v13, v10, v11}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v10    # "modifiedChunk":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .end local v11    # "removedChunk":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 284
    .end local v9    # "i":I
    :cond_a
    return-object v8
.end method

.method static synthetic lambda$toString$0(Ljava/lang/StringBuilder;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .param p2, "programInfo"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 91
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Landroid/hardware/radio/RadioManager$ProgramInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    return-void
.end method

.method private passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z
    .locals 4
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 201
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 202
    return v1

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    .line 205
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    return v2

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    return v2

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector$Identifier;->isCategoryType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    return v2

    .line 214
    :cond_3
    return v1
.end method

.method private static roundUpFraction(II)I
    .locals 2
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 230
    div-int v0, p0, p1

    rem-int v1, p0, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z
    .locals 3
    .param p1, "newInfo"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 218
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    .line 219
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    .line 218
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 220
    .local v0, "oldInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 221
    return v1

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    const/4 v1, 0x0

    return v1

    .line 226
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method filterAndApplyChunk(Landroid/hardware/radio/ProgramList$Chunk;)Ljava/util/List;
    .locals 2
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    .line 165
    const/16 v0, 0x64

    const/16 v1, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/radio/ProgramList$Chunk;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method filterAndApplyChunkInternal(Landroid/hardware/radio/ProgramList$Chunk;II)Ljava/util/List;
    .locals 8
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;
    .param p2, "maxNumModifiedPerChunk"    # I
    .param p3, "maxNumRemovedPerChunk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            "II)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v0, "modified":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v7, v1

    .line 178
    .local v7, "removed":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 179
    .local v2, "info":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    .line 180
    .local v3, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-direct {p0, v3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v2    # "info":Landroid/hardware/radio/RadioManager$ProgramInfo;
    .end local v3    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 187
    .local v2, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v2    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    :cond_4
    goto :goto_1

    .line 192
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result v2

    if-ne v1, v2, :cond_6

    .line 193
    const/4 v1, 0x0

    return-object v1

    .line 195
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 196
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    move-object v3, v0

    move v4, p2

    move-object v5, v7

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method filterAndUpdateFrom(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;Z)Ljava/util/List;
    .locals 2
    .param p1, "other"    # Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
    .param p2, "purge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    .line 123
    const/16 v0, 0x64

    const/16 v1, 0x1f4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;ZII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;ZII)Ljava/util/List;
    .locals 8
    .param p1, "other"    # Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
    .param p2, "purge"    # Z
    .param p3, "maxNumModifiedPerChunk"    # I
    .param p4, "maxNumRemovedPerChunk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;",
            "ZII)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$Chunk;",
            ">;"
        }
    .end annotation

    .line 130
    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const/4 p2, 0x1

    .line 139
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v6, v0

    .line 140
    .local v6, "modified":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    .line 142
    .local v7, "removed":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    iget-object v0, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 144
    .local v2, "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    invoke-direct {p0, v2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->passesFilter(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 150
    .local v3, "newInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-direct {p0, v3}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->shouldIncludeInModified(Landroid/hardware/radio/RadioManager$ProgramInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 151
    goto :goto_0

    .line 153
    :cond_3
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .end local v2    # "id":Landroid/hardware/radio/ProgramSelector$Identifier;
    .end local v3    # "newInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    goto :goto_0

    .line 156
    :cond_4
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 157
    .local v1, "rem":Landroid/hardware/radio/ProgramSelector$Identifier;
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v1    # "rem":Landroid/hardware/radio/ProgramSelector$Identifier;
    goto :goto_1

    .line 159
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 160
    move v0, p2

    move-object v2, v6

    move v3, p3

    move-object v4, v7

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->buildChunks(ZZLjava/util/Collection;ILjava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/hardware/radio/ProgramList$Filter;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    return v0
.end method

.method varargs programInfosAreExactly([Landroid/hardware/radio/RadioManager$ProgramInfo;)Z
    .locals 5
    .param p1, "programInfos"    # [Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "expectedMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 78
    .local v3, "programInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-virtual {v3}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v3    # "programInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgramInfoCache(mComplete = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", mFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mFilter:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", mProgramInfoMap = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$ProgramInfoCache$8Nf8YYzW9LAiXXyiwugJWKl4YeQ;

    invoke-direct {v2, v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$ProgramInfoCache$8Nf8YYzW9LAiXXyiwugJWKl4YeQ;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 94
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateFromHalProgramListChunk(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 5
    .param p1, "chunk"    # Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 108
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 111
    :cond_0
    iget-object v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 112
    .local v1, "halProgramInfo":Landroid/hardware/broadcastradio/V2_0/ProgramInfo;
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v2

    .line 113
    .local v2, "programInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v1    # "halProgramInfo":Landroid/hardware/broadcastradio/V2_0/ProgramInfo;
    .end local v2    # "programInfo":Landroid/hardware/radio/RadioManager$ProgramInfo;
    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 116
    .local v1, "halProgramId":Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mProgramInfoMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v1    # "halProgramId":Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;
    goto :goto_1

    .line 118
    :cond_2
    iget-boolean v0, p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->mComplete:Z

    .line 119
    return-void
.end method
