.class Lcom/android/server/net/NetworkStatsCollection$Key;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/NetworkStatsCollection$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field public final ident:Lcom/android/server/net/NetworkIdentitySet;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkIdentitySet;III)V
    .locals 3
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 808
    iput p2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    .line 809
    iput p3, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    .line 810
    iput p4, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    .line 811
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    .line 812
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, "res":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    if-eqz v2, :cond_0

    .line 833
    invoke-virtual {v1, v2}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result v0

    .line 835
    :cond_0
    if-nez v0, :cond_1

    .line 836
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 838
    :cond_1
    if-nez v0, :cond_2

    .line 839
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 841
    :cond_2
    if-nez v0, :cond_3

    .line 842
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 844
    :cond_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 798
    check-cast p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsCollection$Key;->compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 821
    instance-of v0, p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 822
    move-object v0, p1

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 823
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 824
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 823
    :goto_0
    return v1

    .line 826
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 816
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    return v0
.end method
