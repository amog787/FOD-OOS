.class public Lcom/android/server/net/OpNetworkPolicyInjector;
.super Ljava/lang/Object;
.source "OpNetworkPolicyInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OpNetworkPolicyInjector"

.field private static opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/net/OpNetworkPolicyInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "chain"    # I
    .param p1, "uidRules"    # Landroid/util/SparseIntArray;

    .line 82
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0, p0, p1}, Lcom/android/server/net/IOpNetworkPolicy;->adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    return-object p1
.end method

.method public static dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 96
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/net/IOpNetworkPolicy;->dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;

    .line 71
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0, p0}, Lcom/android/server/net/IOpNetworkPolicy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifEnableLogDump()Z
    .locals 1

    .line 104
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 107
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {v0}, Lcom/android/server/net/IOpNetworkPolicy;->ifEnableLogDump()Z

    move-result v0

    return v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "networkPolicyManagerService"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 42
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/net/IOpNetworkPolicy;->initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    .line 48
    :cond_1
    return-void
.end method

.method public static isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "procState"    # I

    .line 60
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0, p0, p1}, Lcom/android/server/net/IOpNetworkPolicy;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v0

    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setDeviceIdleMode(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .line 51
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0, p0}, Lcom/android/server/net/IOpNetworkPolicy;->setDeviceIdleMode(Z)V

    .line 57
    :cond_1
    return-void
.end method

.method public static setEarlyRestriction()V
    .locals 1

    .line 117
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 120
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Lcom/android/server/net/IOpNetworkPolicy;->setEarlyRestriction()V

    .line 123
    :cond_1
    return-void
.end method
