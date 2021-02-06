.class public Lcom/android/server/connectivity/VpnIkev2Utils;
.super Ljava/lang/Object;
.source "VpnIkev2Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;,
        Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;,
        Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;
    }
.end annotation


# static fields
.field private static final DH_GROUP_3072_BIT_MODP:I = 0xf

.field private static final DH_GROUP_4096_BIT_MODP:I = 0x10

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lcom/android/server/connectivity/VpnIkev2Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnIkev2Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildChildSessionParams(Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/ipsec/ike/ChildSessionParams;"
        }
    .end annotation

    .line 114
    .local p0, "allowedAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 117
    .local v0, "childOptionsBuilder":Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    invoke-static {p0}, Lcom/android/server/connectivity/VpnIkev2Utils;->getChildSaProposals(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 118
    .local v2, "childProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 119
    .end local v2    # "childProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    goto :goto_0

    .line 121
    :cond_0
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 122
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 123
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 124
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 126
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v1

    return-object v1
.end method

.method static buildIkeSessionParams(Landroid/content/Context;Landroid/net/Ikev2VpnProfile;Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Landroid/net/Ikev2VpnProfile;
    .param p2, "network"    # Landroid/net/Network;

    .line 95
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getUserIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v0

    .line 96
    .local v0, "localId":Landroid/net/ipsec/ike/IkeIdentification;
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v1

    .line 98
    .local v1, "remoteId":Landroid/net/ipsec/ike/IkeIdentification;
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    invoke-direct {v2, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setServerHostname(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {v2, p2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setLocalIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setRemoteIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    .line 104
    .local v2, "ikeOptionsBuilder":Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    invoke-static {p1, v2}, Lcom/android/server/connectivity/VpnIkev2Utils;->setIkeAuth(Landroid/net/Ikev2VpnProfile;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 106
    invoke-static {}, Lcom/android/server/connectivity/VpnIkev2Utils;->getIkeSaProposals()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ipsec/ike/IkeSaProposal;

    .line 107
    .local v4, "ikeProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    invoke-virtual {v2, v4}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 108
    .end local v4    # "ikeProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    return-object v3
.end method

.method private static getChildSaProposals(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            ">;"
        }
    .end annotation

    .line 199
    .local p0, "allowedAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "proposals":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/ChildSaProposal;>;"
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasNormalModeAlgorithms(Ljava/util/List;)Z

    move-result v1

    const/16 v2, 0x80

    const/16 v3, 0xc0

    const/16 v4, 0x100

    if-eqz v1, :cond_4

    .line 203
    new-instance v1, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 207
    .local v1, "normalModeBuilder":Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    const/16 v5, 0xc

    invoke-virtual {v1, v5, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 208
    invoke-virtual {v1, v5, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 209
    invoke-virtual {v1, v5, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 213
    const-string v6, "hmac(sha512)"

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 216
    :cond_0
    const-string v6, "hmac(sha384)"

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 219
    :cond_1
    const-string v6, "hmac(sha256)"

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    invoke-virtual {v1, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 223
    :cond_2
    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v5

    .line 224
    .local v5, "proposal":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-virtual {v5}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 226
    sget-object v6, Lcom/android/server/connectivity/VpnIkev2Utils;->TAG:Ljava/lang/String;

    const-string v7, "Missing integrity algorithm when buildling Child SA proposal"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v1    # "normalModeBuilder":Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    .end local v5    # "proposal":Landroid/net/ipsec/ike/ChildSaProposal;
    :cond_4
    :goto_0
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasAeadAlgorithms(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 234
    new-instance v1, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 237
    .local v1, "aeadBuilder":Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    const/16 v5, 0x14

    invoke-virtual {v1, v5, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 238
    const/16 v6, 0x13

    invoke-virtual {v1, v6, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 239
    const/16 v7, 0x12

    invoke-virtual {v1, v7, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 240
    invoke-virtual {v1, v5, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 241
    invoke-virtual {v1, v6, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 242
    invoke-virtual {v1, v7, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 243
    invoke-virtual {v1, v5, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 244
    invoke-virtual {v1, v6, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 245
    invoke-virtual {v1, v7, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 247
    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v1    # "aeadBuilder":Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    :cond_5
    return-object v0
.end method

.method private static getIkeSaProposals()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "proposals":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeSaProposal;>;"
    new-instance v1, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    .line 161
    .local v1, "normalModeBuilder":Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    const/16 v2, 0xc

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 162
    const/16 v4, 0xc0

    invoke-virtual {v1, v2, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 163
    const/16 v5, 0x80

    invoke-virtual {v1, v2, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 166
    const/16 v6, 0xe

    invoke-virtual {v1, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 167
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 168
    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 169
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 172
    new-instance v2, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    .line 173
    .local v2, "aeadBuilder":Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    const/16 v7, 0x14

    invoke-virtual {v2, v7, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 174
    const/16 v8, 0x13

    invoke-virtual {v2, v8, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 175
    const/16 v9, 0x12

    invoke-virtual {v2, v9, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 176
    invoke-virtual {v2, v7, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 177
    invoke-virtual {v2, v8, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 178
    invoke-virtual {v2, v9, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 179
    invoke-virtual {v2, v7, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 180
    invoke-virtual {v2, v8, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 181
    invoke-virtual {v2, v9, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 184
    const/4 v3, 0x2

    new-array v4, v3, [Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 185
    .local v5, "builder":Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 186
    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 187
    invoke-virtual {v5, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 188
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 189
    invoke-virtual {v5, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 190
    .end local v5    # "builder":Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-object v0
.end method

.method static getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 403
    .local p0, "trafficSelectors":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v0, "routes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/RouteInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 407
    .local v2, "selector":Landroid/net/ipsec/ike/IkeTrafficSelector;
    new-instance v3, Landroid/net/util/IpRange;

    iget-object v4, v2, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    iget-object v5, v2, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5}, Landroid/net/util/IpRange;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    invoke-virtual {v3}, Landroid/net/util/IpRange;->asIpPrefixes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpPrefix;

    .line 408
    .local v4, "prefix":Landroid/net/IpPrefix;
    new-instance v5, Landroid/net/RouteInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v4    # "prefix":Landroid/net/IpPrefix;
    goto :goto_1

    .line 410
    .end local v2    # "selector":Landroid/net/ipsec/ike/IkeTrafficSelector;
    :cond_0
    goto :goto_0

    .line 412
    :cond_1
    return-object v0
.end method

.method private static parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;
    .locals 3
    .param p0, "identityStr"    # Ljava/lang/String;

    .line 364
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    const-string v1, "@#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "hexStr":Ljava/lang/String;
    new-instance v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v1

    .line 369
    .end local v0    # "hexStr":Ljava/lang/String;
    :cond_0
    const-string v1, "@@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 372
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 377
    :cond_2
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 379
    :cond_3
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 381
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_4

    .line 383
    new-instance v1, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    move-object v2, v0

    check-cast v2, Ljava/net/Inet4Address;

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    return-object v1

    .line 384
    :cond_4
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_5

    .line 386
    new-instance v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    move-object v2, v0

    check-cast v2, Ljava/net/Inet6Address;

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    return-object v1

    .line 388
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IP version not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_6
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 393
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v0

    .line 396
    :cond_7
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static setIkeAuth(Landroid/net/Ikev2VpnProfile;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .locals 3
    .param p0, "profile"    # Landroid/net/Ikev2VpnProfile;
    .param p1, "builder"    # Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 131
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 143
    nop

    .line 144
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUserCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getRsaPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    .line 143
    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 147
    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auth method set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getPresharedKey()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthPsk([B)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 141
    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Landroid/net/eap/EapSessionConfig$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    .line 135
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/eap/EapSessionConfig$Builder;->setEapMsChapV2Config(Ljava/lang/String;Ljava/lang/String;)Landroid/net/eap/EapSessionConfig$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    .line 137
    .local v0, "eapConfig":Landroid/net/eap/EapSessionConfig;
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthEap(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 138
    nop

    .line 151
    .end local v0    # "eapConfig":Landroid/net/eap/EapSessionConfig;
    :goto_0
    return-void
.end method
