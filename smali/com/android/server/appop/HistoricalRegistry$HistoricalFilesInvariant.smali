.class Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoricalFilesInvariant"
.end annotation


# instance fields
.field private final mBeginFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->mBeginFiles:Ljava/util/List;

    return-void
.end method

.method private static getOldestFileOffsetMillis(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 1717
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1720
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1721
    .local v0, "longestName":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1722
    .local v1, "fileCount":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1723
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1724
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 1725
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1722
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1728
    .end local v2    # "i":I
    :cond_2
    const-string v2, ".xml"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public startTracking(Ljava/io/File;)V
    .locals 2
    .param p1, "folder"    # Ljava/io/File;

    .line 1694
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1695
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1696
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->mBeginFiles:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1698
    :cond_0
    return-void
.end method

.method public stopTracking(Ljava/io/File;)V
    .locals 8
    .param p1, "folder"    # Ljava/io/File;

    .line 1701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    .local v0, "endFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1703
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1704
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1706
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->mBeginFiles:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->getOldestFileOffsetMillis(Ljava/util/List;)J

    move-result-wide v2

    .line 1707
    .local v2, "beginOldestFileOffsetMillis":J
    invoke-static {v0}, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->getOldestFileOffsetMillis(Ljava/util/List;)J

    move-result-wide v4

    .line 1708
    .local v4, "endOldestFileOffsetMillis":J
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    .line 1714
    return-void

    .line 1709
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "History loss detected!\nold files: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;->mBeginFiles:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1711
    .local v6, "message":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v6, v7, p1}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 1712
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
