.class public Landroid/net/shared/Layer2Information;
.super Ljava/lang/Object;
.source "Layer2Information.java"


# instance fields
.field public final mBssid:Landroid/net/MacAddress;

.field public final mCluster:Ljava/lang/String;

.field public final mL2Key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;)V
    .locals 0
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "cluster"    # Ljava/lang/String;
    .param p3, "bssid"    # Landroid/net/MacAddress;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    .line 42
    return-void
.end method

.method public static fromStableParcelable(Landroid/net/Layer2InformationParcelable;)Landroid/net/shared/Layer2Information;
    .locals 4
    .param p0, "p"    # Landroid/net/Layer2InformationParcelable;

    .line 69
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Landroid/net/shared/Layer2Information;

    iget-object v1, p0, Landroid/net/Layer2InformationParcelable;->l2Key:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/Layer2InformationParcelable;->cluster:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/Layer2InformationParcelable;->bssid:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/shared/Layer2Information;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 75
    instance-of v0, p1, Landroid/net/shared/Layer2Information;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/shared/Layer2Information;

    .line 77
    .local v0, "other":Landroid/net/shared/Layer2Information;
    iget-object v2, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    .line 78
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    iget-object v3, v0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    .line 79
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 77
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toStableParcelable()Landroid/net/Layer2InformationParcelable;
    .locals 2

    .line 57
    new-instance v0, Landroid/net/Layer2InformationParcelable;

    invoke-direct {v0}, Landroid/net/Layer2InformationParcelable;-><init>()V

    .line 58
    .local v0, "p":Landroid/net/Layer2InformationParcelable;
    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/Layer2InformationParcelable;->l2Key:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/Layer2InformationParcelable;->cluster:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    iput-object v1, v0, Landroid/net/Layer2InformationParcelable;->bssid:Landroid/net/MacAddress;

    .line 61
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, "L2Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mL2Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, ", Cluster: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mCluster:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v1, ", bssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/Layer2Information;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
