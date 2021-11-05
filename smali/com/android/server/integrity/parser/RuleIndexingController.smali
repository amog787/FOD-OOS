.class public Lcom/android/server/integrity/parser/RuleIndexingController;
.super Ljava/lang/Object;
.source "RuleIndexingController.java"


# static fields
.field private static sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/server/integrity/model/BitInputStream;

    invoke-direct {v0, p1}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v0, "bitInputStream":Lcom/android/server/integrity/model/BitInputStream;
    invoke-direct {p0, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/integrity/parser/RuleIndexingController;->sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;

    .line 50
    invoke-direct {p0, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/integrity/parser/RuleIndexingController;->sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;

    .line 51
    invoke-direct {p0, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;

    move-result-object v1

    sput-object v1, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    .line 52
    return-void
.end method

.method private getNextIndexGroup(Lcom/android/server/integrity/model/BitInputStream;)Ljava/util/LinkedHashMap;
    .locals 4
    .param p1, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/model/BitInputStream;",
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

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 85
    .local v0, "keyToIndexMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/integrity/model/BitInputStream;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "key":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I

    move-result v2

    .line 89
    .local v2, "value":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "END_KEY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    goto :goto_1

    .line 94
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;
    .locals 5
    .param p1, "searchedKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/integrity/parser/RuleIndexRange;"
        }
    .end annotation

    .line 100
    .local p0, "indexMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "identifiedKeyRange":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v4, v3, v2}, Lcom/android/server/integrity/parser/RuleIndexRange;-><init>(II)V

    .line 103
    return-object v4
.end method

.method private static searchKeysRangeContainingKey(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    .local p0, "sortedKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sub-int v0, p3, p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 110
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    sub-int v0, p3, p2

    div-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 114
    .local v0, "midKeyIndex":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "midKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 117
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 119
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchKeysRangeContainingKey(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public identifyRulesToEvaluate(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .locals 5
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "indexRanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/integrity/parser/RuleIndexRange;>;"
    sget-object v1, Lcom/android/server/integrity/parser/RuleIndexingController;->sPackageNameBasedIndexes:Ljava/util/LinkedHashMap;

    .line 64
    invoke-virtual {p1}, Landroid/content/integrity/AppInstallMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;

    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1}, Landroid/content/integrity/AppInstallMetadata;->getAppCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "appCertificate":Ljava/lang/String;
    sget-object v3, Lcom/android/server/integrity/parser/RuleIndexingController;->sAppCertificateBasedIndexes:Ljava/util/LinkedHashMap;

    .line 69
    invoke-static {v3, v2}, Lcom/android/server/integrity/parser/RuleIndexingController;->searchIndexingKeysRangeContainingKey(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/android/server/integrity/parser/RuleIndexRange;

    move-result-object v3

    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v2    # "appCertificate":Ljava/lang/String;
    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Lcom/android/server/integrity/parser/RuleIndexRange;

    sget-object v2, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    .line 76
    const-string v3, "START_KEY"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/server/integrity/parser/RuleIndexingController;->sUnindexedRuleIndexes:Ljava/util/LinkedHashMap;

    .line 77
    const-string v4, "END_KEY"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/integrity/parser/RuleIndexRange;-><init>(II)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method
