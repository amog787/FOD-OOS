.class public final Lcom/android/server/stats/pull/netstats/SubInfo;
.super Ljava/lang/Object;
.source "SubInfo.java"


# instance fields
.field public final carrierId:I

.field public final isOpportunistic:Z

.field public final mcc:Ljava/lang/String;

.field public final mnc:Ljava/lang/String;

.field public final subId:I

.field public final subscriberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "carrierId"    # I
    .param p3, "mcc"    # Ljava/lang/String;
    .param p4, "mnc"    # Ljava/lang/String;
    .param p5, "subscriberId"    # Ljava/lang/String;
    .param p6, "isOpportunistic"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    .line 42
    iput p2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 43
    iput-object p3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 46
    iput-boolean p6, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 54
    .local v2, "other":Lcom/android/server/stats/pull/netstats/SubInfo;
    iget v3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    iget v4, v2, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    iget v4, v2, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    iget-boolean v4, v2, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 54
    :goto_0
    return v0

    .line 52
    .end local v2    # "other":Lcom/android/server/stats/pull/netstats/SubInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
