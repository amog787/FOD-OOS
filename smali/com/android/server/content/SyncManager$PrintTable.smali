.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "cols"    # I

    .line 3982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3979
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 3983
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 3984
    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "formats"    # [Ljava/lang/String;
    .param p3, "row"    # [Ljava/lang/Object;

    .line 4033
    const/4 v0, 0x0

    .local v0, "j":I
    array-length v1, p3

    .local v1, "rowLength":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4034
    aget-object v2, p2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4035
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4033
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4037
    .end local v0    # "j":I
    .end local v1    # "rowLength":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4038
    return-void
.end method


# virtual methods
.method public getNumRows()I
    .locals 1

    .line 4041
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .locals 6
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .line 3987
    array-length v0, p3

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-gt v0, v1, :cond_4

    .line 3991
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    const-string v1, ""

    if-gt v0, p1, :cond_1

    .line 3992
    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v2, v2, [Ljava/lang/String;

    .line 3993
    .local v2, "list":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3994
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v3, v4, :cond_0

    .line 3995
    aput-object v1, v2, v3

    .line 3994
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3991
    .end local v2    # "list":[Ljava/lang/String;
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3998
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3999
    .local v0, "rowArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 4000
    aget-object v3, p3, v2

    .line 4001
    .local v3, "value":Ljava/lang/Object;
    add-int v4, p2, v2

    if-nez v3, :cond_2

    move-object v5, v1

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v0, v4

    .line 3999
    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4003
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 3988
    .end local v0    # "rowArray":[Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " columns. can\'t set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 4006
    iget v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v0, v0, [Ljava/lang/String;

    .line 4007
    .local v0, "formats":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 4008
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_0
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 4009
    const/4 v3, 0x0

    .line 4010
    .local v3, "maxLength":I
    iget-object v6, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4011
    .local v7, "row":[Ljava/lang/Object;
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 4012
    .local v8, "length":I
    if-le v8, v3, :cond_0

    .line 4013
    move v3, v8

    .line 4015
    .end local v7    # "row":[Ljava/lang/Object;
    .end local v8    # "length":I
    :cond_0
    goto :goto_1

    .line 4016
    :cond_1
    add-int/2addr v1, v3

    .line 4017
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "%%-%ds"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 4008
    .end local v3    # "maxLength":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4019
    .end local v2    # "col":I
    :cond_2
    sub-int/2addr v3, v5

    const-string v2, "%s"

    aput-object v2, v0, v3

    .line 4020
    iget-object v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4021
    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 4022
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 4023
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4022
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4025
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4026
    const/4 v2, 0x1

    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "mTableSize":I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 4027
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 4028
    .local v4, "row":[Ljava/lang/Object;
    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4026
    .end local v4    # "row":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4030
    .end local v2    # "i":I
    .end local v3    # "mTableSize":I
    :cond_4
    return-void
.end method
