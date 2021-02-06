.class public Lcom/android/server/integrity/parser/RuleIndexRange;
.super Ljava/lang/Object;
.source "RuleIndexRange.java"


# instance fields
.field private mEndIndex:I

.field private mStartIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    .line 32
    iput p2, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 47
    iget v0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    move-object v1, p1

    check-cast v1, Lcom/android/server/integrity/parser/RuleIndexRange;

    invoke-virtual {v1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    move-object v1, p1

    check-cast v1, Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 48
    invoke-virtual {v1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getEndIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Range{%d, %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
