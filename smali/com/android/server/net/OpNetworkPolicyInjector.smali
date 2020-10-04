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

    .line 31
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/net/OpNetworkPolicyInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "chain"    # I
    .param p1, "uidRules"    # Landroid/util/SparseIntArray;

    .line 78
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 81
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0, p0, p1}, Lcom/android/server/net/IOpNetworkPolicy;->adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    return-object p1
.end method

.method public static dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/net/IOpNetworkPolicy;->dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 95
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;

    .line 67
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v0, p0}, Lcom/android/server/net/IOpNetworkPolicy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifEnableLogDump()Z
    .locals 1

    .line 100
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 103
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Lcom/android/server/net/IOpNetworkPolicy;->ifEnableLogDump()Z

    move-result v0

    return v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "networkPolicyManagerService"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 38
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/net/IOpNetworkPolicy;->initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    .line 44
    :cond_1
    return-void
.end method

.method public static isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "procState"    # I

    .line 56
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0, p0, p1}, Lcom/android/server/net/IOpNetworkPolicy;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v0

    return v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setDeviceIdleMode(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .line 47
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {v0, p0}, Lcom/android/server/net/IOpNetworkPolicy;->setDeviceIdleMode(Z)V

    .line 53
    :cond_1
    return-void
.end method

.method public static setEarlyRestriction()V
    .locals 1

    .line 113
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/IOpNetworkPolicy;

    sput-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    .line 116
    :cond_0
    sget-object v0, Lcom/android/server/net/OpNetworkPolicyInjector;->opNetworkPolicy:Lcom/android/server/net/IOpNetworkPolicy;

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Lcom/android/server/net/IOpNetworkPolicy;->setEarlyRestriction()V

    .line 119
    :cond_1
    return-void
.end method
