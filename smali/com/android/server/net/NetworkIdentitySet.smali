.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Landroid/net/NetworkIdentity;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/NetworkIdentitySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_DEFAULT_NETWORK:I = 0x5

.field private static final VERSION_ADD_METERED:I = 0x4

.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 19
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 49
    .local v0, "version":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 50
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 51
    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    .line 54
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 55
    .local v12, "type":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 56
    .local v13, "subType":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, "subscriberId":Ljava/lang/String;
    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    .line 59
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    .local v4, "networkId":Ljava/lang/String;
    goto :goto_1

    .line 61
    .end local v4    # "networkId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move-object v15, v4

    .line 64
    .local v15, "networkId":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x2

    if-lt v0, v4, :cond_2

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    move/from16 v16, v4

    .local v4, "roaming":Z
    goto :goto_2

    .line 67
    .end local v4    # "roaming":Z
    :cond_2
    const/4 v4, 0x0

    move/from16 v16, v4

    .line 71
    .local v16, "roaming":Z
    :goto_2
    const/4 v4, 0x4

    if-lt v0, v4, :cond_3

    .line 72
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .local v3, "metered":Z
    goto :goto_3

    .line 77
    .end local v3    # "metered":Z
    :cond_3
    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 81
    .restart local v3    # "metered":Z
    :goto_3
    const/4 v4, 0x5

    if-lt v0, v4, :cond_5

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    move/from16 v17, v4

    .local v4, "defaultNetwork":Z
    goto :goto_4

    .line 84
    .end local v4    # "defaultNetwork":Z
    :cond_5
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 87
    .local v17, "defaultNetwork":Z
    :goto_4
    new-instance v11, Landroid/net/NetworkIdentity;

    move-object v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move v10, v3

    move/from16 v18, v0

    move-object v0, v11

    .end local v0    # "version":I
    .local v18, "version":I
    move/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v3    # "metered":Z
    .end local v12    # "type":I
    .end local v13    # "subType":I
    .end local v14    # "subscriberId":Ljava/lang/String;
    .end local v15    # "networkId":Ljava/lang/String;
    .end local v16    # "roaming":Z
    .end local v17    # "defaultNetwork":Z
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v18

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    .end local v18    # "version":I
    .restart local v0    # "version":I
    :cond_6
    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    if-eqz p1, :cond_0

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 149
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 153
    :goto_0
    return-void
.end method


# virtual methods
.method public areAllMembersOnDefaultNetwork()Z
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 136
    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 139
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    goto :goto_0

    .line 143
    :cond_2
    return v1
.end method

.method public compareTo(Lcom/android/server/net/NetworkIdentitySet;)I
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkIdentitySet;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 169
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 170
    .local v1, "anotherIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result p1

    return p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 174
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 176
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkIdentity;

    .line 177
    .local v3, "ident":Landroid/net/NetworkIdentity;
    const-wide v4, 0x20b00000001L

    invoke-virtual {v3, p1, v4, v5}, Landroid/net/NetworkIdentity;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 178
    .end local v3    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 181
    return-void
.end method

.method public isAnyMemberMetered()Z
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 112
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    goto :goto_0

    .line 116
    :cond_2
    return v1
.end method

.method public isAnyMemberRoaming()Z
    .locals 4

    .line 121
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 122
    return v1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 125
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    goto :goto_0

    .line 129
    :cond_2
    return v1
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 96
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 97
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 98
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 101
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 102
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 103
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method
