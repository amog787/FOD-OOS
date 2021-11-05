.class public Lcom/android/server/integrity/serializer/RuleBinarySerializer;
.super Ljava/lang/Object;
.source "RuleBinarySerializer.java"

# interfaces
.implements Lcom/android/server/integrity/serializer/RuleSerializer;


# static fields
.field static final INDEXED_RULE_SIZE_LIMIT:I = 0x186a0

.field static final NONINDEXED_RULE_SIZE_LIMIT:I = 0x3e8

.field static final TOTAL_RULE_SIZE_LIMIT:I = 0x30d40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBytesForString(Ljava/lang/String;Z)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "isHashedValue"    # Z

    .line 319
    if-nez p1, :cond_0

    .line 320
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 322
    :cond_0
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getBytesFromHexDigest(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$verifySize$0(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private serializeAtomicFormula(Landroid/content/integrity/AtomicFormula;Lcom/android/server/integrity/model/BitOutputStream;)V
    .locals 6
    .param p1, "atomicFormula"    # Landroid/content/integrity/AtomicFormula;
    .param p2, "bitOutputStream"    # Lcom/android/server/integrity/model/BitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    if-eqz p1, :cond_3

    .line 235
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 236
    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 237
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula;->getTag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 238
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    .line 240
    .local v2, "stringAtomicFormula":Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
    invoke-virtual {p2, v0, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 241
    nop

    .line 242
    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getIsHashedValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 241
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 245
    .end local v2    # "stringAtomicFormula":Landroid/content/integrity/AtomicFormula$StringAtomicFormula;
    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula;->getTag()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 246
    move-object v1, p1

    check-cast v1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    .line 248
    .local v1, "longAtomicFormula":Landroid/content/integrity/AtomicFormula$LongAtomicFormula;
    invoke-virtual {v1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getOperator()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 250
    invoke-virtual {v1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 251
    .local v2, "value":J
    const/16 v0, 0x20

    ushr-long v4, v2, v0

    long-to-int v0, v4

    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    .line 252
    long-to-int v0, v2

    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    .line 253
    .end local v1    # "longAtomicFormula":Landroid/content/integrity/AtomicFormula$LongAtomicFormula;
    .end local v2    # "value":J
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula;->getTag()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 254
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    .line 256
    .local v2, "booleanAtomicFormula":Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;
    invoke-virtual {p2, v0, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 257
    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeBooleanValue(ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 258
    .end local v2    # "booleanAtomicFormula":Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;
    nop

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v3, [Ljava/lang/Object;

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Invalid atomic formula type: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null atomic formula can not be serialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serializeBooleanValue(ZLcom/android/server/integrity/model/BitOutputStream;)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "bitOutputStream"    # Lcom/android/server/integrity/model/BitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p2, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    .line 312
    return-void
.end method

.method private serializeCompoundFormula(Landroid/content/integrity/CompoundFormula;Lcom/android/server/integrity/model/BitOutputStream;)V
    .locals 4
    .param p1, "compoundFormula"    # Landroid/content/integrity/CompoundFormula;
    .param p2, "bitOutputStream"    # Lcom/android/server/integrity/model/BitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    if-eqz p1, :cond_1

    .line 221
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 222
    invoke-virtual {p1}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 223
    invoke-virtual {p1}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/integrity/IntegrityFormula;

    .line 224
    .local v3, "formula":Landroid/content/integrity/IntegrityFormula;
    invoke-direct {p0, v3, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    .line 225
    .end local v3    # "formula":Landroid/content/integrity/IntegrityFormula;
    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p2, v1, v2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 227
    return-void

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null compound formula can not be serialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V
    .locals 4
    .param p1, "formula"    # Landroid/content/integrity/IntegrityFormula;
    .param p2, "bitOutputStream"    # Lcom/android/server/integrity/model/BitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    instance-of v0, p1, Landroid/content/integrity/AtomicFormula;

    if-eqz v0, :cond_0

    .line 204
    move-object v0, p1

    check-cast v0, Landroid/content/integrity/AtomicFormula;

    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeAtomicFormula(Landroid/content/integrity/AtomicFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    goto :goto_0

    .line 205
    :cond_0
    instance-of v0, p1, Landroid/content/integrity/CompoundFormula;

    if-eqz v0, :cond_1

    .line 206
    move-object v0, p1

    check-cast v0, Landroid/content/integrity/CompoundFormula;

    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeCompoundFormula(Landroid/content/integrity/CompoundFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    goto :goto_0

    .line 207
    :cond_1
    instance-of v0, p1, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    if-eqz v0, :cond_2

    .line 208
    const/4 v0, 0x3

    invoke-virtual {p2, v0, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid formula type: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V
    .locals 6
    .param p2, "bitOutputStream"    # Lcom/android/server/integrity/model/BitOutputStream;
    .param p3, "isIndexed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/integrity/model/BitOutputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    .local p1, "indexes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "START_KEY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 271
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    .line 274
    const-string v2, "END_KEY"

    if-eqz p3, :cond_1

    .line 275
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 276
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 277
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 278
    nop

    .line 279
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 278
    invoke-direct {p0, v5, v1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 280
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    .line 282
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 287
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    .line 288
    return-void
.end method

.method private serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "bitOutputStream"    # Lcom/android/server/integrity/model/BitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const/16 v0, 0x20

    invoke-virtual {p2, v0, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 307
    return-void
.end method

.method private serializeRule(Landroid/content/integrity/Rule;Lcom/android/server/integrity/model/BitOutputStream;)V
    .locals 2
    .param p1, "rule"    # Landroid/content/integrity/Rule;
    .param p2, "bitOutputStream"    # Lcom/android/server/integrity/model/BitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext()V

    .line 194
    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    .line 195
    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getEffect()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 198
    invoke-virtual {p2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext()V

    .line 199
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null rule can not be serialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serializeRuleFileMetadata(Ljava/util/Optional;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)V
    .locals 3
    .param p2, "outputStream"    # Lcom/android/server/integrity/model/ByteTrackedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/integrity/model/ByteTrackedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    .local p1, "formatVersion":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    .local v0, "formatVersionValue":I
    new-instance v1, Lcom/android/server/integrity/model/BitOutputStream;

    invoke-direct {v1, p2}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v1, "bitOutputStream":Lcom/android/server/integrity/model/BitOutputStream;
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 154
    invoke-virtual {v1}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    .line 155
    return-void
.end method

.method private serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;
    .locals 8
    .param p2, "outputStream"    # Lcom/android/server/integrity/model/ByteTrackedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;>;",
            "Lcom/android/server/integrity/model/ByteTrackedOutputStream;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    .local p1, "rulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/integrity/Rule;>;>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "serializeRuleList should never be called with null rule list."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 163
    new-instance v0, Lcom/android/server/integrity/model/BitOutputStream;

    invoke-direct {v0, p2}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    .local v0, "bitOutputStream":Lcom/android/server/integrity/model/BitOutputStream;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 165
    .local v1, "indexMapping":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->getWrittenBytesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "START_KEY"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 168
    .local v2, "sortedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 169
    .local v3, "indexTracker":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 170
    .local v5, "key":Ljava/lang/String;
    const/16 v6, 0x32

    if-lt v3, v6, :cond_1

    .line 171
    invoke-virtual {p2}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->getWrittenBytesCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/4 v3, 0x0

    .line 175
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/integrity/Rule;

    .line 176
    .local v7, "rule":Landroid/content/integrity/Rule;
    invoke-direct {p0, v7, v0}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRule(Landroid/content/integrity/Rule;Lcom/android/server/integrity/model/BitOutputStream;)V

    .line 177
    invoke-virtual {v0}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    .line 178
    nop

    .end local v7    # "rule":Landroid/content/integrity/Rule;
    add-int/lit8 v3, v3, 0x1

    .line 179
    goto :goto_2

    .line 180
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->getWrittenBytesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "END_KEY"

    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-object v1
.end method

.method private serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isHashedValue"    # Z
    .param p3, "bitOutputStream"    # Lcom/android/server/integrity/model/BitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    if-eqz p1, :cond_1

    .line 296
    invoke-static {p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->getBytesForString(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 298
    .local v0, "valueBytes":[B
    invoke-virtual {p3, p2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    .line 299
    array-length v1, v0

    const/16 v2, 0x8

    invoke-virtual {p3, v2, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 300
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, v0, v3

    .line 301
    .local v4, "valueByte":B
    invoke-virtual {p3, v2, v4}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 300
    .end local v4    # "valueByte":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :cond_0
    return-void

    .line 294
    .end local v0    # "valueBytes":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String value can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifySize(Ljava/util/Map;I)V
    .locals 4
    .param p2, "ruleSizeLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;>;I)V"
        }
    .end annotation

    .line 134
    .local p1, "ruleListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/integrity/Rule;>;>;"
    nop

    .line 135
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/serializer/-$$Lambda$RuleBinarySerializer$zQONQpJbeFriqC_n-BZzfoN_XZk;->INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleBinarySerializer$zQONQpJbeFriqC_n-BZzfoN_XZk;

    .line 136
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/serializer/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 137
    invoke-static {v1}, Ljava/util/stream/Collectors;->summingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 138
    .local v0, "totalRuleCount":I
    if-gt v0, p2, :cond_0

    .line 145
    return-void

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many rules provided in the indexing group. Provided "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 8
    .param p3, "rulesFileOutputStream"    # Ljava/io/OutputStream;
    .param p4, "indexingFileOutputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/OutputStream;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation

    .line 87
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    .local p2, "formatVersion":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    .line 91
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x30d40

    if-gt v0, v1, :cond_0

    .line 96
    nop

    .line 97
    invoke-static {p1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->splitRulesIntoIndexBuckets(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 100
    .local v0, "indexedRules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/integrity/Rule;>;>;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const v3, 0x186a0

    invoke-direct {p0, v2, v3}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(Ljava/util/Map;I)V

    .line 101
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v4, v3}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(Ljava/util/Map;I)V

    .line 102
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v5, 0x3e8

    invoke-direct {p0, v4, v5}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(Ljava/util/Map;I)V

    .line 105
    new-instance v4, Lcom/android/server/integrity/model/ByteTrackedOutputStream;

    invoke-direct {v4, p3}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .local v4, "ruleFileByteTrackedOutputStream":Lcom/android/server/integrity/model/ByteTrackedOutputStream;
    invoke-direct {p0, p2, v4}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleFileMetadata(Ljava/util/Optional;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)V

    .line 108
    nop

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 109
    invoke-direct {p0, v5, v4}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 112
    .local v5, "packageNameIndexes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 113
    invoke-direct {p0, v2, v4}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 116
    .local v2, "appCertificateIndexes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 117
    invoke-direct {p0, v6, v4}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 121
    .local v6, "unindexedRulesIndexes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v7, Lcom/android/server/integrity/model/BitOutputStream;

    invoke-direct {v7, p4}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    .local v7, "indexingBitOutputStream":Lcom/android/server/integrity/model/BitOutputStream;
    invoke-direct {p0, v5, v7, v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 123
    invoke-direct {p0, v2, v7, v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 125
    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 127
    invoke-virtual {v7}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    .line 130
    .end local v0    # "indexedRules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/integrity/Rule;>;>;>;"
    .end local v2    # "appCertificateIndexes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "ruleFileByteTrackedOutputStream":Lcom/android/server/integrity/model/ByteTrackedOutputStream;
    .end local v5    # "packageNameIndexes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "unindexedRulesIndexes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "indexingBitOutputStream":Lcom/android/server/integrity/model/BitOutputStream;
    nop

    .line 131
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many rules provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/integrity/serializer/RuleBinarySerializer;
    .end local p1    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    .end local p2    # "formatVersion":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .end local p3    # "rulesFileOutputStream":Ljava/io/OutputStream;
    .end local p4    # "indexingFileOutputStream":Ljava/io/OutputStream;
    throw v0

    .line 128
    .restart local p0    # "this":Lcom/android/server/integrity/serializer/RuleBinarySerializer;
    .restart local p1    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    .restart local p2    # "formatVersion":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .restart local p3    # "rulesFileOutputStream":Ljava/io/OutputStream;
    .restart local p4    # "indexingFileOutputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null rules cannot be serialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/integrity/serializer/RuleBinarySerializer;
    .end local p1    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    .end local p2    # "formatVersion":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .end local p3    # "rulesFileOutputStream":Ljava/io/OutputStream;
    .end local p4    # "indexingFileOutputStream":Ljava/io/OutputStream;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/integrity/serializer/RuleBinarySerializer;
    .restart local p1    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    .restart local p2    # "formatVersion":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .restart local p3    # "rulesFileOutputStream":Ljava/io/OutputStream;
    .restart local p4    # "indexingFileOutputStream":Ljava/io/OutputStream;
    :goto_0
    new-instance v1, Lcom/android/server/integrity/serializer/RuleSerializeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/integrity/serializer/RuleSerializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public serialize(Ljava/util/List;Ljava/util/Optional;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation

    .line 70
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    .local p2, "formatVersion":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    .local v0, "rulesOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 73
    .end local v0    # "rulesOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/integrity/serializer/RuleSerializeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/integrity/serializer/RuleSerializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
