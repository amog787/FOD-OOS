.class public Lcom/android/server/integrity/parser/RuleBinaryParser;
.super Ljava/lang/Object;
.source "RuleBinaryParser.java"

# interfaces
.implements Lcom/android/server/integrity/parser/RuleParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseAllRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;)Ljava/util/List;
    .locals 4
    .param p1, "randomAccessInputStream"    # Lcom/android/server/integrity/parser/RandomAccessInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessInputStream;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "parsedRules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    new-instance v1, Lcom/android/server/integrity/model/BitInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v1, "inputStream":Lcom/android/server/integrity/model/BitInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/integrity/model/BitInputStream;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 90
    invoke-direct {p0, v1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    return-object v0
.end method

.method private parseAtomicFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/AtomicFormula;
    .locals 9
    .param p1, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    .line 166
    .local v0, "key":I
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    .line 168
    .local v1, "operator":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 189
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "Unknown key: %d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getBooleanValue(Lcom/android/server/integrity/model/BitInputStream;)Z

    move-result v2

    .line 187
    .local v2, "booleanValue":Z
    new-instance v3, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    invoke-direct {v3, v0, v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;-><init>(IZ)V

    return-object v3

    .line 180
    .end local v2    # "booleanValue":Z
    :pswitch_1
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I

    move-result v2

    int-to-long v2, v2

    .line 181
    .local v2, "upper":J
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I

    move-result v4

    int-to-long v4, v4

    .line 182
    .local v4, "lower":J
    const/16 v6, 0x20

    shl-long v6, v2, v6

    or-long/2addr v6, v4

    .line 183
    .local v6, "longValue":J
    new-instance v8, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    invoke-direct {v8, v0, v1, v6, v7}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;-><init>(IIJ)V

    return-object v8

    .line 174
    .end local v2    # "upper":J
    .end local v4    # "lower":J
    .end local v6    # "longValue":J
    :pswitch_2
    invoke-virtual {p1, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 175
    .local v2, "isHashedValue":Z
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v3

    .line 176
    .local v3, "valueSize":I
    invoke-static {p1, v3, v2}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "stringValue":Ljava/lang/String;
    new-instance v5, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    invoke-direct {v5, v0, v4, v2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;Z)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private parseCompoundFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/CompoundFormula;
    .locals 4
    .param p1, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    .line 153
    .local v0, "connector":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "formulas":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/IntegrityFormula;>;"
    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v2

    .line 156
    .local v2, "parsedFormula":Landroid/content/integrity/IntegrityFormula;
    :goto_0
    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v2

    goto :goto_0

    .line 161
    :cond_0
    new-instance v3, Landroid/content/integrity/CompoundFormula;

    invoke-direct {v3, v0, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v3
.end method

.method private parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;
    .locals 5
    .param p1, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    .line 136
    .local v1, "separator":I
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v0, :cond_0

    .line 144
    new-instance v0, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    invoke-direct {v0}, Landroid/content/integrity/InstallerAllowedByManifestFormula;-><init>()V

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unknown formula separator: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseCompoundFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/CompoundFormula;

    move-result-object v0

    return-object v0

    .line 138
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseAtomicFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/AtomicFormula;

    move-result-object v0

    return-object v0
.end method

.method private parseIndexedRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "randomAccessInputStream"    # Lcom/android/server/integrity/parser/RandomAccessInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessInputStream;",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    .local p2, "indexRanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/integrity/parser/RuleIndexRange;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "parsedRules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 103
    .local v2, "range":Lcom/android/server/integrity/parser/RuleIndexRange;
    invoke-virtual {v2}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->seek(I)V

    .line 105
    new-instance v3, Lcom/android/server/integrity/model/BitInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Lcom/android/server/integrity/parser/LimitInputStream;

    .line 110
    invoke-virtual {v2}, Lcom/android/server/integrity/parser/RuleIndexRange;->getEndIndex()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v5, p1, v6}, Lcom/android/server/integrity/parser/LimitInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    .local v3, "inputStream":Lcom/android/server/integrity/model/BitInputStream;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/integrity/model/BitInputStream;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 115
    invoke-direct {p0, v3}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    .end local v2    # "range":Lcom/android/server/integrity/parser/RuleIndexRange;
    .end local v3    # "inputStream":Lcom/android/server/integrity/model/BitInputStream;
    :cond_1
    goto :goto_0

    .line 120
    :cond_2
    return-object v0
.end method

.method private parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;
    .locals 4
    .param p1, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    .line 125
    .local v0, "formula":Landroid/content/integrity/IntegrityFormula;
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    .line 127
    .local v1, "effect":I
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 131
    new-instance v2, Landroid/content/integrity/Rule;

    invoke-direct {v2, v0, v1}, Landroid/content/integrity/Rule;-><init>(Landroid/content/integrity/IntegrityFormula;I)V

    return-object v2

    .line 128
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A rule must end with a \'1\' bit."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "randomAccessInputStream"    # Lcom/android/server/integrity/parser/RandomAccessInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessInputStream;",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    .local p2, "indexRanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/integrity/parser/RuleIndexRange;>;"
    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->skip(J)J

    .line 77
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseAllRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseIndexedRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0
.end method


# virtual methods
.method public parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "randomAccessObject"    # Lcom/android/server/integrity/parser/RandomAccessObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessObject;",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/parser/RuleParseException;
        }
    .end annotation

    .line 62
    .local p2, "indexRanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/integrity/parser/RuleIndexRange;>;"
    :try_start_0
    new-instance v0, Lcom/android/server/integrity/parser/RandomAccessInputStream;

    invoke-direct {v0, p1}, Lcom/android/server/integrity/parser/RandomAccessInputStream;-><init>(Lcom/android/server/integrity/parser/RandomAccessObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "randomAccessInputStream":Lcom/android/server/integrity/parser/RandomAccessInputStream;
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    return-object v1

    .line 62
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/integrity/parser/RuleBinaryParser;
    .end local p1    # "randomAccessObject":Lcom/android/server/integrity/parser/RandomAccessObject;
    .end local p2    # "indexRanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/integrity/parser/RuleIndexRange;>;"
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    .end local v0    # "randomAccessInputStream":Lcom/android/server/integrity/parser/RandomAccessInputStream;
    .restart local p0    # "this":Lcom/android/server/integrity/parser/RuleBinaryParser;
    .restart local p1    # "randomAccessObject":Lcom/android/server/integrity/parser/RandomAccessObject;
    .restart local p2    # "indexRanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/integrity/parser/RuleIndexRange;>;"
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/integrity/parser/RuleParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/integrity/parser/RuleParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse([B)Ljava/util/List;
    .locals 2
    .param p1, "ruleBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/parser/RuleParseException;
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/android/server/integrity/parser/RandomAccessObject;->ofBytes([B)Lcom/android/server/integrity/parser/RandomAccessObject;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
